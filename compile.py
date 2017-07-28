import subprocess
import os


class Config(object):
    _cfg_blitzpath \
        = r'C:\Program Files (x86)\Blitz3D'
    _cfg_blitzcc \
        = r'C:\Program Files (x86)\Blitz3D\bin\blitzcc.exe'


class TestSuite(Config):

    def __init__(self):
        self._verify()

    def _verify(self):
        assert(os.path.exists(self._get_blitzpath()))
        assert(os.path.exists(self._get_blitzcc()))

    def _get_blitzpath(self):
        return self._cfg_blitzpath

    def _get_blitzcc(self):
        return self._cfg_blitzcc

    def _get_env(self):
        # create environment
        environ = os.environ.copy()
        environ.update({'blitzpath': self._get_blitzpath()})
        return environ

    def _file_open(self, path):
        try:
            (fdir, fname) = os.path.split(path)
            if fdir:
                os.makedirs(fdir, exist_ok=True)
            fd = open(path, 'wb')
        except FileNotFoundError:
            return None
        return fd

    def run_blitzcc(self, in_file, out_file, blitzcc_args=[]):
        args = [self._get_blitzcc()] + blitzcc_args + [in_file]
        # run blitzcc
        clang_cwd = os.path.dirname(self._get_blitzcc())
        fd_stdout = self._file_open(out_file)
        return_code = subprocess.call(
            args,
            env=self._get_env(),
            cwd=clang_cwd,
            stdout=fd_stdout)
        return return_code == 0

    def compile(self, input_bb, output_asm):
        # remove assembly path if already existing
        if os.path.exists(output_asm):
            os.unlink(output_asm)
        # run blitzcc
        if not self.run_blitzcc(input_bb, output_asm, ['-c', '-a', '+q']):
            os.remove(output_asm)
            return False
        return True


def get_asm_path(bb_path):
    (head, tail) = os.path.split(bb_path)
    return os.path.join('asm', tail + '.asm')


def main():
    test_filter = None
    fails = []
    test_suite = TestSuite()
    for root, dirs, files in os.walk("bb", topdown=False):

        # visit any files in this directory
        for name in files:
            test_file = os.path.join(root, name)
            fname, fext = os.path.splitext(test_file)
            if fext.lower() not in ['.bb']:
                continue
            if test_filter and test_filter not in test_file:
                continue
            result = test_suite.compile(
                os.path.abspath(test_file),
                os.path.abspath(get_asm_path(fname)))
            output = ('. ' if result else 'X ')
            if not result:
                fails += [test_file]
            print('{0} {1}'.format(output, test_file))

    # print a summary
    print('{0} tests failed'.format(len(fails)))
    for failing_test in fails:
        print('  - {0}'.format(failing_test))

if __name__ == '__main__':
    main()
