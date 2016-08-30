# dotfiles

### ping ip 速度对比
[用法](./ipSpeed/ipSpeedTest.md)
___

### tmux
`ln -s absolutely path/tmux ~/.tmux`
`ln -s ~/.tmux/tmux.conf /tmux/.tmux.conf`

### linux Caps_Lock  全局vim键位
参考[它](https://github.com/Chunlin-Li/Chunlin-Li.github.io/blob/master/blogs/linux/ubuntu-xkb-keyboard-remap.md)
使用命令查看当前的键盘方案 : `setxkbmap -print`
修改文件:/usr/share/X11/xkb/symbols/  pc  us
>导入配置:
>`xkbcomp myxkb.dump $DISPLAY` 
> *如果Login前有效，登陆系统后无效，Keybord设置下Layout,不要是根据系统，直接指定一个*

>当前配置导出 :
>`xkbcomp $DISPLAY myxkb.dump`
>// 导出的文件是文本, 可编辑, 但结构比较复杂.
j --> Up
h --> Left
k --> Down
l --> Right
m --> Home
; --> End
i --> Privor
m --> Next
