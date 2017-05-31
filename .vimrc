syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" Remove trailing spaces
autocmd BufWritePre *.py :%s/\s\+$//e

" GUI Highlight settings
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

" Spellchecking
set spell spelllang=en_us
highlight SpellCap none
highlight SpellRare none
highlight SpellLocal none

if (v:version >= 700)
  highlight SpellBad ctermfg=Red term=Reverse guisp=Red gui=undercurl ctermbg=NONE 
endif " version 7+

" File details
set number
set ruler
set laststatus=2

set backspace=indent,eol,start
set nocompatible	 	 " be iMproved, required
filetype off			" required

" Include and initialize Vundle in the runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage itself, required
Plugin 'VundleVim/Vundle.vim'

"=============
"Plugins
"=============
let g:airline_theme='one'
Plugin 'joshdick/onedark.vim'
let g:one_allow_italics = 1
"colorscheme onedark
"set background=dark
set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum

Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'

" Git
Plugin 'airblade/vim-gitgutter'

" Show vertical indent lines
Plugin 'Yggdroot/indentLine'
let g:indentLine_char = '|'
let g:indentLine_color_term = 239

" Markdown: Syntax highlighting
"Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-markdown'
"Plugin 'plasticboy/vim-markdown'
"autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:vim_markdown_folding_disabled = 1


"-------------
" Vim snippets
"-------------
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"-------------
" JavaScript
"-------------
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1

"-------------
" Clojure
"-------------
" Source: http://thegreata.pe/notes-on-writing-clojure-in-vim
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-fireplace.git'
Plugin 'guns/vim-clojure-static.git'

autocmd Filetype clojure nmap <buffer> gf <Plug>FireplaceDjump

" For basic structural editing of s-expressions
"Plugin 'guns/vim-sexp'
"Plugin 'tpope/vim-sexp-mappings-for-regular-people'
"Plugin 'bhurlow/vim-parinfer'

" For advanced structural editing of s-expressions
Plugin 'guns/vim-slamhound'

" Manages Clojure namespaces' require statements
autocmd Filetype clojure nnoremap <buffer> <leader>sh :Slamhound<cr>

"" Breakpoint debugger
"Plugin 'dgrnbrg/vim-redl'
"autocmd Filetype clojure imap <buffer> <Up> <Plug>clj_repl_uphist.
"autocmd Filetype clojure imap <buffer> <Down> <Plug>clj_repl_downhist.

" Rainbow parentheses
Plugin 'kien/rainbow_parentheses.vim'

autocmd BufEnter *.cljs,*.clj,*.cljs.hl RainbowParenthesesActivate
autocmd BufEnter *.cljs,*.clj,*.cljs.hl RainbowParenthesesLoadRound
autocmd BufEnter *.cljs,*.clj,*.cljs.hl RainbowParenthesesLoadSquare
autocmd BufEnter *.cljs,*.clj,*.cljs.hl RainbowParenthesesLoadBraces

" Is Fireplace connected to the running Clojure repl?
function! IsFireplaceConnected()
  try
    return has_key(fireplace#platform(), 'connection')
  catch /Fireplace: :Connect to a REPL or install classpath.vim/
    return 0 " false
  endtry
endfunction

function! NreplStatusLine()
  if IsFireplaceConnected()
    return 'nREPL Connected'
  else
    return 'No nREPL Connection'
  endif
endfunction

function! SetBasicStatusLine()
  set statusline=%f   " path to file
  set statusline+=\   " separator
  set statusline+=%m  " modified flag
  set statusline+=%=  " switch to right side
  set statusline+=%y  " filetype of file
endfunction

autocmd Filetype clojure call SetBasicStatusLine()
autocmd Filetype clojure set statusline+=\ [%{NreplStatusLine()}]  " REPL connection status
autocmd BufLeave *.cljs,*.clj,*.cljs.hl  call SetBasicStatusLine()


call vundle#end()		" required
filetype plugin indent on 	" required
