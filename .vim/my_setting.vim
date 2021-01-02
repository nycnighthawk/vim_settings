" setting up custom functions for Coc
function! my_setting#SetCocPythonPath()
python3 << EOF
import os
import sys
import vim
py_executable = 'python'
path_split_char = ':'
if sys.platform.startswith('win'):
    py_executable = 'python.exe'
    path_split_char = ';'

py_interpreter = ''

for path in os.environ['PATH'].split(path_split_char):
    path = path.rstrip(os.sep)
    if os.path.exists(f'{path}{os.sep}{py_executable}'):
        py_interpreter = f'{path}{os.sep}{py_executable}'
        break
if py_interpreter:
    vim.command(f"let g:py_interpreter_path='{py_interpreter}'")
    vim.command("call coc#config('python', {{'pythonPath': '{}'}})".format(py_interpreter))
EOF
endfunction

function! my_setting#SetCocPowerShellExe()
python3 << EOF
import os
import sys
import vim

ps_core_executable = 'pwsh'
ps_executable = 'pwsh'
path_split_char = ':'

if sys.platform.startswith('win'):
    ps_core_executable = 'pwsh.exe'
    ps_executable = 'powershell.exe'
    path_split_char = ';'

ps_selected = os.environ.get('psinfo', None)

if ps_selected is None:
    for path in os.environ['PATH'].split(path_split_char):
        path = path.rstrip(os.sep)
        ps_executable_with_path = f'{path}{os.sep}{ps_core_executable}'
        if os.path.exists(ps_executable_with_path):
            ps_selected = ps_executable_with_path
            break
        if ps_core_executable == ps_executable:
            continue
        ps_executable_with_path = f'{path}{os.sep}{ps_executable}'
        if os.path.exists(ps_executable_with_path):
            ps_selected = ps_executable_with_path
            break
if ps_selected:
    vim.command("let g:ps_executable_path='{}'".format(ps_selected))
    vim.command("call coc#config('powershell', {{'powerShellExePath': '{}'}})".format(ps_selected))
EOF
endfunction

function! my_setting#MyHighlights() abort
    hi Search term=reverse ctermfg=0 ctermbg=14 guifg=#000000 guibg=#f1dd38
endfunction

function! my_setting#MapToggle(key, opt)
    let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
    exec 'nnoremap '.a:key.' '.cmd
    exec 'inoremap '.a:key." \<C-O>".cmd
endfunction


let g:utisnips_python_style='google'

"if exists('+termguicolors')
"    "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"    "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"    set termguicolors
"endif
"
"if !has('nvim')
"    if exists('+termguicolors')
"        "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"        "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"        set termguicolors
"    endif
"else
"    set termguicolors
"endif
