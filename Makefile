# Name: ZhuoJun He
# Course: cs178
# Date: Aug 31, 2018
# Objective: this Makefile assginment will read the data from threeData.bin, combining c programs of
# 	      countThrees.c  readInt32BitLE.c  readInt32BitLE.h then create a new file call output. 
# resources: countThrees.c  readInt32BitLE.c  readInt32BitLE.h  threesData.bin
#################################################################################


# output won't be created if the command below fail 
output: countThrees.o  readInt32BitLE.o
	g++ countThrees.o  readInt32BitLE.o -o output

# countTrees.o won't be created if the command below fail 
countThrees.o: countThrees.c
	g++ -c countThrees.c

# readInt32BitLE.o won't be created if the command below fail
readInt32BitLE.o: readInt32BitLE.c readInt32BitLE.h
	g++ -c readInt32BitLE.c

clean:
	rm *.o
