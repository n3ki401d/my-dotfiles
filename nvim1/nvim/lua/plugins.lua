vim.cmd("packadd packer.nvim")

-- setup file
local function get_setup(name)
  return string.format('require("setup.%s")', name)
end

return require('packer').startup(function()

		use 'wbthomason/packer.nvim'		
		use 'williamboman/mason.nvim'
		use 'williamboman/mason-lspconfig.nvim'
		use 'neovim/nvim-lspconfig' 
    		use 'simrat39/rust-tools.nvim'	
		
		-- Completion framework:
		use 'hrsh7th/nvim-cmp' 
		
		-- LSP completion source:
		use 'hrsh7th/cmp-nvim-lsp'

		-- Useful completion sources:
		use 'hrsh7th/cmp-nvim-lua'
		use 'hrsh7th/cmp-nvim-lsp-signature-help'
		use 'hrsh7th/cmp-vsnip'                             
		use 'hrsh7th/cmp-path'                              
		use 'hrsh7th/cmp-buffer'                            
		use 'hrsh7th/vim-vsnip'         
		use {
		    "nvim-lualine/lualine.nvim",
		    requires = {
		      "kyazdani42/nvim-web-devicons",
		      {
			"folke/tokyonight.nvim",
			config = get_setup("colorscheme")
		      }
		    }
		}

end)
