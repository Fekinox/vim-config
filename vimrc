"
"	vimrc
"

"	SETTINGS

set showcmd
set number
set ruler
set numberwidth=6
set tabstop=4
set shiftwidth=4
set smarttab

set listchars=eol:$			" End of line
set listchars+=tab:>-		" Tabs
set listchars+=space:_		" Spaces
set listchars+=trail:~		" Trailing spaces
set listchars+=extends:>	" Right edge
set listchars+=precedes:<	" Left edge

syntax enable
colorscheme monokai

" lightline

"let g:lightline = {
"	\ 'colorscheme': 'one',
"	\ 'active': {
"	\	'left': [	[ 'mode', 'paste' ],
"					
"	\ }

" UltiSnips
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories="/home/feki/.vim/UltiSnips"
"
"	MAPPINGS 

let mapleader="-"
let maplocalleader="_"

"	Edit vimrc
nnoremap <leader>ev :silent vsplit $MYVIMRC<cr>
"	Reload vimrc
nnoremap <leader>sv :silent w<cr>:silent source $MYVIMRC<cr>
"	Toggle line numbers
nnoremap <leader>nu :silent set number!<cr>
"	Toggle whitespace visibility
nnoremap <leader>ws :silent set list!<cr>
"	Toggle search highlighting
nnoremap <leader>hl :silent set hlsearch!<cr>
"	Clear current search
nnoremap <leader>cs :silent let @/ = ""<cr>"

"	Exit insert/visual mode
inoremap qe <esc>
vnoremap qe <esc>
inoremap <esc> <nop>
vnoremap <esc> <nop>
"	Close all folds
nnoremap <leader><Space> zM
"	Open/close fold
nnoremap <Space> za

"	Wrap selection
vnoremap <leader>" xa"<esc>pa"<esc>
vnoremap <leader>' xa'<esc>pa'<esc>
vnoremap <leader>( xa(<esc>pa)<esc>
vnoremap <leader>[ xa[<esc>pa]<esc>
vnoremap <leader>{ xa{<esc>pa}<esc>

onoremap p i(
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>

onoremap an( :<c-u>normal! f(va(<cr>
onoremap al( :<c-u>normal! F)va(<cr>

" something in (parentheses) is written.

"
"	ABBREVIATIONS

"	some abbreviations...

"
"	AUTOCOMMANDS

"	Persistent folds
augroup AutoSaveFolds
	autocmd!
	autocmd BufWinLeave * silent! mkview
	autocmd BufWinEnter * silent! loadview
augroup END

"	Haskell settings
augroup HaskellFiles
	autocmd!
	autocmd FileType haskell expandtab
augroup END
"
"	OTHER

"
