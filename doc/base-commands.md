# 第二章 - 基础命令

## ls - 显示列表

```shell
// 返回根目录
[root@localhost ~]# cd /
// 使用 ls 命令
[root@localhost /]# ls
afs  boot  etc   lib    media  opt   root  sbin  sys  usr
bin  dev   home  lib64  mnt    proc  run   srv   tmp  var
[root@localhost /]# 
```

### 可选选项

`-a`: 可以展示出隐藏内容

> " . " 开头的文件或文件夹默认被隐藏，需要 `-a` 才能显示出来

`-l`: 以列表的形式展示内容，并展示更多细节

> tips：`ll` 是 ls -l 的简写，效果是一样的

`-h`: 需要和 `-l` 配合使用，以更加人性化的方式显示文件大小单位

> ### 命令可以组合使用
> 
> 命令的选项可以组合使用的，比如: `ls -lah`，等同于 `ls -a -l -h`

### 示例

带 `-a` 的选项:

```shell
[root@localhost /]# ls -a
.  ..  afs  bin  boot  dev  etc  home  lib  lib64
media  mnt  opt  proc  root  run  sbin  srv  sys
tmp  usr  var
[root@localhost /]# 
```

带 `-l` 的选项:

```shell
[root@localhost /]# ls -l
总用量 24
dr-xr-xr-x.   2 root root    6  5月 16  2022 afs
lrwxrwxrwx.   1 root root    7  5月 16  2022 bin -> usr/bin
dr-xr-xr-x.   5 root root 4096  5月 25 15:57 boot
drwxr-xr-x.  20 root root 3340  5月 25 16:43 dev
drwxr-xr-x. 102 root root 8192  5月 25 16:43 etc
drwxr-xr-x.   2 root root    6  5月 16  2022 home
lrwxrwxrwx.   1 root root    7  5月 16  2022 lib -> usr/lib
lrwxrwxrwx.   1 root root    9  5月 16  2022 lib64 -> usr/lib64
drwxr-xr-x.   2 root root    6  5月 16  2022 media
drwxr-xr-x.   3 root root   18  5月 25 15:49 mnt
drwxr-xr-x.   2 root root    6  5月 16  2022 opt
dr-xr-xr-x. 266 root root    0  5月 25 16:43 proc
dr-xr-x---.   4 root root  141  5月 25 16:44 root
drwxr-xr-x.  37 root root 1040  5月 25 16:43 run
lrwxrwxrwx.   1 root root    8  5月 16  2022 sbin -> usr/sbin
drwxr-xr-x.   2 root root    6  5月 16  2022 srv
dr-xr-xr-x.  13 root root    0  5月 25 16:43 sys
drwxrwxrwt.  11 root root 4096  5月 25 16:45 tmp
drwxr-xr-x.  12 root root  144  5月 25 15:47 usr
drwxr-xr-x.  20 root root 4096  5月 25 15:57 var
[root@localhost /]# 
```

带 `-h` 和 `-l` 的选项 :

```shell
[root@localhost /]# ls -l -h
总用量 24K
dr-xr-xr-x.   2 root root    6  5月 16  2022 afs
lrwxrwxrwx.   1 root root    7  5月 16  2022 bin -> usr/bin
dr-xr-xr-x.   5 root root 4.0K  5月 25 15:57 boot
drwxr-xr-x.  20 root root 3.3K  5月 25 16:43 dev
drwxr-xr-x. 102 root root 8.0K  5月 25 16:43 etc
drwxr-xr-x.   2 root root    6  5月 16  2022 home
lrwxrwxrwx.   1 root root    7  5月 16  2022 lib -> usr/lib
lrwxrwxrwx.   1 root root    9  5月 16  2022 lib64 -> usr/lib64
drwxr-xr-x.   2 root root    6  5月 16  2022 media
drwxr-xr-x.   3 root root   18  5月 25 15:49 mnt
drwxr-xr-x.   2 root root    6  5月 16  2022 opt
dr-xr-xr-x. 266 root root    0  5月 25 16:43 proc
dr-xr-x---.   4 root root  141  5月 25 16:44 root
drwxr-xr-x.  37 root root 1.1K  5月 25 16:43 run
lrwxrwxrwx.   1 root root    8  5月 16  2022 sbin -> usr/sbin
drwxr-xr-x.   2 root root    6  5月 16  2022 srv
dr-xr-xr-x.  13 root root    0  5月 25 16:43 sys
drwxrwxrwt.  11 root root 4.0K  5月 25 16:45 tmp
drwxr-xr-x.  12 root root  144  5月 25 15:47 usr
drwxr-xr-x.  20 root root 4.0K  5月 25 15:57 var
[root@localhost /]# 
```

混合使用:

