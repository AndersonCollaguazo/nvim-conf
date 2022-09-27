vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    separator_style = 'thin',
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    color_icons = false,
    diagnostics = "nvim_lsp"
  },
  highlights = {
    buffer_selected = {
      fg = '#a9b1d6',
      bold = true,
    }
  },
}

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
