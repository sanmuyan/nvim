#!/bin/bash
# 下载 Packer
packer_data_path="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
if [ ! -d $packer_data_path ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim $packer_data_path
fi

# 同步插件
nvim --cmd 'let g:no_plugins_config = 1' -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
