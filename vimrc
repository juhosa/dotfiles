call pathogen#infect()
set number
set encoding=utf-8
syntax on
filetype plugin indent on
inoremap jk <ESC>
let mapleader = "\<Space>"

map <C-n> :NERDTreeToggle<CR>

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" " `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" " or
" " `s{char}{char}{label}`
" " Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)
"
" " Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
"
" " JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

set background=dark
colorscheme solarized

" let g:used_javascript_libs = 'jquery,underscore,react,vue'
let g:NumberToggleTrigger=""

au FileType vue setlocal ts=2 sw=2 sts=2
au FileType javascript setlocal ts=2 sw=2 sts=2
au FileType html setlocal ts=2 sw=2 sts=2
au FileType stylus setlocal ts=2 sw=2 sts=2
au FileType pug setlocal ts=2 sw=2 sts=2
au FileType css setlocal ts=2 sw=2 sts=2
au FileType vue.html.javascript.css setlocal ts=2 sw=2 sts=2
