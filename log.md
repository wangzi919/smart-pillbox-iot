# 📋 專題報告製作 Log

## 專案資訊
- **主題**：智慧藥盒 IoT 專題報告
- **日期**：2026-04-18
- **工具鏈**：Claude → Gamma

---

## Step 1｜與 Claude 討論並生成報告文件

**時間**：2026-04-18
**工具**：Claude (claude.ai)

### 使用者需求
提供智慧藥盒專題主題，要求 Claude 撰寫以下三章節：
1. **Introduction**（含 Attention Getter / Challenge / Cure / Development / Experiments / Findings 結構）
2. **Related Work**
3. **Proposed Design / 規格書**

### 專題核心功能
- 根據設定時間範圍未吃藥提醒（含 LINE 訊息通知家屬）
- 微震動分析：MPU6050 偵測「手抖」與「動作遲緩」
- ESP32 本地執行 FFT 演算法，提取 4–6 Hz 震顫特徵值
- Python Flask 後端接收數據、管理排程、觸發警報

### Claude 產出
- 輸出格式：`.docx` Word 文件
- 檔案名稱：`智慧藥盒_IoT專題報告.docx`
- 內容規模：331 個段落，含多張規格對照表
- 驗證結果：All validations PASSED

---

## Step 2｜將 .docx 餵給 Gamma 製作簡報

**時間**：2026-04-18
**工具**：[Gamma](https://gamma.app)

### 操作流程
1. 開啟 [gamma.app](https://gamma.app)
2. 選擇「Import」或「Generate from document」功能
3. 上傳 `智慧藥盒_IoT專題報告.docx`
4. 讓 Gamma 自動解析文件結構並生成簡報草稿
5. 依需求調整：主題風格、字體、配色、投影片順序
6. 匯出為 `.pptx` 或直接線上分享

### 注意事項
- Gamma 會自動依據 Heading 層級（H1/H2/H3）拆分投影片
- 建議在 Gamma 中手動確認以下章節是否正確分頁：
  - Introduction 的六個子段落（Motivation / Challenge / Cure / Development / Experiments / Findings）
  - Related Work 的各文獻段落
  - Proposed Design 的各規格表格
- 表格在 Gamma 中可能需要重新排版，建議選用「Wide」版型

---

## 工具鏈總覽

```
使用者需求
    │
    ▼
Claude (claude.ai)
  ├─ 撰寫三章節學術報告
  ├─ 生成規格書與對照表
  └─ 輸出 智慧藥盒_IoT專題報告.docx
    │
    ▼
Gamma (gamma.app)
  ├─ Import .docx
  ├─ 自動生成投影片結構
  └─ 輸出簡報（線上分享 / .pptx）
```

---

*Log generated on 2026-04-18*
