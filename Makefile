./lua/lua-utf8.dll:
	tcc -shared -DLUA_BUILD_AS_DLL -I. -L. -llua51 *.c  -o ./lua/lua-utf8.dll

clean:
	rm lua/*
