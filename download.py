import urllib.request
import shutil
import os

for index in range(1, 3296):

    url = 'http://wasted.nz/codearcs_bb/{0}.bb'.format(index)
    try:
        (filename, headers) = urllib.request.urlretrieve(url)
    except urllib.error.HTTPError as e:
        print('{0} raised {1}'.format(url, e))
        continue
    print(url)
    local_path = './bb/{0}.bb'.format(index)
    shutil.move(filename, local_path)
    if not os.path.exists(local_path):
        print('error moving {0} to {1}'.format(filename, local_path))
