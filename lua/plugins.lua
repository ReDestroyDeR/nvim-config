vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


-- Плагины
require('packer').startup(
    function()
        use 'wbthomason/packer.nvim'
        use 'wakatime/vim-wakatime'
        use 'mhinz/vim-startify'
        use {
          'kyoz/purify',
          rtp = 'vim',
	      config = function()
	        vim.g.syntax = 'on'
	        vim.cmd 'colorscheme purify'
	      end
        }

        use 'lukas-reineke/indent-blankline.nvim'
        
        use {
            'neoclide/coc.nvim',
            branch = 'release'
        }
    end
)


