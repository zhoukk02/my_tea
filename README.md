# my_tea

`my_tea` 是一个用 Lean 4 编写的项目。

## 快速开始

```bash
lake build    # 构建
lake exe my_tea  # 运行
```

### VS Code

打开项目，安装推荐扩展，执行 `lake build`，即可在 `.lean` 文件中获得完整的语言支持。

## 项目结构

```
my_tea/
├── Main.lean          # 可执行文件入口
├── MyLib.lean         # 库根模块
├── MyLib/             # 库模块目录
├── docs/              # 文档
├── .vscode/           # 编辑器配置
└── README.md
```

> 详见 [docs/overview.md](docs/overview.md)

## 代码片段

`.vscode/lean4.code-snippets` 内置了 34 个代码片段，输入前缀后按 `Tab` 即可快速插入常用语法结构：

| 类别 | 数量 | 示例 |
|------|------|------|
| 定义 | 7 | `def`, `theorem`, `structure` |
| 策略 | 12 | `simp`, `rw`, `induction` |
| 控制流 | 4 | `match`, `if`, `do` |
| 模块 | 5 | `module`, `namespace` |
| 高级 | 6 | `class`, `calc`, `mutual` |

## 文档

| 文档 | 说明 |
|------|------|
| [项目概述](docs/overview.md) | 结构与概念 |
| [API 参考](docs/api.md) | 公开 API 签名 |
| [教程](docs/tutorial.md) | 从零入门 |
| [速查](docs/lean4_tldr.md) | 语法与策略参考 |

## 许可证

Apache 2.0 — 详见 [LICENSE](LICENSE)。