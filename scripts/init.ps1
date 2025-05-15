# 下载 Packer
$packer_data_path = "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim" 
if (-Not (Test-Path $packer_data_path)) {
    git clone --depth 1 https://github.com/wbthomason/packer.nvim $packer_data_path
    Write-Host "Packer installed"
}

# 同步插件
nvim --cmd "let g:no_plugins_config = 1" --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
Write-Host "Plugins synchronized"