```shell
[root@localhost /]# ls -a -l -h
总用量 24K
dr-xr-xr-x.  18 root root  235  5月 25 15:52 .
dr-xr-xr-x.  18 root root  235  5月 25 15:52 ..
dr-xr-xr-x.   2 root root    6  5月 16  2022 afs
lrwxrwxrwx.   1 root root    7  5月 16  2022 bin -> usr/bin
dr-xr-xr-x.   5 root root 4.0K  5月 25 15:57 boot
drwxr-xr-x.  20 root root 3.3K  5月 25 16:43 dev
drwxr-xr-x. 102 root root 8.0K  5月 25 16:43 etc
drwxr-xr-x.   2 root root    6  5月 16  2022 home
lrwxrwxrwx.   1 root root    7  5月 16  2022 lib -> usr/lib
lrwxrwxrwx.   1 root root    9  5月 16  2022 lib64 -> usr/lib64
drwxr-xr-x.   2 root root    6  5月 16  2022 media
drwxr-xr-x.   3 root root   18  5月 25 15:49 mnt
drwxr-xr-x.   2 root root    6  5月 16  2022 opt
dr-xr-xr-x. 267 root root    0  5月 25 16:43 proc
dr-xr-x---.   4 root root  141  5月 25 16:44 root
drwxr-xr-x.  37 root root 1.1K  5月 25 16:43 run
lrwxrwxrwx.   1 root root    8  5月 16  2022 sbin -> usr/sbin
drwxr-xr-x.   2 root root    6  5月 16  2022 srv
dr-xr-xr-x.  13 root root    0  5月 25 16:43 sys
drwxrwxrwt.  11 root root 4.0K  5月 25 16:45 tmp
drwxr-xr-x.  12 root root  144  5月 25 15:47 usr
drwxr-xr-x.  20 root root 4.0K  5月 25 15:57 var
[root@localhost /]# 
```

> 建议亲自上手实践，这样会更好

## cd - 切换目录

cd命令来自英文: `C`hange `D`irectory

cd命令可以切换当前工作目录，语法是

`cd [Linux路径]`

> 常用的cd(特殊的目录符号)：
> 
> `cd ~` 切换到HOME或root目录
> 
> `cd /` 切换到根目录
> 
> `cd ..` 返回上一级目录
> 
> [在这里有所解释](base-commands?id=特殊路径符)

## pwd - 显示当前工作目录

pwd命令来自英文: `P`rint `W`ork `D`irctory

pwd命令是输出当前所在的工作目录

```shell
// 当前为root用户，所处的工作目录如下
[root@localhost ~]# pwd
/root
[root@localhost ~]# 
```

## 路径

当前工作目录为 /root

```shell
//目录树
root
├── 114514
│   └── test1
│       └── test1.txt
└── anaconda-ks.cfg
```

### 相对路径

以当前目录做起点，描述路径的方式，不需要 / 开头

`cd 114514/test1/`

### 绝对路径

以根目录做起点，描述路径的方式，需要 / 开头

`cd /root/114514/test1`

### 特殊路径符

- "`.`" 表示当前目录，比如 `cd .` 或 `cd ./114514`

- "`..`" 表示上一级目录，比如 `cd..`  
  
  > `cd ../..` 表示返回上二级目录

- "`~`" 表示用户的HOME目录，比如 `cd ~` 或 `cd ~/114514`

> 如果是root用户
> 
> `cd ~`
> 
> 则是: `/root`

## mkdir - 创建文件夹

通过 mkdir 命令可以创建新的目录(文件夹)

mkdir来自英文: `M`a`k`e `Dir`ectory

语法: `mkdir [-p] [Linux路径]`

可选项

`-p`: 表示自动创建不存在的父目录。适用于创建连续多层级的目录

## touch - 创建一个新的文件

语法： `touch [Linux路径]`

参数必填，使用绝对，相对，特殊都可以

## cat - 查看文件内容

语法： `cat [Linux路径]`

参数必填，使用绝对，相对，特殊都可以

## more - 查看文件内容，可翻页查看

语法： `cat [Linux路径]`

参数必填，使用绝对，相对，特殊都可以

使用空格翻页，使用q退出查看

## cp - 复制

语法: `cp [-r] 参数1 参数2`

可选项

`-r`: 可选，用于复制文件夹使用，表示递归

`参数1`: Linux路径，表示被复制的文件和文件夹

`参数2`: Linux路径，表示要复制去的地方

## mv - 移动文件

语法: `mv 参数1 参数2`

`参数1`: Linux路径，表示被移动的文件和文件夹

`参数2`: Linux路径，表示要移动去的地方，如果目标不存在，则进行改名，确保目标存在

## rm - 删除文件、文件夹

语法:  `rm [-r -f] 参数1 参数2 ···· 参数N `

可选项

`-r`: 用于删除文件夹

`-f`: 表示 force，强制删除(不会弹出任何信息)

> 普通用户删除内容不会弹出提示，只有root管理员用户删除内容会有提示
>
> 一般用户不会使用到 `-f` 选项

参数1、参数2、······、参数N 表示要杉树的文件和文件夹路径，按照空格隔开

#### rm通配符

`rm`支持通配符

" * ": 表示通配符，即匹配任意内容（包含空），示例:

- `test*`，表示匹配任何以test开头的内容
- `*test`，表示匹配任何以test结尾的内容*
- `*test*`，表示匹配任何包含test的内容
