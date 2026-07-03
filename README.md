# AI Skills

这个仓库用于保存自媒体内容相关 Skills 的索引与调用说明。

来源仓库：`dvcrn/openclaw-skills-marketplace`
固定版本：`67b1c2373b5ad4a345051bc48b47ca2a5d8f933c`

## 已安装索引

1. `content-writer`：多平台内容生成
2. `content-creator-cn`：中文内容创作助手
3. `content-agency`：AI 内容创作专家团
4. `content-hunter`：热门内容抓取/观察框架
5. `content-deai-engine`：去 AI 味内容引擎
6. `content-repurpose-studio`：一稿多发/多平台复用
7. `content-ops`：内容运营自动化
8. `content-analytics`：内容数据分析
9. `content-analyzer`：具体内容/视频/笔记分析
10. `content-goldmine`：爆款拆解与选题金矿

## ChatGPT 调用方式

你后续可以直接说：

- `用 content-deai-engine 帮我把这段去 AI 味`
- `用 content-goldmine 拆一下这个爆款`
- `用 content-repurpose-studio 把这篇一稿多发`
- `用 content-agency 的小红书专家模式写一版`

我会根据 `skills/sources.json` 里的路径读取对应 SKILL 并执行。

## 说明

这里先安装为“GitHub 索引版”：保存每个 Skill 的固定来源、路径和用途。这样不会因为上游仓库变化导致找不到。若要做成本地 Claude / OpenClaw 自动识别版，再把对应目录复制到本地 `~/.claude/skills` 或 OpenClaw skills 目录即可。
