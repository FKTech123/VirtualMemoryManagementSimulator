# If you want to run or update a task when certain files are updated, the make utility can come in handy. The make utility requires 
# a file, Makefile (or makefile), which defines set of tasks to be executed. You may have used make to compile a program from source 
# code. Most open source projects use make to compile a final executable binary, which can then be installed using make install.
CC=gcc
CFLAGS=-I.
DEPS = vmtypes.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

vm_sim: vmtypes.o vm_sim.o
	gcc -o vm_sim vm_sim.o vmtypes.o -I.