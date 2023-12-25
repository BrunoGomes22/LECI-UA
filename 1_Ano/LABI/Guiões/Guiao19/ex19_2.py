import wave
import sys 

def main(argv):
	wf = wave.open(argv[1], "rb")
	print(wf.getsampwidth())
	
	wf.close()
main(sys.argv)
