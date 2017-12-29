" Begin AP Config

" Custom Bindings
set pastetoggle=<F3>
nnoremap <F1>  :tabprev<CR>
nnoremap <F2>  :tabnext<CR>
nnoremap <leader>bq :bufdo q<CR>                                 " Easy quit (safe)

" Ctrl-P Settings
set wildignore+=*/build/*,*.zip
let g:ctrlp_show_hidden=1
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

" Misc Settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab     " Spaces is life
set number                                                      " Line numbers
set clipboard=unnamedplus                                       " Use system clipboard
autocmd FileType * normal zR                                    " Always open files unfolded

" NERD Tree stuff
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"

" Open NERDTree if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Auto trim whitespace but still be safe when wrapping.
autocmd BufWritePre * %s/\s\+$//e
set wrap
set linebreak
set showbreak=>\ \ \

" Syntastic Settings (assumes local ESLint)
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_generic = 1
let g:syntastic_javascript_eslint_exec = '/bin/ls'
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
let g:syntastic_javascript_eslint_args='-f compact'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
