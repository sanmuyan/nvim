#!/bin/bash
# 下载 Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# 同步插件
nvim -u ~/.config/nvim/first_init.lua --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'