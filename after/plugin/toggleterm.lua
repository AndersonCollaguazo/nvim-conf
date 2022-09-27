require("toggleterm").setup{
  size=20,
  open_mapping=[[<c-t>]],
  hide_numbers =true,
  shade_filetypes={},
  shade_terminals=true,
  shading_factor=2,
  start_in_insert=true,
  insert_mappings=true,
  persist_size=true,
  direction="horizontal",
  close_on_exit=true,
  shell=vim.o.shell,
  float_opts={
    border="curved",
    winblend=0,
    highlights={
      border="Normal",
      background="Normal",
    },
  },
}
vim.cmd('autocmd!TermOpen term://*lua set_terminal_keymaps()')
local Terminal=require("toggleterm.terminal").Terminal

local node=Terminal:new({cmd="node",hidden=true})
function _NODE_TOGGLE()
  node:toggle()
end

local htop=Terminal:new({cmd="htop",hidden=true})
function _HTOP_TOGGLE()
  htop:toggle()
end