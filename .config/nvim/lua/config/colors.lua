
-- Set cursor line color on visual mode
vim.cmd "highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40"

vim.cmd "highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000"

vim.cmd [[
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ../../colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif
]]
