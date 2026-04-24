# 🍎 NLBW-VPS：极致性价比云端加速方案

![Platform](https://img.shields.io/badge/Platform-Back4App-0071e3?style=flat-square)
![Core](https://img.shields.io/badge/Core-Sing--box-black?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)

基于 **Back4App** 容器引擎与 **Sing-box** 内核实现的个人专属加速节点。利用亚马逊云（AWS）原生 IP，实现极致纯净的网络访问体验。

## 🚀 核心优势

* **零成本 (Zero Cost)**：无需实名，无需信用卡，完全白嫖大厂资源。
* **原生 IP**：提供高质量 AWS 美国原生 IP，完美解锁 Gemini、ChatGPT、Netflix 及 Disney+。
* **高性能**：支持 YouTube 4K 秒开，带宽表现优异。
* **极简部署**：代码结构化设计，支持 GitHub 联动一键部署。

---

## 🛠️ 快速开始

### 1. 准备配置文件
在仓库根目录下确保包含以下两个核心文件：
* `Dockerfile`：定义环境镜像及内核下载逻辑。
* `config.json`：配置 VLESS 协议及 UUID 标识。

> **注意**：请务必在 `config.json` 中将 `uuid` 替换为您自己的标准 UUID v4 字符串。

### 2. 部署至 Back4App
1.  登录 [Back4App 官网](https://www.back4app.com/)，选择 **Containers**。
2.  关联此 GitHub 仓库。
3.  设置部署名称并启动，系统将自动生成 `xxx.b4a.run` 域名。

### 3. 客户端连接
使用以下 VLESS 链接模板导入您的客户端：
```text
vless://您的UUID@您的域名:443?encryption=none&security=tls&type=ws&host=您的域名&path=%2fchat&sni=您的域名#NLBW_AWS_Free
```
## 🛡️ 稳定性保障 (保活机制)
### 由于 Back4App 免费层级存在 60 分钟休眠机制，建议配合以下方案实现 24/7 在线：

1.  监控保活：使用 Cron-job.org。

2.  设置任务：创建一个每 15 分钟访问一次您的域名（https://xxx.b4a.run）的任务。

3.  效果：持续触发 HTTP 请求，重置休眠计时器，保持节点常驻。

## 📂 项目结构

.
* **├── Dockerfile          # 容器构建脚本 (基于 Alpine)**
* **├── config.json        # Sing-box 核心配置文件**
* **└── README.md          # 项目说明文档**
### ⚖️ 免责声明
### 本项目仅供技术研究与个人学习使用，请遵守当地法律法规。

### Designed by NLBW Studio 🧠
