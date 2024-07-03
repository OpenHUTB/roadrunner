# RaodRunner 的中文翻译文档
该项目属于自定义工业 [仿真软件](https://github.com/OpenHUTB/matlab) [帮助文档](https://github.com/OpenHUTB/matlab/tree/master/help) 的一部分。

1. 将网页对应的文件名（中划线一律改为下划线）保存为本地的`.mlx`文件，并用`deploy.m`脚本导出为网页文件，并部署到当前使用软件的对应目录；
2. 使用命令`doc roadrunner`进行测试；

<img src=fig/validate_link.png alt="编辑页面" width="780" />

<img src=fig/valid_link.png alt="插入链接" width="780" />


## 页面部署
1. 新建孤儿分支，该分支会包含父分支所有的文件：
```shell
git checkout --orphan gh-deploy
```
删除所有git管理的文件，并添加所有`hmlt`文件：
```shell
git rm -rf .
git add *.html
```
2. 提交分支
```shell
git commit -m 'init'
git push origin gh-deploy
```
3. 配置页面
在 `Github` 项目设置中选择 `gh-deploy` 的分支，目录选择`/(root)`（注意不要是`/(docs)`，然后通过 `https://openhutb.github.io/roadrunner/` 访问即可。


## 注意
1. 将页面中的链接改为本地`html`文件链接。

<img src=fig/page_edit.png alt="编辑页面" width="780" />

<img src=fig/insert_link.png alt="插入链接" width="780" />

2. 为了使mlx文件能够直接运行，mlx文件名不用html文件名中的中划线，改用下划线。

3. 还未翻译的文件列表
```text
https://ww2.mathworks.cn/help/releases/R2022b/roadrunner/ug/roadrunner-asset-types.html

https://ww2.mathworks.cn/help/releases/R2022b/roadrunner/matlab-and-simulink-integration.html

https://ww2.mathworks.cn/help/releases/R2022b/roadrunner/roadrunner-asset-library.html

https://ww2.mathworks.cn/help/releases/R2022b/roadrunner/fundamentals.html 中曲线编辑以下

https://ww2.mathworks.cn/help/roadrunner/ref/sdmapviewertool.html
```


