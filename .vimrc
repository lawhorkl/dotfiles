let mapleader="\<tab>"
execute pathogen#infect()
filetype plugin indent on

autocmd vimenter * NERDTree
syntax enable
set background=dark
colorscheme solarized

" line numbers and formatting
  set number
  set numberwidth=5
  set cursorline
  set autoindent
  set showcmd
  " convert tabs to spaces
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
    set expandtab

" search settings
  set showmatch
  set incsearch

" line colors
  set colorcolumn=115

  "NERDTree mouse integration
  set mouse=a
  let g:NERDTreeMouseMode=3 

" no swap files because of git
	set noswapfile

  " keybindings
  set notimeout
  set ttimeout
  nnoremap <Leader>a h
  nnoremap <Leader>s j
  nnoremap <Leader>w k
  nnoremap <Leader>d l
    " one handed keybindings for pane switching
     nnoremap <Leader><Leader>a <c-w>h
     nnoremap <Leader><Leader>s <c-w>j
     nnoremap <Leader><Leader>w <c-w>k
     nnoremap <Leader><Leader>d <c-w>l
    " one handed submode for movement
    call submode#enter_with('one-hand-mvmt', 'n', '', '<Leader>a', 'h')
    call submode#enter_with('one-hand-mvmt', 'n', '', '<Leader>s', 'j')
    call submode#enter_with('one-hand-mvmt', 'n', '', '<Leader>w', 'k')
    call submode#enter_with('one-hand-mvmt', 'n', '', '<Leader>d', 'l')
    call submode#leave_with('one-hand-mvmt', 'n', '', '<Esc>')
    call submode#map('one-hand-mvmt', 'n', '', 'a', 'h')
    call submode#map('one-hand-mvmt', 'n', '', 's', 'j')
    call submode#map('one-hand-mvmt', 'n', '', 'w', 'k')
    call submode#map('one-hand-mvmt', 'n', '', 'd', 'l')
    " preserve some commands from normal mode
    call submode#map('one-hand-mvmt', 'n', '', 'yy', 'yy')
    call submode#map('one-hand-mvmt', 'n', '', 'p', 'p')
    call submode#map('one-hand-mvmt', 'n', '', 'u', 'u')
    call submode#map('one-hand-mvmt', 'n', '', 'dd', 'dd')
    call submode#map('one-hand-mvmt', 'n', '', 'i', 'i')
    call submode#map('one-hand-mvmt', 'n', '', '<Leader>a', 'a')
