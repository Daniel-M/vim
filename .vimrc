" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" NERDTree plugin to have a nav-bar
" On-demand loading when calling :NERDTreeToggle
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' , 'tag': '*' }

" Orgasmic commenting tool
Plug 'https://github.com/scrooloose/nerdcommenter', { 'tag': '*' }

" Sneak is a minimalist, versatile Vim motion plugin
Plug 'https://github.com/justinmk/vim-sneak'

" Mark indentation lines
Plug 'nathanaelkane/vim-indent-guides'


"" LANGUAGE SPECIFIC PLUGINS

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'https://github.com/fatih/vim-go', { 'do': ':GoUpdateBinaries'}

" GoLang Syntax checker for vim
Plug 'stamblerre/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" Syntaxtic replacement, since syntaxtic is not supported in nvim yet
Plug 'https://github.com/neomake/neomake.git'

" Latex Plugin
Plug 'https://github.com/lervag/vimtex'

" Deoplete - completion for Neovim
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
"endif

" TypeScript plugin for Vim
Plug 'leafgarland/typescript-vim'

"" SNIPPETS PLUGIN

" Snippets for Utilsnips
Plug 'https://github.com/honza/vim-snippets'

" Utilsnips
Plug 'https://github.com/SirVer/ultisnips'

" JavaScript autocompletion
Plug 'https://github.com/pangloss/vim-javascript'

" JSX Syntax highlighting depends upon pangloss/vim-javascript
Plug 'mxw/vim-jsx'

" JavaScript linter for Vim
Plug 'w0rp/ale'

"" COLOR SCHEMES PLUGIN

" The colorscheme with neovim in mind.
Plug 'https://github.com/freeo/vim-kalisi'

" Another solarized color theme for truecolor neovim 
Plug 'https://github.com/icymind/neosolarized'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Silver searcher
Plug 'https://github.com/gabesoft/vim-ags'

" Add plugins to &runtimepath
call plug#end()


" *************************************
" END OF PLUGIN SECTION
" *************************************


" *************************************
" PLUGIN CONFIGURATION SECTION
" *************************************

"""
" Configure vim-ag silver searcher
"
let g:ags_enable_async = 1

"""
" Configure Deoplete 
"
" Start Deoplete plugin
call deoplete#enable()
let g:deoplete#enable_at_startup = 1
" Required by typescript in Neovim
let g:deoplete#enable_debug = 1
let g:deoplete#enable_profile = 1
call deoplete#enable_logging('DEBUG', '/tmp/deoplete_neovim.log')


"""
" Configure neomake
"
" Set log files
let g:neomake_logfile = "/tmp/neomake_neovim.log"
" When writing a buffer.
call neomake#configure#automake('w')
" When writing a buffer, and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing.
call neomake#configure#automake('rw', 1000)


"""
" Configure UltiSnips - Snippets
"
" Snippets directory
"let g:UltiSnipsSnippetDirectories="~/.config/nvim/plugged/vim-snippets/UltiSnips"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"""
" Configure mxw vim-jsx 

" To allow .js extension for JSX syntax highlighting
let g:jsx_ext_required = 0

"""
" Enable indentation guides on startup (vim-indent-guides)
"let g:indent_guides_enable_on_vim_startup = 1

"""
" Configure vimtex
"
" To activate vimtex filetype detection.
" The desired ft=tex, but somtimes neovim detects ft=plaintex
" thus nothing related to vimtex works
let g:tex_flavor = 'latex'

""" 
" ALE plugin configurations
"
" Enable completion where available.
"let g:ale_completion_enabled = 1
"
" Enable status bar messages. Set this,
" Airline will handle the rest.
"let g:airline#extensions#ale#enabled = 1
"
" Show 5 lines of errors (default: 10)
"let g:ale_list_window_size = 5


"""
" Configure vim-airline
"
" enable spell detection 
let g:airline_detect_spell=1
"
" Set the dark theme
"let g:airline_theme='dark'
let g:airline_theme='cool'

"let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
  "let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"

let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#show_message = 1
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'long', 'mixed-indent-file' ]

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab




" *************************************
" END PLUGIN CONFIGURATION SECTION
" *************************************




" *************************************
" KEYMAPPING AND TWEAKING SECTION
" *************************************
" Recall that <leader> maps to "\" by default
" so <leader>q means "\q"on a default installation

" Actually delete characters when using the backspace
set backspace=2

"highlighting disabling
nmap <leader>q :nohlsearch<CR> 

"""""
"SEARCH AND HIGHLIGHTING

" Show matching brackets
set showmatch
" Show line numbers
set number
" Continue comment marker on new lines
set formatoptions+=o

set incsearch
set ignorecase
set smartcase
set hlsearch

" Show line and column number in the status bar
set ruler

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" show existing tab with 4 spaces width
set tabstop=2 "Parallelo configs
" when indenting with '>', use 4 spaces width
set shiftwidth=2 "Parallelo configs
" On pressing tab, insert 2 spaces
set expandtab

" Show mark at 80 chars length
set colorcolumn=80

" Word wrapping
set textwidth=80

" Allow mouse click enabled in terminal
" mouse click places cursor there 
set mouse=a

" Show status bar
set laststatus=2

" Show autocompletion of commands
set wildmenu


"
" SET SPELL CHEKING ON, USEFUL WHEN WRITING STUFF
"
"spanish spell checking not tested
"setlocal spell spelllang=es
"
"english spell checking tested and working
"setlocal spell spelllang=en
set spell spelllang=en


"
" COLOR SCHEMES
"

"Activating freeo/vim-kalisi colorscheme
colorscheme kalisi 
set background=dark
"set background=light

" flattened romainl/flattened colorscheme
"colorscheme flattened_dark

"colorscheme NeoSolarized

set t_Co=256
" in case t_Co alone doesn't work, add this as well:
"let &t_AB="<leader>e[48;5;%dm"
"let &t_AF="<leader>e[38;5;%dm"

" *************************************
" KEYMAPPING
" *************************************

" commenting and uncommenting with NERDCommenter plugin
nmap <C-c> <leader>cc 
vmap <C-c> <leader>ci 
nmap <C-x> <leader>cu
vmap <C-x> <leader>cu

"line numbers
nmap <leader>ln :setlocal number!<CR>

"paste mode
set pastetoggle=<F3>

"NERD Tree
nmap <leader>nt :NERDTreeToggle<CR>

"buffer next and previous
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

"search with cotrlP
"nmap ; :CtrlPBuffer<CR>

inoremap , ,<space>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"""
" Adding manual configuration for Prettier
" Install with `yarn global add prettier` or `npm install -g prettier`
" autocmd FileType javascript set formatprg=prettier\ --stdin
