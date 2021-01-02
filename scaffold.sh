#!/bin/bash
script_name="${0##*/}"
if [ $# -eq 1 ]
then
    base_dir="${1}"
elif [ $# -eq 0 ]
then
    base_dir="${HOME}"
else
    echo "${script_name}: unexpected arguments"
    echo "usage: ${script_name} [dir]"
    echo "    dir     directory to get the vim setting files"
fi
if [ ! -d ${base_dir} ]
then
    mkdir ${base_dir}
fi
cd ${base_dir}
mkdir -p .vim
cd .vim
/usr/bin/curl -fLo autoload/plug.vim \
    --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
CURL="/usr/bin/curl"
if [ -f "/bin/curl" ]
then
    CURL="/bin/curl"
fi
for file_name in $(echo "vimrc my_keymap.vim my_setting.vim my_utilsnips.vim")
do
    ${CURL} -fLo ${file_name} \
        https://raw.githubusercontent.com/nycnighthawk/vim_settings/master/.vim/${file_name}
done
vim +PlugUpdate +PlugUpgrade +qall
