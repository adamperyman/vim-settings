set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
" Begin AP Config

" Grep stuff
set ignorecase
set wildignore+=node_modules/**,services/_build/**

set clipboard=unnamed                                           " use regular clipboard
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab     " Spaces is life
set number                                                      " Line numbers
set nofoldenable                                                " Fuck folding

let g:NERDTreeWinPos = "left" " Force LHS NERDTree

" Custom Bindings
nnoremap <F1>  :tabprev<CR>
nnoremap <F2>  :tabnext<CR>
set pastetoggle=<F3>

" Syntastic Defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntassic_always_populate_loc_list = 1
let g:syntassic_auto_loc_list = 1

" Multi-cursor shortcuts
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Eslint Config
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_javascript_checkers = ['eslint']

" JSX specific syntax hilighting
let g:jsx_ext_required = 0

" Always open files in new tabs
autocmd VimEnter * tab all
autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"'

autocmd VimEnter * NERDTree " Open NERDTree on start
