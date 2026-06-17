# Tutorial

本教程将带你逐步了解 `my_tea` 项目，并学习 Lean 4 的基本概念。

## 1. 使用 `#eval` 求值

在 VS Code 中打开任意 `.lean` 文件，在表达式前加上 `#eval`，按下 `Shift+Ctrl+Enter`（macOS：`Shift+Cmd+Enter`）即可查看求值结果。

## 2. 探索基本类型

```lean4
#eval 1 + 2
-- 3

#eval "Hello, " ++ "Lean!"
-- "Hello, Lean!"

#check (42 : Nat)
-- 42 : Nat

#check (fun (x : Nat) => x + 1)
-- (fun x => x + 1) : Nat → Nat
```

## 3. 自定义函数

在 `MyLib/Basic.lean` 中添加你的第一个定义：

```lean4
def hello := "Hello, Lean 4!"
```

然后在文件中使用 `#eval` 求值：

```lean4
#eval hello
```

## 4. 使用 mathlib

由于 `lakefile.toml` 声明了对 mathlib 的依赖，你可以直接使用 mathlib 提供的功能：

```lean4
import Mathlib

#eval (Nat.prime 7)        -- true
#eval Nat.sqrt 16          -- 4
```

## 5. 编写简单证明（进阶）

```lean4
import MyLib

-- 一个简单的示例定理
theorem one_plus_one_eq_two : 1 + 1 = 2 := by
  native_decide
```

## 6. 下一步

- 阅读 [项目概述](overview.md) 了解整体架构
- 翻阅 [TLDR 速查](lean4_tldr.md) 快速查阅语法与策略
- 查看 [API 参考](api.md) 了解可用函数
- 在 `MyLib/Basic.lean` 中添加你自己的函数和类型
- 在 `Main.lean` 中编写更复杂的 `IO` 程序
