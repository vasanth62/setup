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

"filetype plugin indent on

"map <C-K> :py3f /home/vkumar/clang-format-tools/clang-format.py<cr>
"imap <C-K> <c-o>:py3f /home/vkumar/clang-format-tools/clang-format.py<cr>

"Get the function
"map [[ ?^\h<CR>
"map ]] /^\h<CR>

execute pathogen#infect()

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
call plug#end()


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

function! GFM()
  let langs = ['ruby', 'yaml', 'vim', 'c']

  for lang in langs
    unlet b:current_syntax
    silent! exec printf("syntax include @%s syntax/%s.vim", lang, lang)
    exec printf("syntax region %sSnip matchgroup=Snip start='```%s' end='```' contains=@%s",
                \ lang, lang, lang)
  endfor
  let b:current_syntax='mkd'

  syntax sync fromstart
endfunction

if !exists('g:easy_align_delimiters')
  let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }
let g:easy_align_delimiters['d'] = {
\ 'pattern': ' \ze\S\+\s*[;=]',
\ 'left_margin': 0, 'right_margin': 0
\ }
let g:easy_align_delimiters['c'] = { 'pattern': '//',
            \ 'filter': 'v/^\/\//',
            \'ignore_groups': ['String'], 
            \ 'left_margin': 4, 'right_margin':1 }


" Remove whitespaces automatically while saving the file
" autocmd FileType c,cpp,java,php,cc,hpp,proto autocmd BufWritePre <buffer> %s/\s\+$//e
:nnoremap <silent> <F4> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Syntastic stuff below
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_loc_list_height=1
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0 
" let g:syntastic_check_on_wq = 0 

" let g:syntastic_cpp_checkers=['cppcheck']
"
" let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':[],'passive_filetypes': [] }
" nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
"
