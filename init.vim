set encoding=utf-8
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" Adds line numbers
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

map <leader>' :NERDTreeToggle<cr>

map <leader>y :CtrlPBuffer<cr>

" Syntastic settings
let g:syntastic_php_checkers = ["mri", "rubocop"]

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'altercation/vim-colors-solarized'
  Plug 'chriskempson/base16-vim'
  Plug 'editorconfig/editorconfig'
  Plug 'honza/vim-snippets'
  Plug 'janko-m/vim-test'
  Plug 'kien/ctrlp.vim'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'nielsmadan/harlequin'
  Plug 'ngmy/vim-rubocop'
  Plug 'Raimondi/delimitMate'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-rails'
  Plug 'tpope/vim-surround'
  Plug 'tomasr/molokai'
  Plug 'Valloric/YouCompleteMe'
  Plug 'vim-ruby/vim-ruby'
  Plug 'wakatime/vim-wakatime'
call plug#end()

colorscheme harlequin

" Base 16 settings
" let base16colorspace=256
" colorscheme base16-default-dark

" Solarized color scheme
" let g:solarized_termcolors=256
" syntax enable
" set background=dark
" colorscheme solarized
