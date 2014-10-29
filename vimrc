set nocp
au BufNewFile,BufRead *.cpp set syntax=cpp11
filetype plugin on
map <C-m> :w<CR> :silent !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> :redraw!<CR>
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set t_Co=32
syntax enable
colorscheme Mustang_Vim_Colorscheme_by_hcalves
highlight Pmenu ctermbg=238 gui=bold
highlight PmenuSel ctermfg=0 gui=bold
highlight PmenuSel ctermbg=148 gui=bold
set number
filetype indent on
set tabstop=3
set shiftwidth=3
filetype plugin on
set completeopt+=longest
set hidden
set switchbuf=useopen,usetab
:nnoremap <C-j> :sbp<CR>
:nnoremap <C-k> :sbn<CR>
:nnoremap <C-f> :call SmoothPageScrollDown()<CR>
:nnoremap <C-b> :call SmoothPageScrollUp()<CR>
:nnoremap <C-l> :setlocal spell spelllang=en_us<CR>
command! -nargs=1 G :execute "!grep -nr " . <f-args> . " *.h *.cpp"
