
syntax on
set nocompatible
set number relativenumber
set mouse=a
set tabstop=4
set wrap
set encoding=utf-8
set ruler

" Improves smoothness of redrawing with multiple windows 
set ttyfast

" Blink cursor on error instead of beeping (grr)
set visualbell

" Clears search highlighting
nnoremap <CR> :noh<CR><CR>

" Use ctrl+(hjkl) to move between split panes
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

" Function to stop overriding remap
augroup netrw_mapping
	autocmd!
	autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
	nnoremap <buffer> <C-l> :wincmd l<cr>
endfunction
