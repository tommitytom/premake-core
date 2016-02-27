project "lua-lib"
	language    "C"
	kind        "StaticLib"
	warnings    "off"

	includedirs { "src" }

	files
	{
		"**.h",
		"**.c"
	}

	excludes
	{
		"src/lauxlib.c",
		"src/lua.c",
		"src/luac.c",
		"src/print.c",
		"**.lua",
		"etc/*.c"
	}

	configuration "linux or bsd or hurd or aix"
		defines     { "LUA_USE_POSIX", "LUA_USE_DLOPEN" }

	configuration "macosx"
		defines     { "LUA_USE_MACOSX" }
