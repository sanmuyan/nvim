#!/bin/bash
# 下载 Packer
packer_data_path="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
if [ ! -d $packer_data_path ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim $packer_data_path
  echo "Packer installed"
fi

# 同步插件
nvim --cmd 'let g:no_plugins_config = 1' --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
echo "Plugins synchronized"
