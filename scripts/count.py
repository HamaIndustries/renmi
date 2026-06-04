import os

count = 0
for name in os.listdir("."):
	if name.endswith(".ink"):
		with open(name) as f:
			w = f.read()
			count += len([l for l in w.replace('\n', ' ').split(' ') if l])
print(count)
