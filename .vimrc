" Begin AP Config

" Custom Bindings
nnoremap <F1>  :tabprev<CR>
nnoremap <F2>  :tabnext<CR>
set pastetoggle=<F3>

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

" Misc settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab     " Spaces is life
set number                                                      " Line numbers
set nofoldenable                                                " Fuck folding

" Auto trim whitespace but still be safe when wrapping.
autocmd BufWritePre * %s/\s\+$//e
set wrap
set linebreak
set showbreak=>\ \ \
