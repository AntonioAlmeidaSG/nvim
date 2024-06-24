---@type MappingsTable
local M = {}

M.copilot = {
  i = {
      ["<C-]>"] = {
         function()
            vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
         end,
         "Copilot Accept",
         {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
      },
      ["<C-\\>"] = {
         "<Plug>(copilot-accept-word)",
         "Copilot Accept",
         {silent=true, expr=true}
      },
      ["<C-|>"] = {
         "<Plug>(copilot-accept-line)",
         "Copilot Accept",
         {silent=true, expr=true}
      },
      ["<A-.>"] = {
         "<Plug>(copilot-suggest)",
         "Copilot Suggest",
         {silent=true, expr=true}
      },
      ["<A-Down>"] = {
         "<Plug>(copilot-next)",
         "Copilot Next",
         {silent=true, expr=true}
      },
      ["<A-Up>"] = {
         "<Plug>(copilot-previous)",
         "Copilot Previous",
         {silent=true, expr=true}
      },
   }
}

M.general = {
   n = {
      ["<C-z>"] = { "u", "undo", opts = { silent = true } },
      ["<C-y>"] = { "<C-r>", "redo", opts = { silent = true } },
      ["<PageUp>"] = { "<C-u> 0zz", "scroll up", opts = { silent = true } },
      ["<PageDown>"] = { "<C-d> 0zz", "scroll down", opts = { silent = true } },
      ["x"] = { "\"_x", "erase char", opts = { silent = true } },
      ["X"] = { "\"_x", "erase char", opts = { silent = true } },
      ["<Del>"] = { "\"_x", "erase char", opts = { silent = true } },
      ["d"] = { "\"_d", "delete", opts = { silent = true } },
      ["dd"] = { "\"_dd", "delete line", opts = { silent = true } },
      ["D"] = { "\"_D", "delete until the end of line", opts = { silent = true } },
      ["<C-Up>"] = { "# zz", "find word above", opts = { silent = true } },
      ["<C-Down>"] = { "* zz", "find word below", opts = { silent = true } },

      ["<leader>gc"] = {
         "<cmd> Git commit <CR>",
         "fugitive 'git commit'",
         opts = { silent = true },
      },
      ["<leader>gs"] = {
         "<cmd> Git <CR>",
         "fugitive",
         opts = { silent = true },
      },
      ["<leader>ds"] = {
         "<cmd> terminal harbour % -I/home/sg/harbour-core/include -I/mnt/c/fwh/include -I/home/sg/repositorios/gtrunk/include -I/home/sg/repositorios/gtrunk/new -I/home/sg/repositorios/gtrunk/fivewin -w3 -n -s -DLINTER -DHBCASTER_UNIT_TEST <CR>",
         "harbour linter",
         opts = { silent = true } },

      ["<leader>/"] = {
         "<cmd>AutoInlineComment<CR>",
         "Toggle comment",
      },

      ["<A-Left>"] = { "<C-w>h", "Window left" },
      ["<A-Right>"] = { "<C-w>l", "Window right" },
      ["<A-Up>"] = { "<C-w>j", "Window down" },
      ["<A-Down>"] = { "<C-w>k", "Window up" },

      ["<leader>fW"] = { "<cmd> Vine<CR>", "Vine grep" },

   },
   v = {
      ["<C-z>"] = { "u", "undo", opts = { silent = true } },
      ["<C-y>"] = { "<C-r>", "redo", opts = { silent = true } },
      ["x"] = { "\"_x", "erase char", opts = { silent = true } },
      ["X"] = { "\"_x", "erase char", opts = { silent = true } },
      ["<Del>"] = { "\"_x", "erase char", opts = { silent = true } },
      ["d"] = { "\"_d", "delete", opts = { silent = true } },
      ["dd"] = { "\"_dd", "delete line", opts = { silent = true } },
      ["D"] = { "\"_D", "delete until the end of line", opts = { silent = true } },

      ["<leader>/"] = {
         "<cmd>AutoInlineComment<CR>",
         "Toggle comment",
      },
   },
}

-- more keybinds!

return M
