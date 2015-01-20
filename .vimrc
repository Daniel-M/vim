call pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim

" \ will be the utility prefix

set backupdir=~/.vimbackup/,/tmp/

filetype plugin on
syntax on

set showcmd

"SEARCH AND HIGHLIGHTING
set showmatch
set incsearch
set ignorecase
set smartcase
set hlsearch
"hightlighting disabling
nmap \q :nohlsearch<CR> 

"remap make
nmap \m :!make<CR>
nmap \c :!cmake ..<CR>

"execute the file in this folder that is not a folder or a lib
"nmap \r :!for i in *; do if [[ -x "$i" ]];then if [[ ! -d "$i" ]]; then if [[ $i == *so ]]; then continue; else EXE=$i; fi; fi; fi; done; echo $EXE<CR>

"TOGGLE MAPS

"line numbers
nmap \l :setlocal number!<CR>
"paste mode
set pastetoggle=<F3>

"NERD Tree
nmap \e :NERDTreeToggle<CR>

"buffer next and previous
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

"search with cotrlP
nmap ; :CtrlPBuffer<CR>

"ctrlP search options
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll|a|s|cmake|png|pdf@out|dat|o|swp|pyc)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ } 
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

"doxygen syntax activation
let g:load_doxygen_syntax=1

set backspace=2
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab

"set textwidth=79

set ruler

set background=dark

set mouse=a

"Syntastic options
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" YouCompleteMe enabling
set completeopt+=preview

"
" Latex Suite config
"
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
 
" IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*
"
" " OPTIONAL: This enables automatic indentation as you type.
filetype indent on
"
" " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
