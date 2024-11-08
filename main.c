#include <dos.h>
#include <pc.h>

#include <allegro.h>

#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
#include <luaconf.h>

int MyGameEngine_lua_readkey(lua_State *L) {
    int k = readkey();

    lua_pushnumber(L, k);
    return 1;
}

int MyGameEngine_lua_sound(lua_State *L) {
    int f = lua_tonumber(L, 1);
    sound(f);
    return 0;
}

int MyGameEngine_lua_delay(lua_State *L) {
    int f = lua_tonumber(L, 1);
    delay(f);
    return 0;
}

int main(int argc, char const *argv[])
{
    // Init allegro
    allegro_init();
    install_keyboard();
    set_gfx_mode(GFX_AUTODETECT, 320, 200, 0, 0);

    // Init lua
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    // Adding MyGameEngine table
    lua_newtable(L);

    lua_pushstring(L, "readkey");
    lua_pushcfunction(L, MyGameEngine_lua_readkey);
    lua_settable(L, -3);

    lua_pushstring(L, "sound");
    lua_pushcfunction(L, MyGameEngine_lua_sound);
    lua_settable(L, -3);

    lua_pushstring(L, "delay");
    lua_pushcfunction(L, MyGameEngine_lua_delay);
    lua_settable(L, -3);

    lua_setglobal(L, "MyGameEngine");

    // Do game code
    luaL_dofile(L, "main.lua");

    // Shutdown lua
    lua_close(L);

    return 0;
}
END_OF_MAIN();
