-- oil.nvim
-- based on https://www.youtube.com/watch?v=q1QhV-24DNA

--return {
--  cmd = { 'Browse' },
--  int = function()
--    vim.g.netrw_nogx = 1 -- disable netrw gx
--  end,
--  dependencies = { 'nvim-lua/plenary.nvim' },
--  config = true, -- default settings
--  submodules = false, -- not needed, submodules are requiered only for tests
--},

return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      default_file_explorer = true,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
        natural_order = true,
        is_always_hidden = function(name, _)
          return name == '..' or name == '.git'
        end,
      },
      win_options = {
        wrap = true,
      },
    }
  end,
}
