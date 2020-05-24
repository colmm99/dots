#!/bin/bash

#curl MY tmux conf on guthub into ~/.tmux.conf

if [ ! ~/.tmux/plugins ];then
    mkdir -p ~/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/tmux-resurrect
fi

cp rcs/tmux.conf ~/.tmux.conf

cp -v rcs/tmux.conf ~/.tmux.conf

tmux source ~/.tmux.conf
