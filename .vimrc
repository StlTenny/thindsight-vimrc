set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'
 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-rails.git'
 Bundle 'scrooloose/vimfiles'
 Bundle 'scrooloose/nerdtree'
 Bundle 'tpope/vim-surround'
 Bundle 'tpope/vim-fugitive'
 Bundle 'jpalardy/vim-slime'
 Bundle 'vim-scripts/bufkill.vim'
 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 " Revert Color to default when leaving Insert Mode

noremap <C-j> 14j14<C-e>
noremap <C-k> 14k14<C-y>
noremap <C-e> :BF<CR>:<ESC><ESC>
noremap <C-d> :BB<CR>:<ESC><ESC>
noremap <C-f> :BD<CR>:<ESC><ESC>

vnoremap <BS> "_d
nnoremap vii vipkoj
nnoremap vin vipkoj:SlimeSend<CR>:<ESC><ESC>

augroup CursorLine
	au!
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	au WinLeave * setlocal nocursorline
augroup END  

set cursorline	
autocmd InsertEnter * highlight CursorLine cterm=None ctermfg=None ctermbg=yellow
autocmd InsertLeave * highlight CursorLine cterm=None ctermfg=None ctermbg=black

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
set splitbelow
set splitright
set wildmode=longest,list,full
set wildmenu
syntax on



"for proper word wrapping
set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0
set wrapmargin=0
set formatoptions+=l
set showbreak=\ \ \ \ \ \ ...
    
"for nerdtree close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
