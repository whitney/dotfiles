syntax on

hi Comment ctermfg=DarkGreen guifg=Green

set hlsearch
set encoding=utf-8
set ts=4
set tabstop=4
set ai
set nu
set hls
set sw=2
set et
set showmatch
set shiftwidth=4
set noexpandtab

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
