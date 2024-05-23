# ZJUI Senior Design Individual Report Template

用于ZJUI毕业设计（论文）的模板，基于学院模板、UIUC ECE 445 Final Report模板和浙江大学毕业论文模板改写。目前基本格式为A4纸、11磅字、1.5倍行间距，使用Times字体。

## 使用说明
在`individual_report.tex`文件中设置好个人信息、项目信息并正确地设置biblatex数据库文件名，随后按`individual_report.tex`文件内注释提示完成论文其余部分的内容。

在frontmatter和backmatter目录下有若干Word文稿和PDF文档，这些文档是学院下发的论文评审相关的表格资料。使用Word等字处理软件编辑后导出同名PDF文档，论文模板在编译时会将PDF文档按顺序插入论文并加入页眉和页码。

**由于使用了依赖`fontspec`的宏包用于设置字体，请务必使用XeLaTeX或LuaLaTeX编译文档，否则会报错！**

## 编译PDF
**务必使用XeLaTeX或LuaLaTeX！！！**
### 本地编译
编译命令：

```
latexmk -xelatex -interaction=nonstopmode individual_thesis.tex
```

### Overleaf
访问[Overleaf模板](https://www.overleaf.com/read/zjbkmrtykhts#10b467)。

注意：以上Overleaf链接指向的模板可能并非为最新。

## FAQ
1. 如果Overleaf显示编译超时怎么办？
> 第一次打开这个模板时，先使用Fast Mode编译，之后再使用Normal正常编译。如果实在难以解决，尝试注释掉主文件中所有的`includepdf`命令再编译。（注释掉`includepdf`命令会导致存放于frontmatter, backmatter文件夹内的论文必要附加文件无法被编入文档，可以使用Acrobat等软件手工导入）

2. Overleaf编译报错，提示fontspec包必须使用XeTeX怎么办？
> 点击Overleaf左上角的Menu，将编译引擎由pdfLaTeX改为XeLaTeX。

## 反馈、建议或共同维护
邮箱：giant@zju.edu.cn
