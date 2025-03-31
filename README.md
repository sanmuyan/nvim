# NVIM 配置

## 初始化

### 下载配置

> Linux

```shell
git clone https://github.com/sanmuyan/nvim.git \
~/.config/nvim
```

> Windows pwsh

```pwsh
git clone https://github.com/sanmuyan/nvim.git `
~\AppData\Local\nvim
```

### 插件管理

> Linux

```shell
# 下载 Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# 同步插件
nvim -u ~/.config/nvim/first_init.lua --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

> Windows pwsh

```pwsh
# 下载 Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim `
~\AppData\Local\nvim\site\pack\packer\start\packer.nvim

# 同步插件
nvim -u ~\AppData\Local\nvim\first_init.lua --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

## 常用快捷键

`leader`=空格键

### 编辑

- `i`插入模式
- `o` 在下一行插入模式
- `v` 可视模式可以选中多行
- `dd` 剪切行
- `y` 复制行
- `p` 粘贴
- `u` 撤销
- `C+r` 重做
- `dw` 删除光标所在单词
- `C+u` 把单词转为大写
- `C+l` 把单词转为小写
- `gcc` 注释当前行
- `gc` 多行注释（可视模式）

### 文件树

- `A+m` 打开文件树
- `H` 显示隐藏文件
- `d` 删除文件
- `D` 删除目录
- `r` 重命名文件
- `c` 复制文件
- `p` 粘贴文件

### 窗口

- `sv` 创建垂直分割窗口
- `sh` 创建水平分割窗口
- `sc` 关闭当前窗口
- `so` 关闭其他窗口
- `<leader>h` 跳转到左侧垂直窗口
- `<leader>l` 跳转到右侧垂直窗口
- `<leader>j` 跳转到下方水平窗口
- `<leader>k` 跳转到上方水平窗口
- `<leader>w` 切换窗口

### 标签

- `<leader>1` 切换到标签1
- `<leader>2` 切换到标签2
- `gt` 切换到下一个标签
- `gT` 切换到上一个标签
- `bc` 关闭当前标签
- `bo` 关闭其他标签

### 终端

- `C+\` 打开终端
