return {
  'HallerPatrick/py_lsp.nvim',
  dependencies = { "dharmx/toml.nvim" },
  config = function()
    require'py_lsp'.setup {
    -- This is optional, but allows to create virtual envs from nvim
    host_python = "/opt/homebrew/anaconda3/bin/python",
    default_venv_name = "base" -- For local venv
  }
  end
}
