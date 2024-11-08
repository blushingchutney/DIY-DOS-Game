#include <stdio.h>
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
#include <luaconf.h>

int main(int argc, char const *argv[])
{
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    luaL_dofile(L, "main.lua");

    lua_close(L);

    return 0;
}
