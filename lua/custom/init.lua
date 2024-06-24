local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

autocmd("bufenter", {
  pattern = "*",
  command = "if (winnr(\"$\") == 1 && &filetype == \"nvimtree\") | q | endif",
})

vim.wo.relativenumber = true
vim.opt.wrap = false
vim.g.vscode_snippets_path = "~/.config/nvim/my-snippets"

vim.g.default_inline_comment = "//"

-- Copilot setup.
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
