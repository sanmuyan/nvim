#!/bin/bash
git clone https://github.com/sanmuyan/nvim.git \
~/.config/nvim

nvim -u ~/.config/nvim/first_init.lua --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'