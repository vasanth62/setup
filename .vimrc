set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set pastetoggle=<F10>
nnoremap <C-e> :update<CR>
cnoremap <C-e> <Esc>:update<CR>
inoremap <C-e> <Esc>:update<CR>a
syntax enable
"hi Comment ctermfg=darkcyan
set backspace=2

set hlsearch
set incsearch
"set ignorecase

set showcmd


set icon
set title

"set background=light
"colorscheme solarized
"highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17


set colorcolumn=80

map <F5> :!cscope -b<CR>:cs reset<CR><CR><CR>

"Mouse support
set ttyfast
set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

"Disable the beep sound
set vb

filetype plugin indent on

"map <C-K> :py3f /home/vkumar/clang-format-tools/clang-format.py<cr>
"imap <C-K> <c-o>:py3f /home/vkumar/clang-format-tools/clang-format.py<cr>

"Get the function
"map [[ ?^\h<CR>
"map ]] /^\h<CR>
