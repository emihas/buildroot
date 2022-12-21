# Hello World Makefile
# Compiles C file and creates executable at the same location
# Steps: 
# 1. Compile
# 2. Remove working "root_mount" directory if it exists
# 3. Create new "root_mount" directory
# 4. Mount to the working directory
# 5. Copy executable to root
# 6. Unmount the working directory


SOURCEPATH = /home/emir/Desktop/repos/buildroot/output/images/rootfs.ext2
DESTINATIONPATH = /home/emir/Desktop/repos/buildroot/apps/helloWorld/root_mount/

build_and_mount:
	x86_64-linux-gcc hello.c -o hello
	rm -rf root_mount
	mkdir root_mount
	sudo mount -t ext2 -o rw,loop ${SOURCEPATH} ${DESTINATIONPATH}
	sudo cp hello ./root_mount/root/
	sudo umount root_mount
	
