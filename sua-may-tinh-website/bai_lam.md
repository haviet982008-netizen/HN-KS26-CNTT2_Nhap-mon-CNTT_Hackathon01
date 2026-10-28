# BÀI LÀM – HACKATHON 01

- **Mã đề:** 16
- **Họ tên:** Tạ Hà Việt
- **Lớp:** CNTT2
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -force
mv .\quy_dinh_bao_hanh.txt .\docs\
mv .\logo_sua_may_tinh.PNG .\media\
cp .\media\logo_sua_may_tinh.PNG backup
rm .\temp_241.tmp
cd .\logs\
ls -force
cd ..
Get-ChildItem -Recurse -Force
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text

    Directory: C:\Users\Ha Viet\OneDrive\Desktop\sua-may-tinh-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
dar--l        10/28/2026   1:39 PM                backup
dar--l        10/28/2026   1:36 PM                data
dar--l        10/28/2026   1:38 PM                docs
dar--l        10/28/2026   1:36 PM                logs
dar--l        10/28/2026   1:39 PM                media
dar--l        10/28/2026   1:37 PM                Sua May Tinh Website
                                                  FINAL
-a---l        10/27/2026   1:32 AM           2225 bai_lam.md


    Directory: C:\Users\Ha
    Viet\OneDrive\Desktop\sua-may-tinh-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l        10/27/2026   1:32 AM           6767 logo_sua_may_tinh.PNG


    Directory: C:\Users\Ha Viet\OneDrive\Desktop\sua-may-tinh-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l        10/27/2026   1:32 AM           6101 phieu_sua_thang_6.xlsx


    Directory: C:\Users\Ha Viet\OneDrive\Desktop\sua-may-tinh-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l        10/27/2026   1:32 AM             61 quy_dinh_bao_hanh.txt


    Directory: C:\Users\Ha Viet\OneDrive\Desktop\sua-may-tinh-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l        10/27/2026   1:32 AM           1069 repair.log


    Directory: C:\Users\Ha Viet\OneDrive\Desktop\sua-may-tinh-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l        10/27/2026   1:32 AM           6767 logo_sua_may_tinh.PNG


    Directory: C:\Users\Ha Viet\OneDrive\Desktop\sua-may-tinh-website\Sua
    May Tinh Website FINAL


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l        10/27/2026   1:32 AM             72 .env



```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
get-content logs/repair.log | select-string "ERROR" >> logs/daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-06-28 08:57:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:01:31 [ERROR] Thanh toan bi tu choi

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ x ] Heading 1: tên dự án
- [ x ] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [ x ] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [ x ] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [ x ] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [ x ] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
#Script: auto_report.ps1
#Tac gia: Ta Ha Viet
#Ngay tao: 28/10/2026

Write-Host "Đang loc log..."

"===BAO CAO LOI===" > logs/auto_report.txt
get-content logs/repair.log |select-string "ERROR" >> logs/auto_report.txt

write-host "Hoan thanh!"

```

### Kết quả hiển thị

```text
===BAO CAO LOI===

2026-06-28 08:57:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:01:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:05:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:17:31 [ERROR] Khong tim thay trang /tra-cuu (404)
2026-06-28 09:33:31 [ERROR] Khong tim thay trang /tra-cuu (404)
2026-06-28 09:37:31 [ERROR] Khong tim thay trang /tra-cuu (404)



```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
 (get-content .\logs\repair.log | select-string "ERROR").count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
6

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
>> "===TONG HOP LOG===" >.\logs\tong_hop.txt
>> get-content .\logs\repair.log |select-string "WARNING" >> .\logs\tong_hop.txt
>> (get-content .\logs\repair.log|select-string "ERROR").count >>  .\logs\tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
===TONG HOP LOG===

2026-06-28 08:33:31 [WARNING] Anh chup may dung luong lon
2026-06-28 08:37:31 [WARNING] Thoi gian phan hoi cham
2026-06-28 08:45:31 [WARNING] Linh kien RAM sap het
2026-06-28 09:09:31 [WARNING] Anh chup may dung luong lon


6


```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/phieu_sua_thang_6.xlsx`, không cần ghi vào đây.
