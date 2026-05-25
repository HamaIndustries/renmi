import subprocess
from PIL import Image
import os
from pathlib import Path
from tqdm import tqdm
import numpy as np
import shutil

# crop and scale to 1080p, apply pngquant (default settings), and then apply oxipng (default settings)
# you can install and use both from the CLI


# subprocess.run(["ls", "-l"]) 


# from PIL import Image
# import glob, os

# size = 128, 128

# for infile in glob.glob("*.jpg"):
#     file, ext = os.path.splitext(infile)
#     with Image.open(infile) as im:
#         im.thumbnail(size)
#         im.save(file + ".thumbnail", "JPEG")

def get_extents(im):
    extrema_x, extrema_y = im.getprojection()
    ex = [i for i in range(len(extrema_x)) if extrema_x[i] == 1]
    ey = [i for i in range(len(extrema_y)) if extrema_y[i] == 1]

    min_x = min(ex)
    max_x = max(ex)
    min_y = min(ey)
    max_y = max(ey)
    return (min_x, min_y, max_x, max_y)

def merge(name: str, res = 1080):
    fullpath = Path("assets/character_sprites") / name / (name +"_fullbody.png")
    emotedir = Path("assets/cropped_sprites") / name
    tempdir  = Path("assets/preprocess") / name
    try:
        os.mkdir(tempdir)
    except Exception:
        pass
    im = Image.open(fullpath)
    extrema_x, extrema_y = im.getprojection()
    ex = [i for i in range(len(extrema_x)) if extrema_x[i] == 1]
    ey = [i for i in range(len(extrema_y)) if extrema_y[i] == 1]

    min_x = min(ex)
    max_x = max(ex)
    min_y = min(ey)
    max_y = max(ey)
    extents = (min_x, min_y, max_x, max_y)
    print(extents)

    enames = []
    for emote in tqdm(os.listdir(emotedir)):
        if not emote.endswith(".png"): continue
        with Image.open(emotedir/emote) as eim:
            updated = im.copy()
            updated.paste(eim)
            updated = updated.crop(extents)
            updated = updated.resize((updated.size[0] * res//updated.size[1], res))

            newpath = tempdir / strip_name(emote, 2)
            print(f"{emote} -> {newpath}", flush=True)
            enames.append(str(newpath))
            with open(newpath, "wb+") as out:
                updated.save(out)

    
    # os.system("oxipng --stdout shrimple_cropped_angry_blush.png | pngquant --quality 40-50 --speed 1 - > out.png")

    # pngquant - > output < input
    # oxipng --stdout fname

def add_ext(name, res=1080):
    oldpath = Path("assets/character_sprites") / name
    try:
        os.mkdir(Path("assets/preprocess") / name)
    except Exception:
        pass

    try:
        shutil.copy(oldpath/(name + "_fullbody.png"), oldpath/(name + " neutral.png"))
    except FileNotFoundError:
        print("no fullbody found, not creating neutral")

    for sprite in os.listdir(oldpath):
        if not (sprite.endswith(".png") or sprite.endswith(".jpg")) or "fullbody" in sprite:
            continue
        im = Image.open(oldpath / sprite)
        extents = get_extents(im)
        im = im.crop(extents)
        im = im.resize((im.size[0] * res // im.size[1], res))
        if sprite.startswith(name):
            sprite = strip_name(sprite,1)
        with open(Path("assets/preprocess") / name / sprite, "wb+") as f:
            im.save(f)
        # shutil.copy(oldpath / sprite, Path("assets/preprocess") / name / sprite)
        

def postprocess(name):
    tempdir  = Path("assets/preprocess") / name
    outdir = Path("src/main/resources/assets/renmi/textures/portrait") / name
    for emote in tqdm(os.listdir(tempdir)):
        os.system(f"oxipng --stdout {tempdir/emote} | pngquant --quality 40-50 --speed 1 - > {outdir/emote}")

def strip_name(name: str, offset: int):
    return "_".join(name.split()[offset:])
    
    
def process_all(name):
    try:
        os.mkdir("assets/preprocess")
    except Exception:
        pass
    print("adding normal sprites")
    add_ext(name)
    print("composing cropped sprites")
    merge(name)
    print("emailing into asset directory")
    postprocess(name)

if __name__ == "__main__":
    ...
#     process_all("plume")
