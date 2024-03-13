---@type MappingsTable
local M = {}

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
    ["<leader>lt"] = {
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

    ["<leader>fw"] = { "<cmd> Vine<CR>", "Vine grep" },
    ["<leader><CR>"] = { "<cmd> call VineOpen()<CR>", "Vine grep open result" },

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
