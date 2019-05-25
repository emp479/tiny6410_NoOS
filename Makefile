TARGET := hello

include ./include/config/auto.conf

LDFLAGS = -I./include/generated

#INCLUDEDIR	:=$(shell pwd)/include/generated

obj-y :=hello.c
obj-$(CONFIG_MYPRINT) += myprint.c
obj-$(CONFIG_MYLED) += mytest.c

all:		$(TARGET)
$(TARGET):		$(obj-y) 
	  gcc $(LDFLAGS) -o $@ $(obj-y)
defconfig:
		./scripts/conf kconfig
		./scripts/conf -s --syncconfig kconfig
menuconfig:
		./scripts/mconf kconfig
		./scripts/conf -s --syncconfig kconfig

clean:
		rm -f $(TARGET) *.o .config

PHONY +=FORCE
FORCE:

.PHONY:	$(PHONY)
