# THIS GUIDE IS STILL IN DEVELOPMENT
# DIY-DOS-Game

Guide to make your own game engines or games for DOS using C/C++, Lua, Allegro, etc.

## 1. Requirements

- https://www.dosbox.com/
- https://sandmann.dotster.com/cwsdpmi/
- https://github.com/andrewwutw/build-djgpp

### Optional Requirements

#### Lua

- https://sourceforge.net/p/freedos/news/2011/12/lua-520-djgpp-386/
- http://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/devel/lua/

#### Allegro

- http://www.mrdictionary.net/allegro/
- https://github.com/msikma/allegro-4.2.2-xc

## 2. Setting up djgpp on your modern system

Once build-djgpp is downloaded, put the binaries in your user's documents folder. djgpp has a setenv, make it run every time you open a shell, for example:

source /home/MyUser/Documents/djgpp/setenv

And you should now have all the binaries with the prefix i586-pc-msdosdjgpp- in your path, for example: i586-pc-msdosdjgpp-gcc

## 3. Configuring dosbox

I recommend you place the binaries as CWSDPMI on the Y mount drive

Configure your dosbox.conf like this

```
[autoexec]
# Lines in this section will be run at startup.
# You can put your MOUNT lines here.
KEYB LA
MOUNT Y /home/MyUser/Documents/dosbox/Y/    
SET PATH=Z:\;Y:\
CWSDPMI.EXE
```
