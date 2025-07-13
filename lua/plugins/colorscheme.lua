return {
  -- To see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'sainnhe/everforest',
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.everforest_enable_italic = true
    vim.cmd.colorscheme 'everforest'
  end,
}
