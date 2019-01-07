" -------- VUNDLE STUFF --------

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins here
Plugin 'rizzatti/dash.vim'
Plugin 'tpope/vim-commentary'
Bundle 'edkolev/tmuxline.vim'
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'qpkorr/vim-bufkill'
Plugin 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Bundle 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

" -------- END VUNDLE --------

" " weird stuff to make YCM play nice with DelimitMate
" " (https://github.com/Valloric/YouCompleteMe/issues/2696)
" imap <silent> <BS> <C-R>=YcmOnDeleteChar()<CR><Plug>delimitMateBS

" function! YcmOnDeleteChar()
"   if pumvisible()
"     return "\<C-y>"
"   endif
"   return "" 
" endfunction

let g:dracula_italic = 0

set smartindent
set tabstop=4
set shiftwidth=4

syntax on 
set mouse=a
set number
set nowrap
set laststatus=2
set noshowmode
color dracula
set splitbelow
set splitright

" press enter to switch buffers
nnoremap <CR> :bn!<CR>
" press tab to switch panes
nnoremap <TAB> <C-W><C-W>
" ctrl+n to toggle nerdtree
nnoremap <C-N> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:tmuxline_preset = {
    \'a' 	: '#(whoami)',
  	\'b'    : '#S',
    \'win'  : '#I #W',
    \'cwin' : '#I #W',
    \'y'    : '#(date +%D)',
    \'z'    : '%R'}
