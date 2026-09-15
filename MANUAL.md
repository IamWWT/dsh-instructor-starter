# MANUAL — dsh-instructor-starter 使用手册

## 1. 安装

```bash
scripts/install-dsh.sh                   # preset → $DSH_HOME/.agent-presets/instructor/
scripts/install-dsh.sh --uninstall       # 卸载（保留备份）
```

## 2. 新建交付项目

```bash
scripts/init-instructor.sh ~/talks/x --kind training    # 培训/公开课
scripts/init-instructor.sh ~/defense/y --kind defense   # 竞赛答辩
```

生成 script/{outline,speaker-notes,qa-prep}.md + slides/ + media/{voice,subtitles,video} + rehearsal/{runbook,checklist}.md。

## 3. 工作流

1. 写大纲（script/outline.md）→ 逐页讲解词（speaker-notes.md）。
2. 生成 HTML 幻灯片（slides/），自检全屏/字体/版面/引用。
3. 配音（TTS）→ 字幕 → 录屏 → 剪辑合成 mp4（多音色版本对比）。
4. 演练：按 rehearsal/runbook.md 走一遍，确认恢复动作。
5. 交付：打包产物 + 演练手册。

## 4. 常见问题

| 问题 | 答案 |
|---|---|
| 配音工具？ | 本地 TTS/STT（atts_* / atc_*）或工作区配置的引擎；多模型对比产出多版本 |
| 录屏软件？ | OBS / vokoscreen-ng / ffmpeg（本机安装情况归工作区配置） |
| 讲稿与 PPT 不一致？ | 讲稿是真源——改 speaker-notes.md 再同步幻灯片 |
| 答辩细分？ | --kind defense 生成 defense/ 目录，用 competition-defense skill |
| 需要重启？ | 不需要，新会话生效 |
