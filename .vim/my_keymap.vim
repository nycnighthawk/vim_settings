set timeout timeoutlen=550
let mapleader="\\"
inoremap <leader>e <Esc>
inoremap <leader><leader> \
inoremap <C-L> <right>
inoremap <C-H> <left>
inoremap <C-J> <C-O>gj
inoremap <C-K> <C-O>gk
vnoremap <leader>e <Esc>
vnoremap <leader><space> \
vnoremap <leader><leader> \\
tnoremap <leader>e <c-w>N
if !has('nvim')
    if has('mac')
        set macmeta
    endif
endif
nnoremap zh :let &hls=!&hls<CR>

call my_setting#MapToggle('<F11>', 'ignorecase')
set pastetoggle=<F12>

if has('nvim')
    tnoremap <leader>e <c-\><c-n>
    tnoremap <c-w>j <c-\><c-n><c-w>j
    tnoremap <c-w>h <c-\><c-n><c-w>h
    tnoremap <c-w>k <c-\><c-n><c-w>k
    tnoremap <c-w>l <c-\><c-n><c-w>l
    tnoremap <c-w>N <c-\><c-n>
    tnoremap <c-w>"a <c-\><c-n>"api<cr>
    tnoremap <c-w>"b <c-\><c-n>"bpi<cr>
    tnoremap <c-w>"c <c-\><c-n>"cpi<cr>
    tnoremap <c-w>"d <c-\><c-n>"dpi<cr>
    tnoremap <c-w>"e <c-\><c-n>"epi<cr>
    tnoremap <c-w>"f <c-\><c-n>"fpi<cr>
    tnoremap <c-w>"g <c-\><c-n>"gpi<cr>
    tnoremap <c-w>"h <c-\><c-n>"hpi<cr>
    tnoremap <c-w>"i <c-\><c-n>"ipi<cr>
    tnoremap <c-w>"j <c-\><c-n>"jpi<cr>
    tnoremap <c-w>"k <c-\><c-n>"kpi<cr>
    tnoremap <c-w>"l <c-\><c-n>"lpi<cr>
    tnoremap <c-w>"m <c-\><c-n>"mpi<cr>
    tnoremap <c-w>"o <c-\><c-n>"opi<cr>
    tnoremap <c-w>"p <c-\><c-n>"ppi<cr>
    tnoremap <c-w>"q <c-\><c-n>"qpi<cr>
    tnoremap <c-w>"r <c-\><c-n>"rpi<cr>
    tnoremap <c-w>"s <c-\><c-n>"spi<cr>
    tnoremap <c-w>"t <c-\><c-n>"tpi<cr>
    tnoremap <c-w>"u <c-\><c-n>"upi<cr>
    tnoremap <c-w>"v <c-\><c-n>"vpi<cr>
    tnoremap <c-w>"w <c-\><c-n>"wpi<cr>
    tnoremap <c-w>"x <c-\><c-n>"xpi<cr>
    tnoremap <c-w>"y <c-\><c-n>"ypi<cr>
    tnoremap <c-w>"z <c-\><c-n>"zpi<cr>
    tnoremap <c-w>"+ <c-\><c-n>"+pi<cr>
    tnoremap <c-w>"0 <c-\><c-n>"0pi<cr>
    tnoremap <c-w>"1 <c-\><c-n>"1pi<cr>
    tnoremap <c-w>"2 <c-\><c-n>"2pi<cr>
    tnoremap <c-w>"3 <c-\><c-n>"3pi<cr>
    tnoremap <c-w>"4 <c-\><c-n>"4pi<cr>
    tnoremap <c-w>"5 <c-\><c-n>"5pi<cr>
    tnoremap <c-w>"6 <c-\><c-n>"6pi<cr>
    tnoremap <c-w>"7 <c-\><c-n>"7pi<cr>
    tnoremap <c-w>"8 <c-\><c-n>"8pi<cr>
    tnoremap <c-w>"9 <c-\><c-n>"9pi<cr>
endif
