# BÀI LÀM – HACKATHON 02

- **Mã đề:** 06
- **Họ tên:**Nguyễn Thế Huy
- **Lớp:**
- **Link repository:**https://github.com/mrwe08/HN-KS26-CNTT3_Nhap-mon-CNTT_Hackathon02
- **Hệ điều hành (Windows/macOS):**macOS

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -a
mv yeu_cau_khach_hang.txt docs
mkdir backup
cp data/don_in_thang_6.xlsx backup
rm temp_606.tmp
cd logs
ls
cd ..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
.		.env		data		logs
..		backup		docs		web
.DS_Store	bai_lam.md	evidence

./backup:
.			..			don_in_thang_6.xlsx

./data:
.			..			don_in_thang_6.xlsx

./docs:
.			..			yeu_cau_khach_hang.txt

./evidence:
.	..

./logs:
.		..		order.log

./web:
.		app.js		index.html
..		images		style.css

./web/images:
.			..			logo-printnow.png

```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
cat logs/order.log|grep "500" > logs/loi_500.txt
head -2 logs/loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-06-28 08:15:01 POST /api/thanh-toan status=500
2026-06-28 08:34:07 POST /api/tai-file status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
cat logs/order.log | grep "404" |wc -l

```

```text
       4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
./tong_hop.sh

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===
2026-06-28 08:08:39 GET /mau-tet-cu status=404
2026-06-28 08:19:12 GET /images/poster-2.jpg status=404
2026-06-28 08:23:23 GET /images/poster-2.jpg status=404
2026-06-28 08:54:24 GET /tin-tuc status=404
       6


```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 |Network  |logo.jpg  |sửa lại đường dẫn logo.jpg thành logo-printnow.png  |
| 2 |Console  |Uncaught ReferenceError: hienThiSanPham is not defined  |ở dòng số 18 sửa hienThiSanPham thành hienThiSanPhamIn  |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- ****Context:**** Tôi là sinh viên năm nhất chưa fix lỗi hiển thị dữ liệu của web bao giờ 
- ****Expected:**** Bây giờ trang web xưởng in của tôi muốn có đủ dữ liệu ở bảng hiển thị giao diện
- ****Actual:**** Dữ liệu trên trang web không có gì và tôi vào tab console thấy thông báo lỗi app.js:18 Uncaught ReferenceError: hienThiSanPham is not defined  
- ****Log:**** app.js:18 Uncaught ReferenceError: hienThiSanPham is not defined

### Câu tìm kiếm Google

```text
site:[stackoverflow.com](http://stackoverflow.com) "Uncaught ReferenceError"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_in_thang_6.xlsx`, không cần ghi vào đây.
