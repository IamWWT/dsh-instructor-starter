# dsh-instructor-starter — 讲师模式框架（DSH）

> 通用讲师 Agent 框架：对外培训/答辩的完整交付（课件、PPT、讲解视频、配音、剪辑、演练）。与 dsh-engineering-starter 同族：DSH 专属 preset + 随包 skills + 一键安装，通用化、无机器路径。

## 快速开始

```bash
scripts/install-dsh.sh                           # 装 preset → $DSH_HOME/.agent-presets/instructor/
scripts/init-instructor.sh ~/talks/x --kind training   # 培训项目骨架
scripts/init-instructor.sh ~/defense/veinmap --kind defense   # 答辩细分骨架
# DSH 新会话 → 选「讲师模式」→ workspace 指向项目 → 描述需求
```

## 设计哲学（借鉴 presenter / LearnDeck / lecture-slides / talksmith 开源共识）

- **讲稿是真源**：`script/outline.md` + `speaker-notes.md` 是唯一真源，PPT/视频是投影；修改先改讲稿。
- **知识先于版式**：先整理内容（大纲/要点/证据），再谈美化。
- **画面与讲解对齐**：讲到哪里演示到哪里；字幕/配音/画面三对齐。
- **多版本对比**：音色/引擎多版本让用户选（答辩实战教训：女声/男声/不同 TTS 对比）。
- **演练交付**：完整 runbook（打开什么/说什么/做什么 + 恢复动作），拒绝泛泛而谈。

## 四 skills

| skill | 能力 |
|---|---|
| presentation-craft | 大纲→讲稿→HTML 幻灯片；全屏可操作/文字可读/引用可点/动画不超量 |
| voice-video | TTS 配音、字幕三对齐、录屏（OBS/vokoscreen/ffmpeg）、剪辑合成 |
| rehearsal | 演练步骤表、口播稿映射、现场操作、恢复动作 |
| competition-defense | 竞赛答辩细分：赛道标准对齐、演示视频、评委问答预案 |

## License

Apache-2.0
