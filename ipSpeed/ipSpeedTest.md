#网速测试用法
1. ip 正则  \(\d\{1,3\}\.\)\{3\}\d\+
2. 先用如下命令把和your_re_pattern匹配的内容添加在寄存器a中，
3. 然后在新的tab ip.txt 里面，用 "aP 来把寄存器中保存的内容paste到新的窗口中。
4. ./ip_ping_speed.sh 看result

1. `:let @a=""` # 清空寄存器a
2. :g//\(\d\{1,3\}\.\)\{3\}\d\+normal "AY ` # 把和your_re_pattern匹配的内容添加在寄存器a

3. :new `# 新建一个 ip.txt
4. `"aP `# paste 寄存器a中的内容到新的窗口
5.  替换空格 :%s/\s//g
