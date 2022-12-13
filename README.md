# NJU Visual
[![CTAN](https://img.shields.io/ctan/v/njuvisual.svg)](https://www.ctan.org/pkg/njuvisual)
[![GitHub release](https://img.shields.io/github/release/nju-lug/NJUVisual/all.svg)](https://github.com/nju-lug/NJUVisual/releases/latest)

南京大学视觉形象规范化标准宏包，用于收录南京大学及其各院系制定的标准色彩及图标，并提供简洁的绘制指
令。

## 使用方法

[`njuvisual`](https://ctan.org/pkg/njuvisual) 已发布于CTAN，使用 `tlmgr install njuvisual` 命令安装后，可通过 `\usepackage{njuvisual}` 调用本宏包。

基本使用方法形如
```
\njuemblem{!}{3cm}                           % 生成指定大小的紫色南大校徽
\njuname{4cm}{!}                             % 生成指定大小的紫色南大中文校名
\njuname*{4cm}{!}                            % 生成指定大小的紫色南大英文校名
\njuemblem[black]{!}{3cm}                    % 黑色的南大校徽
\njuemblem[department=dii]{!}{4cm}           % 紫色匡院徽标
\njuemblem[department=cs,color=blue]{!}{3cm} % 纯蓝色计科徽标
```

详细使用方法请参照随附的说明文档（[njuvisual.pdf](https://github.com/nju-lug/NJUVisual/releases/latest/)）。

### 导出独立图片

v0.2.0 版以后，本宏包提供了将内置矢量图导出为图片的方法。如果仅需 PDF 格式的矢量图，请运行 `xetex njuvisual.dtx`，随后在释放出的 `njuvisual-example.tex` 中选取自己所需的图片，用 `pdflatex --shell-escape njuvisual-example.tex` 命令编译即可。如需 PNG 格式的位图，请在下载本仓库全部文件后，运行对应系统的 `extract-png` 脚本。

## 适配院系一览

选项名称来自各学院的网站域名。

| 学院名称               |  选项名称 |  适配情况     |
| ---------------------- | --------- | ------------- |
| 文学院                 | chin      |               |
| 历史学院               | history   |               |
| 哲学系                 | philo     |               |
| 新闻传播学院           | jc        |               |
| 法学院                 | law       |               |
| 商学院                 | nubs      |               |
| 外国语学院             | sfs       |               |
| 信息管理学院           | im        |               |
| 社会学院               | sociology |               |
| 数学系                 | math      |               |
| 物理学院               | physics   | color, emblem |
| 天文与空间科学学院     | astronomy |               |
| 化学化工学院           | chem      | color, emblem |
| 计算机科学与技术系     | cs        | color, emblem |
| 软件学院               | software  | emblem        |
| 人工智能学院           | ai        | color, emblem |
| 电子科学与工程学院     | ese       |               |
| 现代工程与应用科学学院 | eng       | emblem        |
| 环境学院               | hjxy      |               |
| 地球科学与工程学院     | es        |               |
| 地球科学与海洋科学学院 | sgos      |               |
| 大气科学学院           | as        |               |
| 生命科学学院           | life      |               |
| 医学院                 | med       |               |
| 工程管理学院           | sme       |               |
| 匡亚明学院             | dii       | emblem        |
| 海外教育学院           | hwxy      |               |
| 建筑与城市规划学院     | arch      |               |
| 马克思主义学院         | marxism   |               |
| 艺术学院               | art       |               |
| 教育研究院             | edu       |               |

## 贡献

如果你发现了模板的问题，欢迎在Github中提交 [issue](https://github.com/nju-lug/NJUVisual/issues) 或者 [PR](https://github.com/nju-lug/NJUVisual/pulls)。

## 许可

本模板的发布遵守 [LaTeX Project Public License（版本 1.3c 或更高）](https://www.latex-project.org/lppl/lppl-1-3c/)。
