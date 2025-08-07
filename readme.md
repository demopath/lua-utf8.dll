Forked from [starwing/luautf8](https://github.com/starwing/luautf8)

为 Windows 64 位提供 lua-utf8.dll 编译完成版本

主要为解决 nvim-spider UTF-8 支持需要本地编译的麻烦

之前需要 python 环境和 c 编译环境：
```lua
{
    -- lazy.nvim
    "chrisgrieser/nvim-spider",
    lazy = true,
    dependencies = {
    	"theHamsta/nvim_rocks",
    	build = "pip3 install --user hererocks && python3 -mhererocks . -j2.1.0-beta3 -r3.0.0 && cp nvim_rocks.lua lua",
    	config = function() require("nvim_rocks").ensure_installed("luautf8") end,
    },
}
```

现在依赖直接写入即可
```lua
{
    -- lazy.nvim
    "chrisgrieser/nvim-spider",
    lazy = true,
    dependencies = {
        "demopath/lua-utf8.dll"
    },
}
```

https://github.com/chrisgrieser/nvim-spider

https://github.com/starwing/luautf8