local leader = " "
vim.g.mapleader = leader
vim.g.maplocalleader = leader

-- temp fix
vim.g["grammarous#jar_url"] = 'https://www.languagetool.org/download/LanguageTool-5.9.zip'
require("compjeuter.options")
require("compjeuter.lazy")
require("compjeuter.keys")
