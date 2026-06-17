/-
Copyright (c) 2026. All rights reserved.
Released under the LICENSE file.
Authors: <zhoukk02>
-/

import MyLib

/-!
# 可执行文件入口

项目主入口。编译后生成可执行文件。

运行方式：

```bash
lake build
lake exe my_tea
```
-/

/-- 项目名称 -/
def name : String := "my_tea"

/-- 项目版本 -/
def version : String := "0.1.0"

/-- 程序入口 -/
def main : IO Unit := IO.println s!"{name} v{version}"
