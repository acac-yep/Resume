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

  中国科学技术大学计算机学院2024级本科生，综合成绩排名 *3/55*（上学年）
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

  综合成绩排名：*3 / 55*（上学年） · GPA：*3.44 / 4.3*（84.83 / 100）平均绩点排名：101/241
]

// ──────────────────────────────────────────
// 科研与项目经历
// ──────────────────────────────────────────
== #fa-code 科研与项目经历

// 项目一：Kaggle 股票预测
#item(
  link(
    "https://github.com/acac-yep/Kaggle",
    [ *股票市场次日收益信号预测* ],
  ),
  [ *Kaggle 竞赛（个人）* ],
  date[ 2026 年 03 月 – 2026 年 04 月 ],
)
#tech[ Python, XGBoost, CatBoost, LightGBM, Voting Classifier, Polars ]

参加 Kaggle 竞赛"Stock Market Signal — Predict Next Day Returns"，独立完成端到端建模。

- 基于 Polars 实现高速特征工程，构建截面排名特征与滞后特征进行预测
- 采用 XGBoost、CatBoost、LightGBM 三模型投票集成（Voting Classifier），通过 5 折交叉验证评估模型稳定性
- 在 Public Leaderboard 取得 *13 / 102（top 13%）* 的成绩

// 项目二：AI Agent 横向项目
#item(
  [ *AI Agent 自动化报告系统* ],
  [ *横向项目* ],
  date[ 2025 年 08 月 – 2025 年 12 月 ],
)
#tech[ Python, Web Scraping, LLM, Agent ]

受东方合智委托，参与基于 AI Agent 的自动化信息处理系统研发。

- 独立实现网页爬取、报告整理并通过邮件发送的完整 Agent 流程
- 参与前端页面技术调研，评估多种框架的适用性

// 项目三：Kaggle 竞赛
#item(
  link(
    "https://github.com/acac-yep/Kaggle",
    [ *房价预测区间估计* ],
  ),
  [ *Kaggle 竞赛（个人）* ],
  date[ 2025 年 07 月 – 2025 年 08 月 ],
)
#tech[ Python, LightGBM, GBDT, CQR, BayesSearchCV, GPU 加速 ]

参加 Kaggle 竞赛"Prediction Interval Competition II: House Price"，独立完成端到端建模。

- 构建多类衍生特征，系统比较 GBDT、LightGBM 与 CQR 三类方法，采用加权集成策略
- 引入贝叶斯超参数优化及 GPU 加速，较 baseline Winkler 得分提升约 35%
- 在 Private Leaderboard 取得 *149 / 691（top 22%）* 的成绩

// 项目四：音频事件识别（课程）
#item(
  [ *基于迁移学习的音频事件识别与分类* ],
  [ *课程研究报告（科学与社会研讨课）* ],
  date[ 2024 年 09 月 – 2025 年 05 月 ],
)
#tech[ Python, VGG-16, Keras, librosa, 迁移学习 ]

针对 UrbanSound8K 数据集（10 类城市环境声，8732 条样本）设计并实现了完整的音频分类流程。

- 将音频信号转换为梅尔频谱图，迁移 VGG-16 提取深层特征，自定义分类头，测试集准确率 *约 89%*
- 对比了不同 batch size 和网络深度的影响

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
  [ *优秀共青团员* ],
  [ *中国科学技术大学* ],
  date[ 2025 年 05 月、2026 年 05 月 ],
)

#item(
  [ *优秀共青团干部* ],
  [ *中国科学技术大学* ],
  date[ 2025 年 05 月、2026 年 05 月 ],
)

#item(
  [ *优秀学生干部* ],
  [ *中国科学技术大学* ],
  date[ 2025 年 05 月 、2026 年 05 月 ],
)

#item(
  [ *优秀新生奖学金* ],
  [ *中国科学技术大学* ],
  date[ 2024 年 12 月 ],
)

// ──────────────────────────────────────────
// 知识储备
// ──────────────────────────────────────────
== #fa-wrench 知识储备

#sidebar(with-line: false, side-width: 12%)[
  *机器学习 / 深度学习*

  *外语*
][
  自学李沐《动手学深度学习》及吴恩达 CS229（机器学习）、CS230（深度学习）等课程

  英语：雅思 6.5 · CET-4 / CET-6 均通过
]

// ──────────────────────────────────────────
// 学生工作
// ──────────────────────────────────────────
== #fa-work 学生工作

#sidebar(with-line: true, side-width: 20%)[
  2026.05 - 今
  
  2024.09 – 今


][
  *校学生会* 主席团成员

  *计算机学院 24 级本科一班* 团支部书记 兼 副班长

  
]
