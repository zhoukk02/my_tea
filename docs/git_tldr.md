# Git TLDR

> Git 常用命令速查。

---

## 配置

```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
git config --global core.editor "code --wait"    # VS Code 作为编辑器
```

---

## 基础操作

| 命令 | 说明 |
|------|------|
| `git init` | 初始化仓库 |
| `git clone <url>` | 克隆远程仓库 |
| `git add <file>` | 暂存文件 |
| `git add .` | 暂存所有改动 |
| `git commit -m "msg"` | 提交暂存区到历史 |
| `git commit -am "msg"` | 暂存已跟踪文件 + 提交（一步完成） |
| `git commit --amend` | 修改上次提交（内容或信息） |
| `git rm <file>` | 删除文件并暂存 |
| `git mv <old> <new>` | 重命名文件并暂存 |

---

## 查看状态

| 命令 | 说明 |
|------|------|
| `git status` | 查看工作区状态 |
| `git log` | 查看提交历史 |
| `git log --oneline` | 简洁日志（一行一个提交） |
| `git log --graph --oneline --all` | 分支图谱 |
| `git diff` | 工作区 vs 暂存区差异 |
| `git diff --staged` | 暂存区 vs 上次提交差异 |
| `git show <commit>` | 查看某次提交详情 |
| `git blame <file>` | 查看每行最后修改者 |

---

## 分支

| 命令 | 说明 |
|------|------|
| `git branch` | 列出本地分支 |
| `git branch -a` | 列出所有分支（含远程） |
| `git branch <name>` | 创建分支（不切换） |
| `git switch <name>` | 切换到已有分支 |
| `git switch -c <name>` | 创建新分支并立即切换 |
| `git merge <branch>` | 合并分支到当前 |
| `git branch -d <name>` | 删除分支（已合并） |
| `git branch -D <name>` | 强制删除分支 |

---

## 远程

| 命令 | 说明 |
|------|------|
| `git remote -v` | 查看远程仓库 |
| `git remote add <name> <url>` | 添加远程仓库 |
| `git push <remote> <branch>` | 推送分支 |
| `git push -u <remote> <branch>` | 推送并设置上游 |
| `git push --force-with-lease` | 安全强制推送（优于 --force） |
| `git push --delete <remote> <branch>` | 删除远程分支 |
| `git pull` | 拉取并合并（fetch + merge） |
| `git pull --rebase` | 拉取并变基（推荐，历史更清晰） |
| `git fetch` | 仅拉取远程更新，不合并 |
| `git clone <url>` | 克隆仓库 |

---

## 撤销

| 命令 | 说明 |
|------|------|
| `git restore <file>` | 撤销工作区修改（未暂存） |
| `git restore --staged <file>` | 取消暂存（保留文件修改） |
| `git reset --soft <commit>` | 回退到某次提交，改动留在暂存区 |
| `git reset --hard <commit>` | 回退并丢弃所有改动 |
| `git revert <commit>` | 新增提交来回滚历史（安全，可推送到远程） |
| `git commit --amend` | 修改上次提交（已在上方列出） |

---

## 贮藏

| 命令 | 说明 |
|------|------|
| `git stash` | 暂存当前改动 |
| `git stash pop` | 恢复最近一次贮藏 |
| `git stash list` | 查看贮藏列表 |
| `git stash drop` | 删除最近一次贮藏 |

---

## 常用工作流

### 日常开发

```bash
git switch -c feature/my-feature   # 创建功能分支
# ... 修改代码 ...
git add .
git commit -m "feat: add xxx"
git push -u origin feature/my-feature
# 在 GitHub 上创建 PR
```

### 同步上游

```bash
git switch main
git pull --rebase          # 推荐变基拉取
git switch feature/my-feature
git rebase main            # 变基到 main 之上
```

### 修复上次提交

```bash
git add .              # 补加遗漏文件
git commit --amend     # 合并到上次提交
```

---

## 提交信息规范

```
<type>: <subject>

<body（可选）>
```

| type | 说明 |
|------|------|
| `feat` | 新功能 |
| `fix` | 修复 |
| `doc` | 文档 |
| `test` | 测试 |
| `chore` | 杂项 |
---

> 更多帮助：`git help <command>` 或 <https://git-scm.com/doc>
