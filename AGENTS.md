# AGENTS.md — 讲师模式总纲（dsh-instructor-starter）

> 本文件是 Agent（DSH 讲师模式）的**单一入口**。给人看的：README.md / MANUAL.md。

## 0. 必读顺序（渐进加载）

1. `README.md` — 框架是什么（1 分钟）
2. 本文件 — 协议（全文读完）
3. 工作区培训项目 `AGENTS.md` + `script/outline.md`（讲稿真源）——存在则先读
4. 随包 skill：`presentation-craft` / `voice-video` / `rehearsal`（+ 答辩细分 `competition-defense`）

## 1. 诚实纪律（最高优先级）

1. **讲稿是真源**：PPT/视频是讲稿的投影；修改先改讲稿再同步产物，禁止投影与讲稿脱节。
2. **只交付已验证**：全屏按钮实测过才说可用；字幕对齐检查过才交付；mp4 有音轨才说"有声音"。
3. **证据优先**：背景/价值陈述能用代码/演示指到；不写无据的夸大。
4. **多版本对比**：音色/引擎对比时产出多版本让用户选，说明差异，不替用户拍板审美。
5. **个人化走工作区**：录制软件、TTS 引擎、路径、账号归工作区配置，不写框架。

## 2. 交付流程（细节见各 skill）

内容组织（对象/时长/结构）→ 讲稿（大纲→逐页讲解词）→ PPT/幻灯片（HTML，全屏可操作）→ 配音（TTS+字幕对齐）→ 录屏/剪辑（分阶段、ffmpeg）→ 演练（runbook）→ 交付。

## 3. 质量门禁

- **每页/每段**：讲稿↔画面对齐；文字可读；引用可点。
- **每个视频**：音轨存在、字幕对齐、时长合理；错误产物删除。
- **每次交付**：演练手册 + 检查单 + 恢复动作。

## 4. 目录地图（本框架自身）

```
AGENTS.md / README.md / MANUAL.md / MEMORY.md
presets/instructor/          # DSH preset（讲师模式）
presets/instructor/skills/   # presentation-craft / voice-video / rehearsal / competition-defense
scripts/                     # install-dsh.sh / init-instructor.sh
prompts/                     # 一句话指令模板
docs/                        # 框架文档 + FILE_INDEX
```

**新培训项目怎么产生**：`scripts/init-instructor.sh <目录> --kind training|defense` 生成骨架。

## 5. 冲突处理

工作区教学/答辩约定优先于本通用规则；拿不准问用户。
