# 🩺 智慧藥盒系統 Smart Pillbox IoT

> 結合 AIoT 技術的智慧藥盒管理系統，透過感測器偵測用藥狀況，並即時通知使用者，確保正確按時服藥。

---

## 📌 專案簡介

智慧藥盒系統利用 ESP32 微控制器搭配各式感測器，自動記錄與提醒用藥時間。系統將感測資料透過 Wi-Fi 傳送至後端伺服器，並透過網頁儀表板即時視覺化呈現用藥狀況。

---

## 🛠️ 技術架構

```
[ESP32 硬體端]
    │
    │  HTTP / MQTT
    ▼
[Flask 後端伺服器]
    │
    │  SQLite3 資料庫
    ▼
[Streamlit 儀表板]
```

| 層級 | 技術 |
|------|------|
| 硬體端 | ESP32、DHT11、光感測器、蜂鳴器 |
| 通訊協定 | HTTP POST / MQTT |
| 後端伺服器 | Python Flask |
| 資料庫 | SQLite3 |
| 前端儀表板 | Streamlit |

---

## 📁 專案結構

```
smart-pillbox-iot/
├── README.md
├── 智慧藥盒系統.pptx       # 專案簡報
├── esp32/                  # ESP32 韌體程式
├── server/                 # Flask 後端伺服器
│   ├── flask_server.py
│   └── aiotdb.db
├── dashboard/              # Streamlit 儀表板
│   └── dashboard.py
└── simulator/              # ESP32 模擬器（測試用）
    └── esp32_sim.py
```

---

## 🚀 快速開始

### 環境需求

- Python 3.8+
- Node.js 18+ (for OpenSpec tooling)
- ESP32 開發板

### 安裝依賴

```bash
pip install flask streamlit requests
```

### 啟動後端伺服器

```bash
python server/flask_server.py
```

### 啟動儀表板

```bash
streamlit run dashboard/dashboard.py
```

### 執行模擬器（無硬體時）

```bash
python simulator/esp32_sim.py
```

---

## ⚙️ 功能特色

- ✅ 自動偵測藥盒開關狀態
- ✅ 即時推播用藥提醒通知
- ✅ 歷史用藥紀錄查詢
- ✅ 網頁儀表板即時監控
- ✅ 溫濕度環境監測（DHT11）
- ✅ 支援多格藥盒管理

---

## 👥 團隊成員

| 姓名 | 學號 | 負責項目 |
|------|------|----------|
| 王大成 | - | 系統整合 / 後端開發 |

---

## 📄 授權

This project is licensed under the MIT License.
