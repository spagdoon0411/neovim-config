-- return {
--  { 
--    "sainnhe/gruvbox-material", 
--    name = "gruvbox", 
--    priority = 1000,
--    config = function() 
--      vim.cmd("colorscheme gruvbox-material")
--    end
--  }
--}

return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme gruvbox")
      vim.cmd("set background=dark")
    end

  }
}
