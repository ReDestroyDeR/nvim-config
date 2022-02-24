local au = require("au")

vim.api.nvim_set_option('number', true)
vim.api.nvim_set_option('relativenumber', true)
vim.api.nvim_set_option('tabstop', 4)
vim.api.nvim_set_option('shiftwidth', 4)
vim.api.nvim_set_option('softtabstop', 4)
vim.api.nvim_set_option('expandtab', true)

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
		vim.api.nvim_set_option('tabstop', 4)
		vim.api.nvim_set_option('shiftwidth', 4)
		vim.api.nvim_set_option('softtabstop', 4)
		vim.api.nvim_set_option('expandtab', true)
	end,
}
