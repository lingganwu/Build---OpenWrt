# Redmi AX6000 专用 OpenWrt 自动编译仓库

本仓库的全部 GitHub Actions 预设均 **只面向红米 AX6000**，并分为官方与 UBootMod 两套机型。插件仅预置 **Passwall 及其依赖**，去掉其他多余组件，方便直接产出精简固件。

## 仓库特点
- **单一机型聚焦**：仅包含 `redmi-ax6000` 与 `redmi-ax6000-ubootmod`，默认不编译其他设备。
- **Passwall-only**：源码拉取脚本只克隆 Passwall 及必要依赖，其余插件和主题全部移除。
- **多套源码可选**：提供官方 openwrt、coolsnowwolf/lede、Lienol/openwrt、immortalwrt/immortalwrt、x-wrt/x-wrt 的预设，可按需切换。
- **配置可继承**：`templet/` 提供示例，可参考自定义新的机型或插件组合。

## 快速使用
1. **Fork** 本仓库后进入上方 **Actions**，启用工作流。
2. 选择对应流程（如 `build openwrt`、`build lede` 等），点击 **Run workflow**。
3. 在下拉框中选择 `redmi-ax6000` 或 `redmi-ax6000-ubootmod`，保持默认即可运行，完成后在同一页面下载固件。

> 若需修改源码分支或附加补丁，请编辑对应目录下的 `1.clone.sh`、`2.config`，Passwall 相关选项已预置。

## 目录说明
- `preset-openwrt/`
- `preset-lede/`
- `preset-lienol-openwrt/`
- `preset-immortalwrt/`
- `preset-x-wrt/`

每个目录均包含：
- `headers.json`：机型描述与默认选择项。
- `1.clone.sh`：克隆指定源码与 Passwall 依赖。
- `2.config`：裁剪后的 `.config` 模板（当前预设只保留这一份）。

## 自定义与扩展
- 只想改默认主题或附加插件：直接在对应 `2.config` 中增删选项，确保依赖完整。
- 想新增其他机型：复制 `templet/` 示例或现有预设目录，调整 `headers.json` 与配置条目。
- 调整编译参数：可在工作流运行前，先在本地用同一 `.config` 进行 `make menuconfig` 验证。

## 同步到你的仓库
Actions 生成的固件不会自动同步到其他仓库。若需合并或备份本仓库的改动，请使用 GitHub 的 **Sync fork** 按钮，或在本地 `git pull`/`git push` 手动推送到你的目标仓库。
