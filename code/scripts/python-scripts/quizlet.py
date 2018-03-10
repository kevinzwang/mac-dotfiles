import os

# load lines

filename = os.path.join(os.path.dirname(__file__), 'list.txt')

lines = []
with open(filename) as f:
    lines = [line.strip() for line in f if not line.isspace() and not any(i.isdigit() for i in line)]

lines.pop(0)

# actual code

w = ''
wo = ''

for i in range(25):
    w += lines[i*3] + '\t' + lines[i*3 + 1] + '\n\n' + lines[i*3 + 2] + ';'
    wo += lines[i*3] + '\t' + lines[i*3 + 1] + '\n'

print(w)
print('\n---------------------------\n')
print(wo)
