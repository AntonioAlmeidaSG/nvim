local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

   -- Override plugin definition options
   {
      "mfussenegger/nvim-lint",
      event = "VeryLazy",
      config = function ()
         require "custom.configs.lint"
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         require "plugins.configs.lspconfig"
         require "custom.configs.lspconfig"
      end, -- Override to setup mason-lspconfig
   },

   -- override plugin configs
   {
      "williamboman/mason.nvim",
   },

   {
      "nvim-treesitter/nvim-treesitter",
      opts = overrides.treesitter,
   },

   {
      "nvim-tree/nvim-tree.lua",
      opts = overrides.nvimtree,
   },
   {
      "cappyzawa/trim.nvim",
      opts = {},
      lazy = false,
   },
   {
      "tpope/vim-fugitive",
      lazy = false,
   },
   {
      "daltonypng/vim-vine",
      lazy = false
   },
   {
      "github/copilot.vim",
      lazy = false,
      config = function()  -- Mapping tab is already used by NvChad
         vim.g.copilot_no_tab_map = true;
         vim.g.copilot_assume_mapped = true;
         vim.g.copilot_tab_fallback = "";
         -- The mapping is set to other key, see custom/lua/mappings
         -- or run <leader>ch to see copilot mapping section
      end
   },

   -- To make a plugin not be loaded
   -- {
   --   "NvChad/nvim-colorizer.lua",
   --   enabled = false
   -- },

   -- All NvChad plugins are lazy-loaded by default
   -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
   -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
}

return plugins
