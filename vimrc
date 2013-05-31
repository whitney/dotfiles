execute pathogen#infect()
let g:Powerline_symbols = 'fancy'
set t_Co=256

syntax on

hi Comment ctermfg=DarkGreen guifg=Green

set background=dark
" solarized options 
let g:solarized_termcolors = 256
"let g:solarized_termtrans = 1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
"colorscheme zenburn
"colorscheme wombat256

set hlsearch
set encoding=utf-8
set ts=2
set tabstop=2
set ai
set nu
set hls
set sw=2
set et
set showmatch
set shiftwidth=2
"set noexpandtab
set expandtab
set splitbelow
set splitright

" Show  tab characters. Visual Whitespace.
"set list
"set listchars=tab:>.

filetype plugin indent on

" clojure
au BufRead,BufNewFile *.clj set filetype=clojure

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do :help cope if you are unsure what cope is. It's super useful!
map <leader>cc :botright cope<cr>
map <leader>n :cn<cr>
map <leader>p :cp<cr>

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif
