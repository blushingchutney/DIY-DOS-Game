CC	=	i586-pc-msdosdjgpp-gcc
CFLAGS	=	\
	-g -Wall -std=c89	\
	-I$$HOME/Documents/dosbox/y/lua522b/include
LDFLAGS	=	\
	-L$$HOME/Documents/dosbox/y/lua522b/lib
LIBS	=	-llua
EXE	=	main.exe
OBJS	=	main.o

all:	$(EXE)

clean:
	rm $(OBJS)

run:
	dosbox $(EXE)

$(EXE):	$(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) -o $(EXE) $(LIBS)

%.o:	%.c
	$(CC) $(CFLAGS) -c -o $@ $<
