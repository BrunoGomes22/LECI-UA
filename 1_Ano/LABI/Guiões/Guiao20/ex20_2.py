from PIL import Image
from PIL import ExifTags
import sys

def main(fname):
	im = Image.open(fname)
	width, height = im.size
	
	for s in [0.2, 8]:
		dimension = (int(1920*s), int(1080*s))
		new_im = im.resize(dimension, Image.ANTIALIAS)
		new_im.save(fname+"-%.2f.jpg" % s)
		
main(sys.argv[1])
