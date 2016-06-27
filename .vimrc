syntax on
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch

" wrapping
" to wrap text use gq command
" set textwidth=80
set textwidth=200

" set 256 colorscheme
set t_Co=256
colorscheme molokai

" display trailing spaces & stuff like that
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" detect filetypes
filetype on
au BufNewFile,BufRead *.asm set filetype=nasm
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.hbs set filetype=html

" https://github.com/the-lambda-church/merlin/wiki/vim-from-scratch
"let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
"execute "set rtp+=" . g:opamshare . "/merlin/vim"

" http://stackoverflow.com/questions/15514908/which-is-the-current-setup-to-use-ocaml-in-vim
"filetype indent on
"filetype plugin on
"au BufRead,BufNewFile *.ml,*.mli compiler ocaml
"syntax on

" ctrlp http://ctrlpvim.github.io/ctrlp.vim
set runtimepath^="~/.vim/bundle/ctrlp.vim"


let mapleader = ","
let maplocalleader = ",,"

" moving between buffers
" noremap = ("" = all modes [n = normal; v = visual; i = insert])(nore = non-recursive)(map)
noremap <C-h> <C-w>h<CR>
noremap <C-j> <C-w>j<CR>
noremap <C-k> <C-w>k<CR>
noremap <C-l> <C-w>l<CR>

" moving between tabs
noremap <C-n> <esc>gt
noremap <C-p> <esc>gT

" make Y behave like C
noremap Y y$

" line nubering
set number

" change ctrlp default open key
let g:ctrlp_map = '<leader>f'

" show status line always
set laststatus=2

" don't wait till I click <CR> to do start searching
set incsearch

set ignorecase


"dein Scripts-----------------------------
if &compatible
 set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/vim-dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('vim-dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('tpope/vim-fugitive')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('flazz/vim-colorschemes')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('bling/vim-airline')
call dein#add('godlygeek/tabular')
call dein#add('rust-lang/rust.vim')
call dein#add('tpope/vim-surround')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif

"End dein Scripts-------------------------




" https://github.com/joyent/node/issues/3172#issuecomment-31125703
set backupcopy=yes

" http://usevim.com/2013/01/04/vim101-jumping/
set suffixesadd+=.js

" let me open more than 10 tabs with vim -p
set tabpagemax=100

" set cwd to current file
set autochdir

" merlin
"let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
"execute "set rtp+=" . g:opamshare . "/merlin/vim"
"
execute "set rtp+=/home/neo/repos/merlin/vim/vimbufsync"
execute "set rtp+=/home/neo/repos/merlin/vim/merlin"
set rtp^="/home/neo/.opam/system/share/ocp-indent/vim"
