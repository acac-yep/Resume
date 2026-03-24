#import "template.typ": *

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 图标（来源: https://fontawesome.com/icons/）
#let fa-award            = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code             = icon("icons/fa-code.svg")
#let fa-envelope         = icon("icons/fa-envelope.svg")
#let fa-github           = icon("icons/fa-github.svg")
#let fa-graduation-cap   = icon("icons/fa-graduation-cap.svg")
#let fa-phone            = icon("icons/fa-phone.svg")
#let fa-wrench           = icon("icons/fa-wrench.svg")
#let fa-work             = icon("icons/fa-work.svg")
#let fa-lightbulb        = icon("icons/fa-lightbulb.svg")

// ──────────────────────────────────────────
// 头部
// ──────────────────────────────────────────
#show: resume.with(
  size: 10pt,
  theme-color: theme-color,
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm,
  ),
  // 如不需要照片，注释下面三行并取消 header-center 注释
  header-center: true,
  //photograph: "profile.jpg",
  //photograph-width: 10em,
  //gutter-width: 2em,
)[
  = 王子涵

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) 151-5455-6579",
    ),
    (
      icon: fa-building-columns,
      content: "中国科学技术大学",
    ),
    (
      icon: fa-graduation-cap,
      content: "计算机科学与技术学院",
    ),
    (
      icon: fa-envelope,
      content: "ustc24wzh@gmail.com",
      link: "mailto:ustc24wzh@gmail.com",
    ),
    (
      icon: fa-github,
      content: "github.com/acac-yep",
      link: "https://github.com/acac-yep",
    ),
  )
][
  #h(2em)

  中国科学技术大学计算机学院大二本科生，综合成绩排名 *3/55*（上学年），对人工智能与机器学习领域有浓厚兴趣，目前专注于 AI for Finance 方向的探索。具备较强的工程实践能力，有独立完成端到端机器学习项目的经历，并参与横向科研项目实践。同时积极参与学生工作，担任多项校院级职务，具备较好的组织协调能力。
]

// ──────────────────────────────────────────
// 教育背景
// ──────────────────────────────────────────
== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2028.06 \
  （预计）

  2024.09
][
  *中国科学技术大学* · 计算机科学与技术学院 · 计算机科学与技术专业（本科）

  综合成绩排名：*3 / 55*（上学年） · GPA：*3.55 / 4.3*（86.07 / 100）
]

// ──────────────────────────────────────────
// 科研与项目经历
// ──────────────────────────────────────────
== #fa-code 科研与项目经历

// 项目一：AI Agent 横向项目
#item(
  [ *AI Agent 自动化报告系统* ],
  [ *横向项目（朱老师指导）* ],
  date[ 2025 年 03 月 – 2025 年 06 月 ],
)
#tech[ Python, Web Scraping, LLM, Agent ]

受东方合智委托，参与基于 AI Agent 的自动化信息处理系统研发。

- 独立实现了从目标网页爬取数据、自动整理报告并通过邮件发送的完整 Agent 流程
- 参与前端页面技术调研，评估多种前端框架的适用性
- 项目完成后在朱老师指导下系统研读 AI for Finance 领域文献，对大模型在金融任务中的局限性（如量化建模、数学推导）及小参数量微调模型的专业任务优势形成初步认识

// 项目二：Kaggle 竞赛
#item(
  link(
    "https://github.com/acac-yep/Kaggle",
    [ *房价预测区间估计* ],
  ),
  [ *Kaggle 竞赛（个人）* ],
  date[ 2025 年 07 月 – 2025 年 11 月 ],
)
#tech[ Python, LightGBM, GBDT, CQR, BayesSearchCV, GPU 加速 ]

参加 Kaggle 竞赛"Prediction Interval Competition II: House Price"，独立完成端到端建模。

- 构建多类衍生特征（空间特征、时间特征、交互特征、多项式特征），显著提升模型表达能力
- 系统比较 GBDT、LightGBM 与 Conformalized Quantile Regression（CQR）三类方法，最终采用加权集成策略
- 引入贝叶斯超参数优化（BayesSearchCV）并利用 GPU 加速，较 baseline Winkler 得分提升约 35%
- 在 Private Leaderboard 取得 *149 / 691（top 22%）* 的成绩

// 项目三：音频事件识别（课程）
#item(
  [ *基于迁移学习的音频事件识别与分类* ],
  [ *课程研究报告（科学社会主义研讨课）* ],
  date[ 2024 年 09 月 – 2024 年 12 月 ],
)
#tech[ Python, VGG-16, Keras, librosa, 迁移学习 ]

针对 UrbanSound8K 数据集（10 类城市环境声，8732 条样本）设计并实现了完整的音频分类流程。

- 将音频信号转换为梅尔频谱图，并分离谐波/打击乐成分构建三维特征图（64×64×3），迁移 VGG-16 卷积层提取深层表示
- 自定义五层全连接分类头（Dropout 正则化），在测试集上达到 *约 89%* 的准确率（Precision / Recall / F1 均约 0.886）
- 对比了不同 batch size 和网络深度的影响，发现简化为 2 层全连接可将训练时间缩短 50% 且精度基本不变

// ──────────────────────────────────────────
// 获奖情况
// ──────────────────────────────────────────
== #fa-award 获奖情况

#item(
  [ *唐仲英德育奖学金* ],
  [ *中国科学技术大学* ],
  date[ 2025 年 10 月 ],
)

#item(
  [ *"杨亚基金"奖学金* ],
  [ *中国科学技术大学* ],
  date[ 2025 年 10 月 ],
)

#item(
  [ *优秀新生奖学金* ],
  [ *中国科学技术大学* ],
  date[ 2024 年 12 月 ],
)

#item(
  [ *校级优秀共青团员 / 优秀共青团干部 / 优秀学生干部* ],
  [ *中国科学技术大学* ],
  date[ 2025 年 05 月 ],
)

// ──────────────────────────────────────────
// 专业技能
// ──────────────────────────────────────────
== #fa-wrench 专业技能

#sidebar(with-line: false, side-width: 12%)[
  *编程语言*

  *机器学习*

  *工具链*

  *外语*
][
  Python（熟练）、C/C++（掌握）

  PyTorch、Keras、scikit-learn、LightGBM、librosa

  Git / GitHub、Linux、Jupyter Notebook

  英语：雅思 6.5 · CET-4 / CET-6 均通过
]

// ──────────────────────────────────────────
// 学生工作
// ──────────────────────────────────────────
== #fa-work 学生工作

#sidebar(with-line: true, side-width: 20%)[
  2026.02 – 今

  2025.09 – 今

  2025.06 – 今

  2025.06 – 今

  2025.06 – 今

  2024.09 – 今

  2024.09 – 2025.06
][
  *校学生会* 办公室 副主任（挂职）

  *计科辩论队* 领队

  *计算机学院志愿服务办公室* 主任；*计科青年志愿者协会* 负责人

  *校学生唐仲英爱心社* 财务部 部长（2025.03 – 2025.06 任部员）

  *计算机学院 24 级本科一班* 团支部书记 兼 副班长

  *校青年信息传媒中心* 采编部 干事（至 2025.06）

  荣获"优秀学员"——参加第二十五届学生骨干培训班暨团校第三十一期培训班
]
