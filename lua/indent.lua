local au = require("au")

vim.cmd [[
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent
]]

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:⇂")

require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
}

au.BufEnter = {
	'*.yaml,*.yml',
	function ()
        	vim.cmd [[
		set tabstop=2
		set shiftwidth=2
		set softtabstop=2
		]]
	end,
}
