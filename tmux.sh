#!/bin/bash

###curl MY tmux conf on guthub into ~/.tmux.conf

mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/tmux-resurrect

cp rcs/tmux.conf ~/.tmux.conf

tmux source ~/.tmux.conf
