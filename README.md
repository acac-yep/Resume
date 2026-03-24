# 王子涵的简历

使用 [Typst](https://typst.app/) 编写的中文学术简历，基于 [OrangeX4/Chinese-Resume-in-Typst](https://github.com/OrangeX4/Chinese-Resume-in-Typst) 模板。

## 📄 获取 PDF

每次 push 到 `main` 分支时，GitHub Actions 会自动编译并发布最新 PDF：

👉 [点击此处下载最新版简历](../../releases/latest)


**添加新项目的模板：**

```typst
#item(
  link("https://github.com/...", [ *项目名称* ]),
  [ *项目类型* ],
  date[ 20XX 年 XX 月 – 20XX 年 XX 月 ],
)
#tech[ 技术栈1, 技术栈2 ]

项目简介一句话。

- 具体贡献点 1
- 具体贡献点 2
```

**替换照片：** 将自己的照片命名为 `profile.jpg` 替换根目录下的同名文件即可。

---

## 📁 仓库结构

```
resume/
├── resume.typ              # ✏️ 主简历文件（主要编辑这个）
├── template.typ            # 模板样式（一般不需要改动）
├── profile.jpg             # 个人照片（替换为自己的）
├── icons/                  # FontAwesome 图标
├── .github/
│   └── workflows/
│       └── build.yml       # 自动编译 + 发布 PDF
└── README.md
```
