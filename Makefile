obj-m += file.o

#CC=gcc
#KDIR = /usr/src/linux-headers-4.15.0-51-generic
#KASAN_FLAG := -fsanitize=kernel-address
#SUBDIRS = $(PWD)
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
#rm -rf *.o *.ko *.mod.* *.symvers *.order
