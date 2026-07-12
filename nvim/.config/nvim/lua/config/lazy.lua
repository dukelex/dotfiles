local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)
    
require("lazy").setup({
    {
        "neanias/everforest-nvim",
          version = false,
          lazy = false,
          priority = 1000, -- make sure to load this before all the other start plugins
          -- Optional; default configuration will be used if setup isn't called.
          config = function()
            require("everforest").setup({
              -- Your config here
            })
          end,
    },
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
          "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
    },
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "neovim/nvim-lspconfig"
    },
    -- CMP block
    {
        'hrsh7th/cmp-nvim-lsp'
    },        
    {
        'hrsh7th/cmp-buffer'
    },
    {
        'hrsh7th/cmp-path'
    },
    {
        'hrsh7th/cmp-cmdline'
    },
    {
        'hrsh7th/nvim-cmp'
    },
    {
        'hrsh7th/cmp-vsnip'
    },
    {
        'hrsh7th/vim-vsnip'
    },
    -- CMP block end
    {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
     dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'stevearc/conform.nvim',
        opts={},
    },
    {
        'nvim-mini/mini.pairs', version = false 
    },
    {
        -- amongst your other plugins
        'akinsho/toggleterm.nvim', version = "*", config = true
          -- or
        -- {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
    },
    {
        'windwp/nvim-autopairs'
    },
    {
    'smoka7/hop.nvim',
    version = "*",
    opts = {
        keys = 'etovxqpdygfblzhckisuran'
           },
    },
    {
        {'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'}
    },
    {
        "kylechui/nvim-surround",
        version = "^4.0.0", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        -- Optional: See `:h nvim-surround.configuration` and `:h nvim-surround.setup` for details
        -- config = function()
        --     require("nvim-surround").setup({
        --         -- Put your configuration here
        --     })
        -- end
    },
    {
        {
          'nvimdev/dashboard-nvim',
          event = 'VimEnter',
          dependencies = { {'nvim-tree/nvim-web-devicons'}}
        }
    },
})
