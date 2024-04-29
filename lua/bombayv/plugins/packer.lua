vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use ('wbthomason/packer.nvim')

  use({
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  })

  use({ "catppuccin/nvim", as = "catppuccin" })

  use({ "nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'} })
  use("nvim-treesitter/playground")
  use("nvim-lua/plenary.nvim") -- don't forget to add this one if you don't have it yet!
  use({
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
  })
  use("mbbill/undotree")
  use("tpope/vim-fugitive")

  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")

  use("neovim/nvim-lspconfig")
end)
