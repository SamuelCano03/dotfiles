local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

     -- Override plugin definition options

     {
          "neovim/nvim-lspconfig",
          dependencies = {
               -- format & linting
               {
                    "jose-elias-alvarez/null-ls.nvim",
                    config = function()
                         require "custom.configs.null-ls"
                    end,
               },
          },
          config = function()
               require "plugins.configs.lspconfig"
               require "custom.configs.lspconfig"
          end, -- Override to setup mason-lspconfig
     },

     -- override plugin configs
     {
          "williamboman/mason.nvim",
          opts = overrides.mason,
     },

     {
          "nvim-tree/nvim-tree.lua",
          opts = overrides.nvimtree,
     },

     {
          "alexghergh/nvim-tmux-navigation",
          event = "VeryLazy",
          config = function()
               local nvim_tmux_nav = require("nvim-tmux-navigation")
               nvim_tmux_nav.setup({
                    disable_when_zoomed = true,
                    -- defaults to false
                    keybindings = {
                         left = "<C-h>",
                         down = "<C-j>",
                         up = "<C-k>",
                         right = "<C-l>",
                         last_active = "<C-\\>",
                         next = "<C-Space>",
                    },
               })
          end,
     },
     {
        "barrett-ruth/live-server.nvim",
        build = "npm install -g live-server",
        cmd = { 'LiveServerStart', 'LiveServerStop' },
        -- event={"BufReadPre", "BufNewFile"},
        config=true,
     },
     {
          "NvChad/nvterm",
          opts = overrides.nvterm,
     }
     -- To make a plugin not be loaded
     -- {
     --   "NvChad/nvim-colorizer.lua",
     --   enabled = false
     -- },

     -- All NvChad plugins are lazy-loaded by default
     -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
     -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
     -- {
     --   "mg979/vim-visual-multi",
     --   lazy = false,
     -- }
}

return plugins
