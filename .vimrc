" Begin AP Config

" Custom Bindings
nnoremap <F1>  :tabprev<CR>
nnoremap <F2>  :tabnext<CR>
noremap <leader>bq :bufdo q<CR>                                 " Easy quit (safe)
set pastetoggle=<F3>

" Misc settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab     " Spaces is life
set number                                                      " Line numbers
set clipboard=unnamedplus                                       " Use system clipboard
autocmd FileType * normal zR                                    " Always open files unfolded

" Open CtrlP results in new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

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

" Syntastic Settings
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
