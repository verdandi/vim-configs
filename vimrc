"===============================================================
"configuration of plugin manager Bundle
"===============================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" plugins
" repositories vim-scripts
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'https://github.com/w0rp/ale'
Plugin 'https://github.com/scrooloose/nerdtree'

"Plugin 'https://github.com/tpope/vim-surround' - it maybe useful, need to study

Plugin 'https://github.com/scrooloose/nerdcommenter'
Plugin 'https://github.com/vim-airline/vim-airline'
Plugin 'https://github.com/vim-airline/vim-airline-themes'
Plugin 'https://github.com/octol/vim-cpp-enhanced-highlight'

"Plugin 'https://github.com/vim-scripts/DfrankUtil' - it maybe useful, need to study
"Plugin 'https://github.com/vim-scripts/vimprj' - it maybe useful, need to study
"Plugin 'https://github.com/vim-scripts/indexer.tar.gz' - it maybe useful, need to study

Plugin 'https://github.com/SirVer/ultisnips'

"Plugin 'https://github.com/easymotion/vim-easymotion' - it maybe useful, need to study
"Plugin 'taglist.vim' - it maybe useful, need to study

"Plugin 'https://github.com/vim-scripts/a.vim' - it maybe useful, need to study

Plugin 'https://github.com/altercation/vim-colors-solarized'

Plugin 'https://github.com/nanotech/jellybeans.vim'
Plugin 'https://github.com/chriskempson/base16-vim'
Plugin 'https://github.com/morhetz/gruvbox'
Plugin 'https://github.com/w0ng/vim-hybrid'
Plugin 'https://github.com/tpope/vim-vividchalk'
Plugin 'https://github.com/lokaltog/vim-distinguished'

"Plugin 'tikhomirov/vim-glsl' - it maybe useful, need to study

call vundle#end()
filetype plugin indent on
"===============================================================

"===============================================================
" user settings of vim
"===============================================================
set syntax
set nocompatible "incopatibility with vi
set number " line number from left
set expandtab
set tabstop=4 " number of spaces in one tab symbol
set shiftwidth=4 " number of spaces which will be insert in case of using commands << and >>
set softtabstop=4 " number of spaces which will be insert after pressing tab key
set backspace=indent,eol,start whichwrap+=<,>,[,] " functions of key backspace
set foldenable " text folding
set foldmethod=syntax " use folding by syntax
set foldnestmax=1 " TODO add comment
set smartindent " smart intends
set cin " expands in C-style
syntax enable

set background=dark
"let g:solarized_termtrans=1
"let g:solarized_termcolors=16
"let g:solarized_contrast="high"
"let g:solarized_visibility="normal"
"colorscheme solarized

colorscheme hybrid
set t_Co=256 " enable 256bit colors - also: override gnome-terminal's settings

set encoding=utf-8 " file encoding
set list " show unprintable symbols
set listchars=tab:\ \ ,trail:· " how unvisible symbols should be show
set showmatch " TODO add comment
set hlsearch " TODO add comment
set incsearch " TODO add comment
set ignorecase " TODO add comment
set guioptions-=T " hide tool bar in gvim
set guioptions-=m " hide menu in gvim
set guifont=Droid\ Sans\ Mono\ 14 " font
set keymap=russian-jcukenwin " TODO add comment
set iminsert=0 " TODO add comment
set imsearch=0 " TODO add comment
highlight lCursor guifg=NONE guibg=Cyan " TODO add comment
"===============================================================

"===============================================================
" hot keys
"===============================================================

" turn off arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>

" save changes in current window
imap <F3> <Esc>:w<CR>
nmap <F3> :w<CR>
noremap <Right> <NOP>

" quit
imap <F4> <Esc>:q<CR>
nmap <F4> :q<CR>

" build with saving all changes before
imap <F5> <Esc>:wa<CR>:make<CR>
nmap <F5> :wa<CR>:make<CR>

" build tests (turned off)
"imap <S-F5> <Esc>:wa<CR>:make tests<CR>
"nmap <S-F5> :wa<CR>:make tests<CR>

" open the compilation result (turned off)
"imap <F6> <Esc>:copen<CR>
"nmap <F6> :copen<CR>

" next compilation error (turned off)
"imap <C-F6> <Esc>:cn<CR>
"nmap <C-F6> :cn<CR>

" previous compilation error (turned off)
"imap <S-F6> <Esc>:cp<CR>i
"nmap <S-F6> :cp<CR>

" go to the next tab
imap <Tab> <Esc>:tabn<CR>
nmap <Tab> :tabn<CR>

" go to the previous tab
imap <S-Tab> <Esc>:tabp<CR>
nmap <S-Tab> :tabp<CR>

"turn on/off tagbar  (turned off)
"nnoremap <silent> <F9> :TlistToggle<CR>

" show the NERDTree in case if no one file opened (turned off)
"autocmd vimenter * if !argc() | NERDTree /home/verdandi/ | endif
"nnoremap <silent> <F8> :NERDTreeToggle /home/verdandi/<CR>

" auto comment
map <silent> <C-_> <Plug>NERDCommenterToggle

" quit without save (doesn't work)
"imap <C-S-F4> <Esc>:q!<CR>
"nmap <C-S-F4> :q!<CR>

"close current buffer (need to study, turned off)
"imap <S-F4> <Esc>:bd<CR>
"nmap <S-F4> :bd<CR>
"===============================================================

"===============================================================
" Ultisnip configuration
"===============================================================
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/UltiSnips/"
let g:UltiSnipsSnippetDirectories = ["UltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"===============================================================

"===============================================================
" YouCompleteMe configuration
"===============================================================
"let g:ycm_global_ycm_extra_conf = '/home/verdandi/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_confgloblist = 1
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_cache_omnifunc = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_highlighting=0
let g:syntastic_auto_loc_list=1

"===============================================================
" vim-airline configuration
"===============================================================
"let g:airline_theme='dark'
"let g:airline_enable_syntastic=1
"let g:airline_enable_bufferline=1

if !exists('g:airline_symbols')
    let g:airline_symbols= {}
endif

" unicode symbols
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_powerline_fonts = 1

"===============================================================
" NERDtree configuration
"===============================================================
let g:NERDTreeHijackNetrw=1
