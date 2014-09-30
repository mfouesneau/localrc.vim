" Set directory-wise configuration.
" Search from the directory the file is located upwards to the root for
" a local configuration file called .lvimrc and sources it.
"
" The local configuration file is expected to have commands affecting
" only the current buffer.
function! SetLocalOptions(fname)
    let dirname = fnamemodify(a:fname, ":p:h")
    if dirname != $HOME
	let lvimrc  = dirname . "/" . g:lvimrc_name
python << EOF
from __future__ import print_function
import vim
from glob import glob
s = vim.eval("lvimrc")
lst = glob(s)
for k in lst:
    cmd = "source {0:s}".format(k)
    vim.command(cmd)
    print('LocalOptions: ', cmd)
EOF
    endif

endfunction

let g:lvimrc_name = '*.lvimrc'
au BufEnter * call SetLocalOptions(bufname("%"))
