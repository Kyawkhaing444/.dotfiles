local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Theme
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use 'nvim-lualine/lualine.nvim' -- Statusline
    use 'folke/tokyonight.nvim'

    -- Language Server
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig' -- LSP
    use 'simrat39/rust-tools.nvim'
    --AutoComplete
    use 'onsails/lspkind-nvim' -- vscode-like pictograms
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    use {
        'hrsh7th/nvim-cmp',
    }
    use { 'saadparwaiz1/cmp_luasnip' }
    use 'L3MON4D3/LuaSnip'
    use "rafamadriz/friendly-snippets"

    -- Syntax Highlighting TreeSitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- AutoPairs, AutoTag
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    -- Telescope
    use("nvim-lua/popup.nvim")
    use 'nvim-lua/plenary.nvim' -- Common utilities
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

    -- Icon
    use 'kyazdani42/nvim-web-devicons' -- File icons

    -- File Tabs
    use 'akinsho/nvim-bufferline.lua'

    use 'norcalli/nvim-colorizer.lua' --colorizer

    -- LSP UIS
    use 'glepnir/lspsaga.nvim'

    -- Prettier
    use'jose-elias-alvarez/null-ls.nvim'
    -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

    use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client

    --git
    use 'lewis6991/gitsigns.nvim'
    use 'dinhhuy258/git.nvim' -- For git blame & browse
    use 'f-person/git-blame.nvim' -- for only for git blame

    -- trouble, error displaying
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- Terminal
    use "akinsho/toggleterm.nvim"

    -- github copilot 
    use "zbirenbaum/copilot.lua"
    use {
        "zbirenbaum/copilot-cmp",
        after = { "copilot.lua" }
    }

end)
