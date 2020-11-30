from os import listdir
from os.path import isfile, join

import pypandoc


pdoc_args = ['--mathjax',]
root_dir = '/blogposts'
out_dir = '/out'
onlyfiles = [f for f in listdir(root_dir) if isfile(join(root_dir, f))]

with open('/parts/head.part.html', 'r') as f_:
    head = f_.read()
with open('/parts/bottom.part.html', 'r') as f_:
    bottom = f_.read()

for path in onlyfiles:
    path_parts = path.split('.')[:-1]
    path_parts.append('html')
    output = pypandoc.convert_file(
        join(root_dir, path), 'html5', extra_args=pdoc_args)
    with open(join(out_dir, '.'.join(path_parts)), 'w+') as f_:
        f_.write(head)
        f_.write(output)
        f_.write(bottom)
