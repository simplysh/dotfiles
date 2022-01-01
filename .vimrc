call plug#begin()
  Plug 'chriskempson/base16-vim'
  Plug 'tpope/vim-surround'
  "Plug 'airblade/vim-gitgutter'
  Plug 'rhysd/git-messenger.vim', { 'on': '<Plug>(git-messenger)' }
  Plug 'mattn/emmet-vim'
  Plug 'prettier/vim-prettier', { 'on': '<Plug>(Prettier)' }
call plug#end()

if has('gui_running')
  set guioptions-=m "remove menu bar
  set guioptions-=T "remove toolbar
  set guicursor=a:block-Cursor "use block cursor
  set guicursor+=a:blinkon0 "disable blinking

  if has("gui_gtk2") || has("gui_gtk3")
    set guifont=JetBrains\ Mono\ 10
  elseif has("gui_macvim")
    set guifont=JetBrains\ Mono\ NL:h14
  elseif has("gui_win32")
    set guifont=JetBrains\ Mono:h12
  endif
endif

set background=dark
"colorscheme base16-3024
"colorscheme base16-apathy
"colorscheme base16-ashes
"colorscheme base16-atelier-cave-light
"colorscheme base16-atelier-cave
"colorscheme base16-atelier-dune-light
"colorscheme base16-atelier-dune
"colorscheme base16-atelier-estuary-light
"colorscheme base16-atelier-estuary
"colorscheme base16-atelier-forest-light
"colorscheme base16-atelier-forest
"colorscheme base16-atelier-heath-light
"colorscheme base16-atelier-heath
"colorscheme base16-atelier-lakeside-light
"colorscheme base16-atelier-lakeside
"colorscheme base16-atelier-plateau-light
"colorscheme base16-atelier-plateau
"colorscheme base16-atelier-savanna-light
"colorscheme base16-atelier-savanna
"colorscheme base16-atelier-seaside-light
"colorscheme base16-atelier-seaside
"colorscheme base16-atelier-sulphurpool-light
"colorscheme base16-atelier-sulphurpool
"colorscheme base16-atlas
"colorscheme base16-bespin
"colorscheme base16-black-metal-bathory
"colorscheme base16-black-metal-burzum
"colorscheme base16-black-metal-dark-funeral
"colorscheme base16-black-metal-gorgoroth
"colorscheme base16-black-metal-immortal
"colorscheme base16-black-metal-khold
"colorscheme base16-black-metal-marduk
"colorscheme base16-black-metal-mayhem
"colorscheme base16-black-metal-nile
"colorscheme base16-black-metal-venom
"colorscheme base16-black-metal
"colorscheme base16-brewer
"colorscheme base16-bright
"colorscheme base16-brogrammer
"colorscheme base16-brushtrees-dark
"colorscheme base16-brushtrees
"colorscheme base16-chalk
"colorscheme base16-circus
"colorscheme base16-classic-dark
"colorscheme base16-classic-light
"colorscheme base16-codeschool
"colorscheme base16-cupcake
"colorscheme base16-cupertino
"colorscheme base16-darktooth
"colorscheme base16-default-dark
"colorscheme base16-default-light
"colorscheme base16-dracula
"colorscheme base16-eighties
"colorscheme base16-embers
"colorscheme base16-flat
"colorscheme base16-fruit-soda
"colorscheme base16-github
"colorscheme base16-google-dark
"colorscheme base16-google-light
"colorscheme base16-grayscale-dark
"colorscheme base16-grayscale-light
"colorscheme base16-greenscreen
"colorscheme base16-gruvbox-dark-hard
"colorscheme base16-gruvbox-dark-medium
"colorscheme base16-gruvbox-dark-pale
"colorscheme base16-gruvbox-dark-soft
"colorscheme base16-gruvbox-light-hard
"colorscheme base16-gruvbox-light-medium
"colorscheme base16-gruvbox-light-soft
"colorscheme base16-harmonic-dark
"colorscheme base16-harmonic-light
"colorscheme base16-heetch-light
"colorscheme base16-heetch
"colorscheme base16-helios
"colorscheme base16-hopscotch
"colorscheme base16-horizon-dark
"colorscheme base16-ia-dark
"colorscheme base16-ia-light
"colorscheme base16-icy
"colorscheme base16-irblack
"colorscheme base16-isotope
"colorscheme base16-macintosh
"colorscheme base16-marrakesh
"colorscheme base16-materia
"colorscheme base16-material-darker
"colorscheme base16-material-lighter
"colorscheme base16-material-palenight
"colorscheme base16-material-vivid
"colorscheme base16-material
"colorscheme base16-mellow-purple
"colorscheme base16-mexico-light
"colorscheme base16-mocha
"colorscheme base16-monokai
"colorscheme base16-nord
"colorscheme base16-ocean
"colorscheme base16-oceanicnext
"colorscheme base16-one-light
"colorscheme base16-onedark
"colorscheme base16-outrun-dark
"colorscheme base16-papercolor-dark
"colorscheme base16-papercolor-light
"colorscheme base16-paraiso
"colorscheme base16-phd
"colorscheme base16-pico
"colorscheme base16-pop
"colorscheme base16-porple
"colorscheme base16-railscasts
colorscheme base16-rebecca
"colorscheme base16-seti
"colorscheme base16-shapeshifter
"colorscheme base16-snazzy
"colorscheme base16-solarflare
"colorscheme base16-solarized-dark
"colorscheme base16-solarized-light
"colorscheme base16-spacemacs
"colorscheme base16-summerfruit-dark
"colorscheme base16-summerfruit-light
"colorscheme base16-synth-midnight-dark
"colorscheme base16-tomorrow-night-eighties
"colorscheme base16-tomorrow-night
"colorscheme base16-tomorrow
"colorscheme base16-tube
"colorscheme base16-twilight
"colorscheme base16-unikitty-dark
"colorscheme base16-unikitty-light
"colorscheme base16-woodland
"colorscheme base16-xcode-dusk
"colorscheme base16-zenburn

set shiftwidth=2
set tabstop=2 "tab size
set expandtab "use soft tabs
set autoindent "oare?
set splitbelow
set splitright
set ignorecase "make search case insensitive
set smartcase "override ignorecase if using uppercase
set incsearch "jump to match while typing
set hlsearch "highlight all matches
set backspace=indent,eol,start "backspace can delete
set spelllang=en_gb " :set spell
set wildmenu
set wildmode=longest:list,full
set number " show line numbers

" disable swap
set noswapfile
set updatecount=0

set list
set listchars=trail:-

" special way to exit insert mode
inoremap kj <esc>

" insert empty line above or below current line
nnoremap <c-k> m`O<esc>``
nnoremap <c-j> m`o<esc>``

" insert padded line
nnoremap <C-Enter> O<Enter>

" clear highlighting and close various panels
nnoremap <silent> <C-l> :nohl<CR>:pclose<CR>:helpc<CR><C-l>

" map lazy loaded plugins
nmap <Leader>p <Plug>(Prettier)
nmap <Leader>gm <Plug>(git-messenger)

let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 0
let g:prettier#quickfix_auto_focus = 0

" typos I sometimes make
iabbrev ahve have
iabbrev cosnt const

" helpful commands to remember
" :let @" = expand("%") " put current file name in unnamed register
" :let @" = expand("%:p") " put current file path in unnamed register
" :let @" = expand("%:t") " put current file name (tail) in unnamed register
" $ vim -u NONE " start vim without loading config

