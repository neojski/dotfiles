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
noremap <C-h> <C-w>h<CR>
noremap <C-j> <C-w>j<CR>
noremap <C-k> <C-w>k<CR>
noremap <C-l> <C-w>l<CR>

" line nubering
set number

" show status line always
set statusline=2

" change ctrlp default open key
let g:ctrlp_map = '<leader>f'
