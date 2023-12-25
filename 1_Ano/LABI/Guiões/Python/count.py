import os
import sys

def main ():
    if len (sys.argv) < 2 :
        print ("Usage: python3 %s filename" % (sys.argv[0]))
        sys.exit (1)  # finish without sucess - not enough arguments
	
     = sys.argv[1]
	
    if not os.path.exists (filename):
        print ("%s does not exist" % (filename))
        sys.exit (2)  # finish without sucess - does not exist in the file system

    if not os.path.isfile (filename):
        print ("%s is not a file" % (filename))
        sys.exit (3)  # finish without sucess - exist but it is not a file

    if not os.access (filename, os.R_OK):
        print ("%s is not a readable file" % (filename))
        sys.exit (4)  # finish without sucess - it is a file but does not have read permission

    filedesc = open (filename, "r")   # opening the file in read mode
    
    nlines = 0   # initializing the line counter
    nchars = 0   # initializing the character counter
    nwords = 0   # initializing the word counter

    for line in filedesc:
        nlines = nlines + 1    # incrementing the number of lines

        line = line.strip ()   # cleaning the return/linefeed character in the end of each line
        nchars = nchars + len (line)    # incrementing the number of characters

        words = line.split ()    # breaking the line into words using the space has separator
        nwords = nwords + len (words)    # incrementing the number of words

    filedesc.close ()   # closing the file

    print ("%s has %d lines %d words and %d characters" % (filename, nlines, nwords, nchars))
    sys.exit (0)  # finish with sucess

if __name__ == '__main__':
    main ()
