-- vim.cmd() provides access to commands via Vim API
-- Use `:source %` to save settings changes to NVim
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " " -- sets <leader> string

vim.g.python3_host_prog = "/opt/homebrew/anaconda3/bin/python"
vim.g.python_host_prog = "/opt/homebrew/anaconda3/bin/python"

