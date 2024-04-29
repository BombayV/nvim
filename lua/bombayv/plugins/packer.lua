vim.cmd [[packadd packer.nvim]]

local status, packer = pcall(require, "packer")

if not status then
  print("Packer not found")
  return
end



return packer.startup(function(use)
  -- Packer can manage itself
  use ('wbthomason/packer.nvim')

  -- Colors
  use({ "catppuccin/nvim", as = "catppuccin" }) 
  
  -- Navigation
  use({
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  })

  use({ "nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'} })
  use("nvim-treesitter/playground")
  use("christoomey/vim-tmux-navigator")

  -- Custom things
  use("nvim-lua/plenary.nvim") -- don't forget to add this one if you don't have it yet!
  use({
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
  })
  use("mbbill/undotree")
  use("tpope/vim-fugitive")

  -- LSP
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
