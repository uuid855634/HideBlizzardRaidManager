# Hide Blizzard Raid Manager

Hide Blizzard’s **Compact Party / Raid Frame Manager** (the small arrow panel on the left side of the screen).  
Clean your UI and fully control when it appears.

---

## 📌 English

### ✨ Features

- Hide Blizzard’s **Compact Party / Raid Frame Manager**
- Flexible modes:
  - Hide both Party & Raid
  - Hide Party only
  - Hide Raid only
  - Show all
- Persistent after `/reload`
- Works correctly with:
  - Group changes
  - Re-invites
  - Instance / raid transitions
- No external libraries (Ace-free)
- Lightweight and performance-friendly
- Compatible with Dragonflight / The War Within (12.0+)

---

### 🎮 Slash Commands

```text
/hbrm status
```
Query **Party & Raid** manager status

```text
/hbrm on
```
Hide **Party & Raid** manager

```text
/hbrm off
```
Show **Party & Raid** manager

```text
/hbrm party
```
Hide **Party** manager only (Raid shown)

```text
/hbrm raid
```
Hide **Raid** manager only (Party shown)

---

### 🛠 What does this addon hide?

This addon hides Blizzard’s built-in **CompactRaidFrameManager**,  
the expandable control panel with an arrow on the **left side of the screen**.

It does **NOT** hide:
- Party frames
- Raid frames
- Any third-party unit frame addons

---

### 🌍 Localization

Supported languages:
- **enUS / enGB** (default)
- **zhCN** (简体中文)
- **zhTW** (繁體中文)

Localization contributions are welcome!

---

### 📦 Notes

- Uses safe event handling to disable the Blizzard manager frame
- No taint, no protected function replacement
- Compatible with ElvUI and other custom unit frame addons

---

## 📌 中文说明（简体）

### ✨ 插件功能

- 隐藏暴雪自带的 **小队 / 团队管理面板**
- 支持多种模式：
  - 同时隐藏小队与团队
  - 仅隐藏小队
  - 仅隐藏团队
  - 完全显示
- `/reload` 后状态保持
- 多次组队 / 解散 / 切换副本依然生效
- 不依赖任何第三方库
- 轻量、稳定、无性能负担
- 兼容《巨龙时代》/《地心之战》（12.0+）

---

### 🎮 指令说明

```text
/hbrm status
```
查询 **团队** 管理面板当前隐藏状态

```text
/hbrm on
```
隐藏小队和团队管理面板

```text
/hbrm off
```
显示小队和团队管理面板

```text
/hbrm party
```
仅隐藏 **小队** 管理面板

```text
/hbrm raid
```
仅隐藏 **团队** 管理面板

---

### 🧩 本插件隐藏的是什么？

本插件隐藏的是暴雪默认 UI 中  
**左侧带箭头的小队 / 团队功能控制面板（CompactRaidFrameManager）**。

**不会影响：**
- 小队框体
- 团队框体
- 任何第三方头像或团队插件

---

### 🌍 多语言支持

当前支持语言：
- 英文（默认）
- 简体中文
- 繁体中文

欢迎提交其他语言的翻译！

---

### 📦 其他说明

- 插件通过安全方式禁用相关事件，不会产生污染（taint）
- 不修改任何受保护函数
- 与 ElvUI 等主流 UI 插件兼容

---

## ❤️ Feedback & Contributions

- 欢迎提交 Bug 反馈和功能建议
- 欢迎贡献多语言翻译
- 本插件专注于单一功能，保持简洁与稳定
