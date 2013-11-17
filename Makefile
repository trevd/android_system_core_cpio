
CC = $(CROSS_COMPILE)gcc
AR = ar rcv

ifeq ($(windir),)
EXE =
RM = rm -vf
else
EXE = .exe
RM = del
endif

OBJECTS = mkbootfs.o utils_windows.o
OUT = mkbootfs$(EXE)

all:$(OUT)

$(OUT):$(OBJECTS)
	$(CC) -o $@ $^ -L. -static

.c.o:
	$(CC) -o $@ -c $< -I.

clean:
	$(RM) $(OUT) $(OBJECTS) Makefile.~

