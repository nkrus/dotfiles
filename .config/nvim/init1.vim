" Options

" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8

" Enables the clipboard between Vim/Neovim and other applications.
set clipboard=unnamedplus 

set encoding=utf-8
set autoindent " Indent a new line
set background=dark
set nobackup
set hlsearch
set showcmd
set mouse=a " Allow to use the mouse in the editor
set number relativenumber " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
syntax enable
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set shell=fish
set backupskip=/tmp/*,/private/tmp/

" incremental substitution (neovim)
if has('nvim')
" Show replacements in a split screen
  set inccommand=split
endif


set nosc noru nosm
set ignorecase
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**


" Highlights "{{{
" ---------------------------------------------------------------------

" Highlights the current line in the editor
set cursorline

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
runtime ./maps.vim

"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

"}}}
