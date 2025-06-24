local o = vim.opt

-- Line numbering
o.number = true 
o.relativenumber = true 


-- Tabs
local tabSize = 4

o.expandtab = true -- replace ALL tabs with spaces, i.e. fake tabs
o.shiftwidth = tabSize -- identation size, i.e. using `<` or `>`
o.softtabstop = tabSize -- _fake_ tab size
o.tabstop = tabSize


-- Wrapping
local doWrap = false

o.wrap = doWrap
o.wo.wrap = doWrap
