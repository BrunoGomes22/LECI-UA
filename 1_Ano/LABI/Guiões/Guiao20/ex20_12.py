from PIL import Image
from PIL import ExifTags
import sys

def effect_intensity(im, f):
	new_im = im.convert("YCbCr")
	width, height = im.size
	
	for x in range(width):
		for y in range(height):
			pixel = new_im.getpixel( (x,y) )
			py = min(255, int(pixel[0] * f))
			new_img.putpixel( (x,y), (py, pixel[1], pixel[2]) )
            
	return new_im
     
     
def main(argv):
	fname = argv[1]
	im = Image.open(fname)
	
	im = effect_intensity(im, float(argv[1]))
	fname = fname + "-f_"+argv[1]
	


	im.save(fname+"-new.jpg")
	
main(sys.argv)


#ERRADO!!!!
