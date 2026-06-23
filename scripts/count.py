import os
import tqdm

count = 0
for name in tqdm.tqdm(os.listdir(".")):
	if name.endswith(".ink"):
		with open(name) as f:
			w = f.read()
			count += len([l for l in w.replace('\n', ' ').split(' ') if (l and not l.startswith("//"))])
print(count)
