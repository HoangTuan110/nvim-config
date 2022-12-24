call plug#begin()
Plug 'sheerun/vim-polyglot' " Support more languages
Plug 'wadackel/vim-dogrun' " Colorscheme
Plug 'itchyny/lightline.vim' " Status bar
Plug 'junegunn/fzf' " Fuzzy finder
Plug 'junegunn/fzf.vim' " A part of fzf
Plug 'jiangmiao/auto-pairs' " Auto pair
Plug 'mattn/emmet-vim' " Emmet for Vim
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'mhinz/vim-startify' " Start screen
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code completion
Plug 'w0rp/ale' " Lint engine
Plug 'mhinz/vim-signify' " Show the diff
Plug 'jeffkreeftmeijer/vim-numbertoggle' " Better line number
" Plug 'github/copilot.vim' " GitHub Copilot
" Plug 'rust-lang/rust.vim' " Rust support
" Plug 'ziglang/zig.vim' " Zig support
call plug#end()

" Syntax enabled
syntax enable
filetype plugin indent on

" Some sets
set number
set noshowmode
set updatetime=100
set expandtab
set tabstop=2
set	clipboard=unnamedplus
" set undofile
" set undodir=~/.config/nvim/undodir

" Set colorscheme
colo dogrun

" Set keymap
nmap <F2> :Files<CR>
nmap <F3> :Filetypes<CR>

nmap <S-N> :tabn <CR>
nmap <S-P> :tabp <CR>
nmap <S-E> :tabe <CR>

" Set colorscheme for the bar
let g:lightline = {
			\ 'colorscheme': 'dogrun',
			\ 'active': {
			\		'left': [ [ 'mode', 'paste' ],
			\							[ 'gitbranch' ],
			\							[ 'readonly', 'filename', 'modified', 'charvaluehex', 'charvalue' ] ],
			\ },
			\ 'mode_map': {
				\ 'n' : 'N',
        \ 'i' : 'I',
        \ 'R' : 'R',
        \ 'v' : 'V',
        \ 'V' : 'VL',
        \ "\<C-v>": 'VB',
        \ 'c' : 'C',
        \ 's' : 'S',
        \ 'S' : 'SL',
        \ "\<C-s>": 'SB',
        \ 't': 'T',
      \ },
			\ 'component': {
			\   'lineinfo': ' %3l:%-2v',
			\		'charvaluehex': '0x%B',
			\   'charvalue': '%b',
			\ },
			\ 'component_function': {
			\   'readonly': 'LightlineReadonly',
		  \   'fugitive': 'LightlineFugitive',
			\		'gitbranch': 'FugitiveHead',
			\ },
			\ 'separator': { 'left': '', 'right': '' },
			\ 'subseparator': { 'left': '', 'right': '' },
			\ }

" Some function for Lightline
function! LightlineReadonly()
		return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
	if exists('*fugitive#head')
		let branch = fugitive#head()
		return branch !=# '' ? ''.branch : ''
	endif
		return ''
endfunction

" Customize Startify
let g:startify_files_number = 5
let g:startify_skiplist = [
	\ "\.config/*",
	\ "\.zshrc",
	\ ]
let g:ascii_art = [
	\ '    ___     ___  hi  ',
	\ '   (o o)   (o o)     ',
	\ '  (  V  ) (  V  )    ',
	\ ' /--m-m- /--m-m-     ',
	\ ]
let g:startify_custom_header =
	\ startify#center(g:ascii_art + startify#fortune#boxed())

" Trigger configuration for UltiSnip
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-B>"
let g:UltiSnipsJumpBackwardTrigger="<C-Z>"
