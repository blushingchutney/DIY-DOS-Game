#include <stdio.h>

#include <allegro.h>

#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
#include <luaconf.h>

int allegro_lua_readkey(lua_State *L) {
    int k = readkey();

    lua_pushnumber(L, k);
    return 1;
}

int main(int argc, char const *argv[])
{
    allegro_init();
    install_keyboard();
    set_gfx_mode(GFX_AUTODETECT, 320, 200, 0, 0);

    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    lua_newtable(L);

    lua_pushstring(L, "readkey");
    lua_pushcfunction(L, allegro_lua_readkey);
    lua_settable(L, -3);

    lua_setglobal(L, "allegro");

    luaL_dofile(L, "main.lua");

    lua_close(L);

    return 0;
}
END_OF_MAIN();
