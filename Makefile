CC	=	i586-pc-msdosdjgpp-gcc
CFLAGS	=	\
	-I$$HOME/Documents/dosbox/y/lua522b/include	\
	-I$$HOME/Documents/dosbox/y/DJGPP/ALLEGRO/INCLUDE
LDFLAGS	=	\
	-L$$HOME/Documents/dosbox/y/lua522b/lib	\
	-L$$HOME/Documents/dosbox/y/DJGPP/ALLEGRO/LIB/DJGPP
LIBS	=	-llua -lalleg
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
