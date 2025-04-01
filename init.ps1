# 下载 Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim `
~\AppData\Local\nvim\site\pack\packer\start\packer.nvim

# 同步插件
nvim -u ~\AppData\Local\nvim\first_init.lua --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'