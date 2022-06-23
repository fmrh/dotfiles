" Replace ESC with Control + C
nnoremap <C-c> <ESC>

" Alternative saving and quitting
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-Q> :wq!<CR>

" Better tab functionality
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
vnoremap < <gv
vnoremap > >gv

" Navigating windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resizing windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>
