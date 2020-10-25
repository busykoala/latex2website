import os
import pypandoc


pdoc_args = ['--mathjax',]

output = pypandoc.convert_file(
    'blogposts/input.tex', 'html5', extra_args=pdoc_args)
print(output)


root_dir = './blogposts'

for directory, _, files in os.walk(root_dir):
    for file in files:
        breadcrumbs = directory.split('/')
        filepath = os.path.join(directory, file)
        print(filepath)
        print(f'BREADCRUMBS: {breadcrumbs} | FILE: {file}')
