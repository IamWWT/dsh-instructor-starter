#!/usr/bin/env bash
# ============================================================================
# init-instructor.sh — 生成新的培训/答辩交付项目骨架
# 用法: scripts/init-instructor.sh <目标目录> [--name "名称"] [--kind training|defense]
# 生成: script/（讲稿真源）+ slides/ + media/{voice,subtitles,video} + rehearsal/ + （defense 细分）
# 自包含：任何 Agent 打开即用。
# ============================================================================
set -euo pipefail
TARGET="${1:-}"; [ -n "$TARGET" ] || { echo "用法: scripts/init-instructor.sh <目标目录> [--name 名称] [--kind training|defense]" >&2; exit 1; }
NAME="$(basename "$(realpath -m "$TARGET")")"; KIND="training"
[ "$#" -ge 3 ] && [ "$2" = "--name" ] && NAME="$3"
[ "$#" -ge 5 ] && [ "$4" = "--kind" ] && KIND="$5"
[ "$KIND" != "training" ] && [ "$KIND" != "defense" ] && { echo "错误: --kind 只能是 training|defense" >&2; exit 1; }
[ -d "$TARGET" ] && [ -n "$(ls -A "$TARGET")" ] && { echo "错误: 目标目录非空" >&2; exit 1; }
mkdir -p "$TARGET"/{script,slides,media/{voice,subtitles,video},rehearsal}
[ "$KIND" = "defense" ] && mkdir -p "$TARGET/defense"

cat > "$TARGET/AGENTS.md" <<AG
# AGENTS.md — 讲师交付项目（$NAME）

> 讲师模式工作区契约。本文件是 agent 行为唯一真源；讲稿是真源，PPT/视频是投影。

## 1. 核心纪律
1. **讲稿真源**：先写 \`script/outline.md\`（大纲）与 \`script/speaker-notes.md\`（逐页讲解词+时长），PPT/视频由讲稿对齐生成。
2. **画面与讲解对齐**：讲到哪里、演示到哪里；字幕/配音/画面三者一致。
3. **质量自检**：字体可读、版面合理、全屏可操作、引用可点击；用视觉工具检查产物。
4. **演练交付**：交付前给完整 runbook（打开什么/说什么/做什么 + 恢复动作）。

## 2. 目录
| 内容 | 放哪 |
|---|---|
| 大纲/讲稿/问答预案 | script/ |
| HTML 幻灯片 | slides/ |
| 配音/字幕/视频 | media/{voice,subtitles,video}/ |
| 演练手册/检查单 | rehearsal/ |
| 答辩细分（--kind defense） | defense/ |

## 3. 收尾
更新 progress 文件、清理错误产物、git commit（中文信息）。
AG

cat > "$TARGET/script/outline.md" <<OT
# 大纲 — $NAME

| # | 章节 | 一句话内容 | 时长 |
|---|---|---|---|
| 1 | 开场 | （背景/问题/目标） | 30s |
| 2 | 主体 | （方案/内容） | … |
| 3 | 收尾 | （总结/价值/下一步） | … |
OT
cat > "$TARGET/script/speaker-notes.md" <<SP
# 逐页讲解词 — $NAME

> 讲稿是真源：每页幻灯片对应一段讲解词（口语化，讲得出口）。修改先改这里，再同步幻灯片。

## 第 1 页（开场）
（讲词…）

## 第 2 页
（讲词…）
SP
cat > "$TARGET/script/qa-prep.md" <<QA
# 问答预案

| 追问 | 应答要点 | 证据指向 |
|---|---|---|
| （评委/学员可能问什么） | （怎么答） | （代码/文档/演示哪里支撑） |
QA
cat > "$TARGET/rehearsal/runbook.md" <<RB
# 演练手册 — $NAME

## 步骤表（步骤 | 打开什么 | 说什么 | 做什么）
| # | 打开 | 说（取自 speaker-notes §） | 做 |
|---|---|---|---|
| 1 | — | 开场词 | — |

## 开场词
（写出来）

## 恢复动作（演练/演示后）
- （关窗口/清临时数据/恢复配置…）
RB
cat > "$TARGET/rehearsal/checklist.md" <<CL
# 现场检查清单

- [ ] 设备/投影/全屏按钮可用
- [ ] 网络/数据源已启动
- [ ] 演示用账号/数据就绪
- [ ] 备份已做
CL
[ "$KIND" = "defense" ] && cat > "$TARGET/defense/README.md" <<DF
# 答辩目录 — $NAME

（赛道标准对齐摘要；交付物清单见 competition-defense skill）
DF

echo ""
echo "✅ 讲师交付项目初始化完成: $TARGET (kind=$KIND)"
echo "  - workspace 指向该目录，DSH 选「讲师模式」即可开始。"
echo "  - 先写 script/outline.md → speaker-notes.md，再做 PPT/视频；讲稿是真源。"
