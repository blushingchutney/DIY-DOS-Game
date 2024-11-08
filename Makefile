CC	=	i586-pc-msdosdjgpp-gcc
CFLAGS	=	-g -Wall -Werror -std=c89
EXE	=	main.exe
OBJS	=	main.o

all:	$(EXE)

clean:
	rm $(OBJS)

run:
	dosbox $(EXE)

$(EXE):	$(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(EXE)

%.o:	%.c
	$(CC) $(CFLAGS) -c -o $@ $<
