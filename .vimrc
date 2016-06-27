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
filetype indent on
filetype plugin on
au BufRead,BufNewFile *.ml,*.mli compiler ocaml
syntax on

" http://www.typerex.org/ocp-indent.html
autocmd FileType ocaml source /home/neo/.opam/system/share/vim/syntax/ocp-indent.vim

" ctrlp http://ctrlpvim.github.io/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

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

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/neo/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/neo/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'godlygeek/tabular'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'tpope/vim-surround'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
"

set ignorecase

" https://github.com/joyent/node/issues/3172#issuecomment-31125703
set backupcopy=yes

" http://usevim.com/2013/01/04/vim101-jumping/
set suffixesadd+=.js

" let me open more than 10 tabs with vim -p
set tabpagemax=100

" set cwd to current file
set autochdir
