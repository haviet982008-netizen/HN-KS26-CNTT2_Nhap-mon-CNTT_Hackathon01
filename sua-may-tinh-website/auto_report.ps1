#Script: auto_report.ps1
#Tac gia: Ta Ha Viet
#Ngay tao: 28/10/2026

Write-Host "Đang loc log..."

"===BAO CAO LOI===" > logs/auto_report.txt
get-content logs/repair.log |select-string "ERROR" >> logs/auto_report.txt

write-host "Hoan thanh!"