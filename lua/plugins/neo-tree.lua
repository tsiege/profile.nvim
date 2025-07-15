return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      reveal = true,
      reveal_force_cwd = false,
      filesystem = {
        check_gitignore_in_search = true,
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            '.git',
            '.DS_Store',
            'node_modules',
            '.next',
          },
          never_show = {
            '.git',
            'node_modules',
            '.next',
          },
        },
      },
    }
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
  end,
}
