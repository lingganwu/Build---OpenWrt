# Redmi AX6000 专用 OpenWrt 自动编译仓库

本仓库的 GitHub Actions 预设全部聚焦 **红米 AX6000**，仅保留官方与 UBootMod 两个分支机型；插件仅预置 **Passwall 及其依赖**，无其它多余组件，便于快速得到精简固件。

支持的源码流：
- 官方 openwrt
- coolsnowwolf/lede
- Lienol/openwrt
- immortalwrt/immortalwrt
- x-wrt/x-wrt

## 快速开始
1. Fork 本仓库并进入上方 **Actions**。
2. 选择需要的流程（如 `build openwrt`、`build lede` 等），点击 **Run workflow**。
3. 在下拉框里选择 `redmi-ax6000` 或 `redmi-ax6000-ubootmod`，直接运行即可，流程结束后在页面下载固件。

> 如果要调整源码分支或定制 Patch，请修改对应 `preset-*/1.clone.sh`、`1.config`（Passwall 相关已选好）。

## 常见说明
- 只针对红米 AX6000，不提供其他机型配置；若需新增机型请自行扩展 templet 示例。
- 默认配置是最小化方案 + Passwall，如需额外插件请手动增选并确保依赖。
- Actions 生成的固件不会自动同步到你的其他仓库；需要时请在 GitHub 点击 **Sync fork** 或使用 `git pull`/`git push` 推送到目标仓库。

## 预设目录速览
- `preset-openwrt/`
- `preset-lede/`
- `preset-lienol-openwrt/`
- `preset-immortalwrt/`
- `preset-x-wrt/`

上述目录下的 `headers.json` 描述机型；`1.clone.sh` 拉取源码与 Passwall；`1.config`、`2.config` 对应裁剪后的 `.config` 模板。

喜欢的话记得 Star 支持，感谢！
