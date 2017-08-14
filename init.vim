filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" Solarized color scheme
 let g:solarized_termcolors=256
 syntax enable
 set background=dark
 colorscheme solarized

set number
" Ctrl u is to switch window (used for ssh from chromebook)
nnoremap <C-u> <C-w> 
" Removes highlighting from search that is complete
nnoremap <silent> <BS> :nohlsearch<CR>
" S starts the find an replace dialogue
nnoremap S :%s//g<Left><Left>
" Full line yank
nnoremap Y y$
" Full file yank
nnoremap yY :%yank <C-r>=v:register<CR><CR>
" Full file delete
nnoremap dD :%delete <C-r>=v:register<CR><CR>
" Neovim only exits neovim terminal mode
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif

" Syntastic settings
let g:syntastic_php_checkers = ["mri", "rubocop"]

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'chriskempson/base16-vim'
	Plug 'tpope/vim-rails'
  Plug 'ngmy/vim-rubocop'
  Plug 'honza/vim-snippets'
  Plug 'kien/ctrlp.vim'
  Plug 'tomasr/molokai'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/syntastic'
  Plug 'tpope/vim-surround'
  Plug 'altercation/vim-colors-solarized'
call plug#end()

" Base 16 settings
" let base16colorspace=256
" colorscheme base16-default-dark
