# Simulink-Tool

MATLAB / Simulink 工具与模型仓库。

## 环境要求

- **MATLAB R2024b**（含 Simulink）
- Git for Windows

## 目录结构

```
Simulink-Tool/
├── models/          # Simulink 模型文件 (.slx / .mdl) 放这里
├── scripts/         # MATLAB 脚本 (.m) 放这里
├── README.md
└── .gitignore       # 已排除 slprj/ 等编译缓存
```

## 快速开始

1. 克隆仓库：

   ```bash
   git clone git@github.com:EriosWang/Simulink-Tool.git
   ```

2. 打开 MATLAB，把仓库根目录设为当前工作目录：

   ```matlab
   cd('C:\Users\Administrator\Documents\Simulink-Tool')
   ```

3. 运行示例脚本验证环境：

   ```matlab
   plot_sine
   ```

## 日常 Git 流程

改完文件后，只有三步：

```bash
git status              # 1. 看改了哪些文件
git add .               # 2. 把改动放进暂存区
git commit -m "说明"    # 3. 提交
git push                # 4. 推送到 GitHub
```

| 命令 | 作用 |
| --- | --- |
| `git status` | 最常用，看当前改动 |
| `git add .` | 暂存所有改动 |
| `git commit -m "说明"` | 拍快照 |
| `git push` | 推送到 GitHub |
| `git pull` | 拉取远程改动 |
| `git log --oneline` | 查看提交历史 |

## ⚠️ 关于编译缓存

Simulink 每次编译/仿真都会生成 `slprj/`、`*.slxc` 等缓存文件，**动辄几百 MB 到几个 GB**。这些已被 `.gitignore` 排除：

- **不要**用 `git add -f` 强制添加它们
- 如果 `git status` 里看不到它们，说明规则在正常工作
- 别人克隆你的仓库后，本地会自动重新生成，不需要你传

## 注意

大体积的 `.mat` 数据文件默认**允许**提交。如果你有大文件不想传，打开 `.gitignore` 里 `*.mat` 那一行的注释即可。
