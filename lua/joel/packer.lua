-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use({ "folke/trouble.nvim", requires = "nvim-tree/nvim-web-devicons" })
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("nvim-treesitter/nvim-treesitter-context")
    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        },
    })
    use("jose-elias-alvarez/null-ls.nvim")
    use("neovim/nvim-lspconfig")
    use("MunifTanjim/prettier.nvim")
    use("github/copilot.vim")
    use("eandrju/cellular-automaton.nvim")
    use("laytan/cloak.nvim")
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")
    use("vim-scripts/ReplaceWithRegister")
    -- themes
    use("Tsuzat/NeoSolarized.nvim")
    use { "EdenEast/nightfox.nvim" }
    use { "ellisonleao/gruvbox.nvim" }
    use "folke/tokyonight.nvim"
    use { "catppuccin/nvim", as = "catppuccin" }
    -- kanagawa
    use "rebelot/kanagawa.nvim"
    --
    use({ "tpope/vim-commentary" })
    use("JoosepAlviste/nvim-ts-context-commentstring")
    use({ "lewis6991/gitsigns.nvim" })
    use("nvim-tree/nvim-web-devicons")
    -- multi-cursor support :D
    use("mg979/vim-visual-multi")
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    })
    use({ "ibhagwan/fzf-lua", requires = { "nvim-tree/nvim-web-devicons" } })
    use({ "junegunn/fzf", run = "./install --bin" })
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    })
    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons", -- optional
        },
    })
    use("almo7aya/openingh.nvim")
    use({
        "ruifm/gitlinker.nvim",
        requires = "nvim-lua/plenary.nvim",
    })
    use("kdheepak/lazygit.nvim")
    use("PatschD/zippy.nvim")
    use { "shortcuts/no-neck-pain.nvim", tag = "*" }
end)
