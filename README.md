# THIS GUIDE IS STILL IN DEVELOPMENT
# DIY-DOS-Game

Guide to make your own game engines or games for DOS using C/C++, Lua, Allegro, etc.

## 1. Requirements

- [build-djgpp](https://github.com/andrewwutw/build-djgpp)
- [dosbox](https://www.dosbox.com/)
- [cwsdpmi](https://sandmann.dotster.com/cwsdpmi/)
- [lua](http://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/devel/lua/)
- [allegro](http://www.mrdictionary.net/allegro/20190618_DJGPP_dir_allegro423installed.zip)

## 2. Configuring djgpp

Once build-djgpp is downloaded, place the binaries in your user's documents folder, djgpp has a setenv, have it run every time you open a shell.

Example in linux:

```
source ~/Documents/djgpp/setenv
```

And now you should have all the binaries with the prefix i586-pc-msdosdjgpp- in your path, for example: i586-pc-msdosdjgpp-gcc

## 3. Configuring dosbox

I recommend you place the binaries as CWSDPMI on the Y mount drive

Configure your dosbox.conf like this

```
[autoexec]
# Lines in this section will be run at startup.
# You can put your MOUNT lines here.
KEYB LA
MOUNT Y ~/Documents/dosbox/y
SET PATH=%PATH%;Y:\CSDPMI7B\BIN\
CWSDPMI.EXE
```

## ???. Compile example

Just run "make all run"
