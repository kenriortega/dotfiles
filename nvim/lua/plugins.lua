-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- UI
  use 'NLKNguyen/papercolor-theme'
	use 'preservim/nerdtree'
  --
  use {
    'williamboman/nvim-lsp-installer',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp', -- Autocompletion plugin
    'hrsh7th/cmp-nvim-lsp',-- LSP source for nvim-cmp
    'onsails/lspkind-nvim',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip'
  }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
end)

