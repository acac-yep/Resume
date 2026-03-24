# 王子涵的简历

使用 [Typst](https://typst.app/) 编写的中文学术简历，基于 [OrangeX4/Chinese-Resume-in-Typst](https://github.com/OrangeX4/Chinese-Resume-in-Typst) 模板。

## 📄 获取 PDF

每次 push 到 `main` 分支时，GitHub Actions 会自动编译并发布最新 PDF：

👉 [点击此处下载最新版简历](../../releases/latest)

---

## 🛠️ 本地编辑（推荐）

**环境准备（只需一次）：**

1. 安装 [VS Code](https://code.visualstudio.com/)
2. 安装插件：[Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist)
3. 安装 [Typst CLI](https://github.com/typst/typst/releases)（可选，用于命令行编译）

**日常使用：**

```bash
# 克隆仓库
git clone https://github.com/acac-yep/resume.git
cd resume

# 用 VS Code 打开
code .
```

- 打开 `resume.typ`，按 `Ctrl+K V` 预览
- 点击源码顶部 `Export PDF` 导出
- 修改后 `git push`，Actions 自动生成 PDF 并更新 Release

**命令行编译：**

```bash
typst compile resume.typ resume.pdf
```

---

## ✏️ 如何更新简历内容

只需编辑 `resume.typ`，主要结构如下：

| 区块 | 说明 |
|------|------|
| 头部 `= 王子涵` | 姓名、联系方式、个人简介 |
| `== 教育背景` | 学校、专业、GPA |
| `== 科研与项目经历` | 每个项目用 `#item(...)` 开头 |
| `== 获奖情况` | 每条奖项用 `#item(...)` |
| `== 专业技能` | 用 `#sidebar(...)` 排版 |
| `== 学生工作` | 用 `#sidebar(...)` 排版 |

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
