-- Looks for certain path. Clones Lazy repo if not.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Loads vim options from vim-options.lua
require("vim-options")

-- Loads Lazy. USe :Lazy to open Lazy menu.
require("lazy").setup("plugins")

require'lspconfig'.julials.setup{
    on_new_config = function(new_config, _)
        local julia = vim.fn.expand("~/.julia/environments/nvim-lspconfig/bin/julia")
        if require'lspconfig'.util.path.is_file(julia) then
	    vim.notify("Hello!")
            new_config.cmd[1] = julia
        end
    end
}

local function system(command)
  local file = assert(io.popen(command, 'r'))
  local output = file:read('*all'):gsub("%s+", "")
  file:close()
  return output
end

vim.g.python3_host_prog = system("which python")
vim.g.python_host_prog = system("which python")
