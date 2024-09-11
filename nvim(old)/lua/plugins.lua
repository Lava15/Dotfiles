local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  
  return false
end

local packer_bootstrap = ensure_packer()
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-sleuth'
  use 'tpope/vim-repeat'
  use 'sheerun/vim-polyglot'
  use 'christoomey/vim-tmux-navigator'
  use 'nelstrom/vim-visual-star-search'
  use ({
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = {
    'kyazdani42/nvim-web-devicons',
    'nvim-telescope/telescope-live-grep-args.nvim',
    {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
    {'nvim-lua/plenary.nvim'},
  },
    config = function()
      require('telescope').setup()
    end,
  })
  use ({
    'karb94/neoscroll.nvim',
    config = function()
      require('custom/plugins/telescope')
      end,
  })

  use({
    'AndrewRadev/splitjoin.vim',
    config = function()
      vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
      vim.g.splitjoin_trailing_comma = 1
      vim.g.solitjoin_php_method_chain_full = 1
    end,
  })

use {
  'daltonmenezes/aura-theme',
  rtp = 'packages/neovim',
  config = function()
    vim.cmd("colorscheme aura-dark") 
  end
}

  if packer_bootstrap then
    require('packer').sync()
  end
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile>
  augroup end
]])
