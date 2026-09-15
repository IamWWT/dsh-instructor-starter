---
title: FILE_INDEX — dsh-instructor-starter
type: index
status: active
version: 1.0.0
date: 2026-09-15
---

# FILE_INDEX — dsh-instructor-starter

## 根目录
- AGENTS.md — 讲师模式总纲
- README.md / MANUAL.md / MEMORY.md / LICENSE / .gitignore

## presets/instructor/
- presets/instructor/preset.yml
- presets/instructor/agent.cordis.yml（persona + 工具集 + skill-filesystem）
- presets/instructor/skills/README.md
- presets/instructor/skills/presentation-craft/SKILL.md — 课件/PPT（讲稿真源）
- presets/instructor/skills/voice-video/SKILL.md — 配音/字幕/录屏/剪辑
- presets/instructor/skills/rehearsal/SKILL.md — 演练交付
- presets/instructor/skills/competition-defense/SKILL.md — 竞赛答辩细分

## scripts/
- scripts/install-dsh.sh — 安装 preset+skills
- scripts/init-instructor.sh — 生成培训/答辩项目骨架（--kind training|defense）

## prompts/
- prompts/make-ppt.md — 制作培训 PPT
- prompts/make-video.md — 制作讲解视频
- prompts/rehearse.md — 完整演练

## docs/
- docs/FILE_INDEX.md — 本文件
