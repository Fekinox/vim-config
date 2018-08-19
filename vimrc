"
"	vimrc
"

"	SETTINGS

set showcmd
set relativenumber
set ruler
set numberwidth=6
set tabstop=4
set shiftwidth=4
set smarttab
set noshowmode

set listchars=eol:$			" End of line
set listchars+=tab:>-		" Tabs
set listchars+=space:_		" Spaces
set listchars+=trail:~		" Trailing spaces
set listchars+=extends:>	" Right edge
set listchars+=precedes:<	" Left edge

syntax enable
colo monokai

" lightline

let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active': {
	\	'left': [	[ 'mode', 'paste' ],
	\				[ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
	\	'right':[	[ 'lineinfo' ],
	\				[ 'percent' ],
	\				[ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ]	]
	\ },
	\ 'component_function': {
	\	'gitbranch': 'fugitive#head'
	\ },
	\ 'component': {
	\	'charvaluehex': '0x%B'
	\ },
	\ }

" UltiSnips
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["./.vim/UltiSnips"]
let g:UltiSnipsSnippetsDir="./.vim/UltiSnips"
"
"	MAPPINGS 

let mapleader="-"
let maplocalleader="_"

"	Edit vimrc
nnoremap <leader>ev :silent vsplit ~/.vim/vimrc<cr>
"	Reload vimrc
nnoremap <leader>sv :silent source ~/.vim/vimrc<cr>
"	Toggle line numbers
nnoremap <leader>nu :silent set number!<cr>
"	Toggle whitespace visibility
nnoremap <leader>ws :silent set list!<cr>
"	Toggle search highlighting
nnoremap <leader>hl :silent set hlsearch!<cr>
"	Clear current search
nnoremap <leader>cs :silent let @/ = ""<cr>"
"	Set filetype
nnoremap <leader>sf :silent set ft=
"	Select all
nnoremap <c-a>		<esc>ggVG

"	Exit insert/visual mode
inoremap qe <esc>
vnoremap qe <esc>
"	Close all folds
nnoremap <leader><Space> zM
"	Open/close fold
nnoremap <Space> za

"	Save as root
nnoremap ZK :w !sudo tee %<cr>

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
