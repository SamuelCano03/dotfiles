-- Auto resize panes when resizing nvim window
local mycmd = vim.api.nvim_create_autocmd
mycmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- Stuff for tab size only here
vim.o.tabstop = 5 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 5 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 5 -- Number of spaces inserted when indenting
vim.opt.wrap = false
vim.api.nvim_set_keymap('n','<S-ScrollWheelUp>', ':silent! normal! zh<CR>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n','<S-ScrollWheelDown>', ':silent! normal! zl<CR>',{ noremap = true, silent = true })
