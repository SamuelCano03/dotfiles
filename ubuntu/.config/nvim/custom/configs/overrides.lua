local M = {}

M.treesitter = {
     ensure_installed = {
          "vim",
          "lua",
          "html",
          "css",
          -- "javascript",
          -- "typescript",
          "tsx",
          "c",
          "markdown",
          "markdown_inline",
          "pyright",
          "typescript-language-server"
     },
     indent = {
          enable = true,
          -- disable = {
          --   "python"
          -- },
     },
}

M.mason = {
     ensure_installed = {
          -- lua stuff
          "lua-language-server",
          "stylua",

          -- web dev stuff
          "css-lsp",
          "html-lsp",
          "typescript-language-server",
          "taildwindcss-language-server",
          "deno",
          "prettier",

          -- c/cpp stuff
          "clangd",
          "clang-format",

          -- python my stuff
          "pyright",
     },
}

-- git support in nvimtree
M.nvimtree = {
     git = {
          enable = true,
     },

     renderer = {
          highlight_git = true,
          icons = {
               show = {
                    git = true,
               },
          },
     },
}
-- nvterm sutff
M.nvterm ={

     terminals = {

          shell = vim.o.shell,

          list = {},

          type_opts = {

               float = {

                    relative = 'editor',

                    row = 0.2,

                    col = 0.15,

                    width = 0.7,

                    height = 0.5,

                    border = "single",

               },

               horizontal = { location = "rightbelow", split_ratio = .3, },

               vertical = { location = "rightbelow", split_ratio = .3 },

          }

     },

     behavior = {

          autoclose_on_quit = {

               enabled = false,

               confirm = true,

          },

          close_on_exit = true,

          auto_insert = true,

     },

}
return M
