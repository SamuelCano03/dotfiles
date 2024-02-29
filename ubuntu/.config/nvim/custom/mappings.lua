---@type MappingsTable
local M = {}

M.general = {
     n = {
          [";"] = { ":", "enter command mode", opts = { nowait = true } }, -- nowait true will execute it inmediately
          -- my own confi to be happy
          ["<A-Down>"]={":m .+1<CR>=="}, --down
          ["<A-Up>"] = {":m .-2<CR>=="}, --up
          ["<C-x>"] = {"dd"},
     },
     v = {
                    -- the same stuff as above
          ["<A-j>"] = {":m .+1<CR>=="}, --move line down(n)
          ["<A-k>"] = {":m .-2<CR>=="}, --move line up(n)
     }
}

-- more keybinds!

return M
