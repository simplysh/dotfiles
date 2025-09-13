call plug#begin()
  Plug 'tpope/vim-surround'
  Plug 'rhysd/git-messenger.vim', { 'on': '<Plug>(git-messenger)' }
  Plug 'mattn/emmet-vim'
  Plug 'prettier/vim-prettier', { 'on': '<Plug>(Prettier)' }
  Plug 'ctrlpvim/ctrlp.vim', { 'on': ['CtrlP', 'CtrlPTag'] }
  Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-entire'
  Plug 'tpope/vim-abolish'
  Plug 'wellle/targets.vim'
  Plug 'tyrannicaltoucan/vim-deep-space'
  Plug 'tpope/vim-repeat'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'simplysh/papaya'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'godlygeek/tabular', { 'on': 'Tab' }
  Plug 'cocopon/inspecthi.vim', { 'on': 'Inspecthi' }
  "Plug 'neoclide/coc.nvim', { 'branch': 'release' } | source ~/.cocrc
call plug#end()

set encoding=utf-8

if has('gui_running')
  autocmd GUIEnter * set vb t_vb=

  set guiligatures=->+-&\|/
  set guioptions-=m "remove menu bar
  set guioptions-=T "remove toolbar
  set guioptions-=L "don't show left-hand-side scrollbar
  set guicursor=a:block-Cursor "use block cursor
  set guicursor+=a:blinkon0 "disable blinking

  if has("gui_gtk2") || has("gui_gtk3")
    set guifont=Geist\ Mono\ 11 linespace=1
    "set guifont=JetBrains\ Mono\ 11
    "set guifont=Inconsolata\ Regular\ 13
  elseif has("gui_macvim")
    set guifont=Geist\ Mono:h14 linespace=1
    "set guifont=JetBrains\ Mono\ NL:h14
  elseif has("gui_win32")
    set guifont=Geist\ Mono:h10 linespace=1
    "set guifont=JetBrains\ Mono:h10
  endif
endif

set background=dark
set termguicolors

try
  let g:tokyonight_style='night'
  let g:tokyonight_enable_italic = 1
  colorscheme tokyonight
  highlight Comment guifg=#676b98 ctermfg=cyan
  highlight ErrorMsg cterm=bold gui=bold
catch
  colorscheme desert
endtry

set shiftwidth=2
set tabstop=2 "tab size
set expandtab "use soft tabs
set autoindent "copy indent from current line for new lines
set backspace=indent,eol,start " what backspace can delete
set complete-=i
set smarttab
set splitbelow
set splitright
set ignorecase "make search case insensitive
set smartcase "override ignorecase if using uppercase
set incsearch "jump to match while typing
set hlsearch "highlight all matches
set spelllang=en_gb " :set spell
set wildmenu
set wildmode=longest:list,full
set number "show line numbers
set formatoptions+=j "remove comment character when joining commented lines
set autoread "reload buffers if modified externally but not in vim
set ruler "show line and col numbers
set wildignore+=**/node_modules/**,**/build/**,**/dist/**,**/coverage/**,**/target/**,*.o,*.d "don't search in here
set autowriteall "write when changing buffer
set makeprg=make\ -s\ run
set updatetime=400 " delay before file is written to disk
set noerrorbells " disable bell sound
set tagcase=match " always match tag case
set completeopt-=preview " don't show preview window for omnicompletion

" file-type specific tab sizes
autocmd Filetype c,cpp setlocal noexpandtab shiftwidth=4 tabstop=4
autocmd BufRead,BufNewFile */fortuna/* setlocal shiftwidth=4 softtabstop=4 expandtab

" disable swap
set noswapfile
set updatecount=0

set list
set listchars=trail:-,nbsp:+,tab:\ \ 

" special way to exit insert mode
inoremap kj <esc>

" insert empty line above or below current line
nnoremap <silent> <c-k> m`O<esc>``
nnoremap <silent> <c-j> m`o<esc>``

" turn one character into '->'
nnoremap <silent> <c-_> r-a><esc>
nnoremap <silent> <c--> r-a><esc>

" insert padded line
nnoremap <silent> <C-Enter> ko<Enter>

" clear highlighting and close various panels
nnoremap <silent> <C-l> :nohl<CR>:pclose<CR>:helpc<CR>:ccl<CR>:call popup_clear()<CR><C-l>

" write when losing focus
autocmd FocusLost * silent! wall

" map plugins
nmap <Leader>p <Plug>(Prettier)
nmap <Leader>gm <Plug>(git-messenger)
nnoremap <silent> <c-p> :CtrlP<CR>
nnoremap <silent> <c-t> :CtrlPTag<CR>
nnoremap <silent> <F5> :wall<CR>:PapayaMake<CR>
nnoremap <silent> <leader><bs> :PapayaOutput<CR>
nnoremap <silent> K :PapayaDoc<CR>

" plugin options
let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 0
let g:prettier#quickfix_auto_focus = 0
let g:prettier#config#single_quote = 'true'
let g:git_messenger_always_into_popup = v:true
let g:ctrlp_switch_buffer = 0

" typos I sometimes make
iabbrev ahve have
iabbrev cosnt const
iabbrev funciton function

" helpful commands to remember
" :let @" = expand("%") " put current file name in unnamed register
" :let @" = expand("%:p") " put current file path in unnamed register
" :let @" = expand("%:t") " put current file name (tail) in unnamed register
" $ vim -u NONE " start vim without loading config
