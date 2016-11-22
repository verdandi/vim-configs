"===============================================================
"настройка менеджера палгинов Bundle
"===============================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"настройка плагинов
"Репозитории vim-scripts
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/SirVer/ultisnips'
Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/scrooloose/nerdcommenter'
Plugin 'https://github.com/bling/vim-airline'
Plugin 'taglist.vim'
Plugin 'https://github.com/altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on
"===============================================================

"===============================================================
"пользовательские настройки vim
"===============================================================
set syntax
set nocompatible "несовместимость с vi
set number "номер строчки слева
set expandtab
set tabstop=4 "количество пробелов для табуляции
set shiftwidth=4 "Количество пробелов на которое изменяется ширина отступа, при использовании команд изменения отступа << и >>
set softtabstop=4 "количество пробелов добавляемое при нажатии tab
set backspace=indent,eol,start whichwrap+=<,>,[,] "функции клавиши backspace
set foldenable "сворачивание текста
set foldmethod=syntax "сворачивать по синтаксису
set foldnestmax=1
set smartindent "умные отступы
set cin "отступы в стиле С
syntax enable
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=16
let g:solarized_contrast="high"
let g:solarized_visibility="normal"
colorscheme solarized
set encoding=utf-8 "кодировка файла
set list "включение показа непечатаемых символов
set listchars=tab:\ \ ,trail:· "настраиваем чем конкретно показывать эти самые непечатаемые символы;)
set showmatch
set hlsearch
set incsearch
set ignorecase
set guioptions-=T "убрать тулбар в gvim
set guioptions-=m "убрать меню в gvim
set guifont=Droid\ Sans\ Mono\ 11 "шрифт
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
"===============================================================

"===============================================================
"Настройка горячих клавиш
"===============================================================

"отключение клавиш стрелок
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>

"сохранить изменения в текущем окне
imap <F3> <Esc>:w<CR>
nmap <F3> :w<CR>
noremap <Right> <NOP>

"выйти
imap <F4> <Esc>:q<CR>
nmap <F4> :q<CR>

"сборка с сохранением
imap <F5> <Esc>:wa<CR>:make<CR> 
nmap <F5> :wa<CR>:make<CR>

"сборка тестов
imap <S-F5> <Esc>:wa<CR>:make tests<CR>
nmap <S-F5> :wa<CR>:make tests<CR>

"открыть окно результатов компиляции
imap <F6> <Esc>:copen<CR>
nmap <F6> :copen<CR>

"следующая ошибка
imap <C-F6> <Esc>:cn<CR>i
nmap <C-F6> :cn<CR>

"предыдущая ошибка
imap <S-F6> <Esc>:cp<CR>i
nmap <S-F6> :cp<CR>

"перейти в следующую вкладку
imap <Tab> <Esc>:tabn<CR>
nmap <Tab> :tabn<CR>

"перейти на предыдущую вкладку
imap <S-Tab> <Esc>:tabp<CR>
nmap <S-Tab> :tabp<CR>

"включение/выключение tagbar
nnoremap <silent> <F9> :TlistToggle<CR>

"показываем окно NERDTree в случае если не открыто ни одного файла
autocmd vimenter * if !argc() | NERDTree /home/verdandi/ | endif
nnoremap <silent> <F8> :NERDTreeToggle /home/verdandi/<CR>

"автокоментарий
map <silent> <C-_> <Plug>NERDCommenterToggle

"Выйти без сохранения (не работает)
imap <C-S-F4> <Esc>:q!<CR>
nmap <C-S-F4> :q!<CR>

"Закрыть текущий буфер
imap <S-F4> <Esc>:bd<CR>
nmap <S-F4> :bd<CR>
"===============================================================

"===============================================================
"Настройка плагина Ultisnip
"===============================================================
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/UltiSnips/"
let g:UltiSnipsSnippetDirectories = ["UltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"===============================================================

"===============================================================
"Настройка YouCompleteMe
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
"Настройка vim-airline
"===============================================================
let g:airline_theme='dark'
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1

"===============================================================
"Настройка NERDtree
"===============================================================
let g:NERDTreeHijackNetrw=1
