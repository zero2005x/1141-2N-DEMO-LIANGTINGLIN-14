# PowerShell 腳本：建立資料庫和資料表
# 使用方法：.\setup_db.ps1

Write-Host "=== 開始建立 PostgreSQL 資料庫 ===" -ForegroundColor Green

# 步驟 1: 建立資料庫
Write-Host "`n步驟 1: 建立資料庫 wp1_quiz1_14..." -ForegroundColor Yellow
psql -U postgres -c "CREATE DATABASE wp1_quiz1_14;" 2>$null
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ 資料庫建立成功" -ForegroundColor Green
} else {
    Write-Host "! 資料庫可能已存在，繼續執行..." -ForegroundColor Yellow
}

# 步驟 2: 執行 SQL 腳本
Write-Host "`n步驟 2: 建立資料表並插入資料..." -ForegroundColor Yellow
psql -U postgres -d wp1_quiz1_14 -f setup_database.sql

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✓ 資料表建立成功！" -ForegroundColor Green
} else {
    Write-Host "`n✗ 發生錯誤，請檢查上方訊息" -ForegroundColor Red
    exit 1
}

# 步驟 3: 驗證資料
Write-Host "`n步驟 3: 驗證資料..." -ForegroundColor Yellow
Write-Host "`n檢查 blog_14 資料表：" -ForegroundColor Cyan
psql -U postgres -d wp1_quiz1_14 -c "SELECT COUNT(*) as blog_count FROM blog_14;"

Write-Host "`n檢查 tour_14 資料表：" -ForegroundColor Cyan
psql -U postgres -d wp1_quiz1_14 -c "SELECT COUNT(*) as tour_count FROM tour_14;"

Write-Host "`n=== 資料庫設定完成！ ===" -ForegroundColor Green
Write-Host "你現在可以啟動後端伺服器了：" -ForegroundColor Yellow
Write-Host "  cd server_14" -ForegroundColor Cyan
Write-Host "  npm run dev" -ForegroundColor Cyan
