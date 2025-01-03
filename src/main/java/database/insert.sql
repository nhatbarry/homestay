﻿INSERT INTO NguoiDung (tenDangNhap, matKhau, email, diaChi, soDienThoai, vaiTro) VALUES
('user1', 'pass1', 'user1@example.com', 'Address 1', '0123456789', 'customer'),
('user2', 'pass2', 'user2@example.com', 'Address 2', '0123456790', 'customer'),
('user3', 'pass3', 'user3@example.com', 'Address 3', '0123456791', 'customer'),
('user4', 'pass4', 'user4@example.com', 'Address 4', '0123456792', 'customer'),
('admin1', 'pass1', 'user5@example.com', 'Address 5', '0123456793', 'manager'),
('admin2', 'pass2', 'user6@example.com', 'Address 6', '0123456794', 'manager'),
('admin3', 'pass3', 'user7@example.com', 'Address 7', '0123456795', 'manager'),
('admin4', 'pass4', 'user8@example.com', 'Address 8', '0123456796', 'manager'),
('admin5', 'pass5', 'user9@example.com', 'Address 9', '0123456797', 'manager'),
('admin6', 'pass6', 'user10@example.com', 'Address 10', '0123456798', 'manager'),
('admin7', 'pass7', 'user10@example.com', 'Address 10', '0123456798', 'manager'),
('admin8', 'pass8', 'user10@example.com', 'Address 10', '0123456798', 'manager'),
('admin9', 'pass9', 'user10@example.com', 'Address 10', '0123456798', 'manager'),
('admin10', 'pass10', 'user10@example.com', 'Address 10', '0123456798', 'manager');

go
INSERT INTO Homestay (tenHomestay, diaChi, maChuNha) VALUES
(N'Lii’s Homestay', N'9C, ngách 12/2 Đặng Thai Mai, phường Quảng An, quận Tây Hồ, thành phố Hà Nội', 1)
, (N'Nhà Của Bu', N'12A Lý Nam Đế, phường Hàng Mã, quận Hoàn Kiếm, Hà Nội', 2)
, (N'Dadia', N'13 Nguyễn Khắc Cần, phường Phan Chu Trinh, quận Hoàn Kiếm, thành phố Hà Nội', 3)
, (N'Nhà Bên Rừng', N'Thôn Lâm Trường, Xã Minh Phú, Sóc Sơn, Hà Nội', 4)
, (N'Le Bleu Indie Apartment Hà Nội', N'số 116 Ngõ 10, Đường Nguyên Hồng, Thành Công, Ba Đình, Hà Nội', 5)
, (N'Cá Homestay Hà Nội', N'121 Đại La, phường Trương Định, quận Hai Bà Trưng, thành phố Hà Nội', 6)
, (N'Veque Villa Homestay Hà Nội', N'21B Xóm Hạ Hồi, phường Trần Hưng Đạo, quận Hoàn Kiếm, thành phố Hà Nội', 7)
, (N'Sazi Homestay Hà Nội', N'75 Hàng Bông, phường Hàng Bông, quận Hoàn Kiếm, thành phố Hà Nội', 8)
, (N'Mộng Homestay Hà Nội', N' 4/9 ngõ 435 Hồng Hà, phường Phúc Tân, quận Hoàn Kiếm, thành phố Hà Nội', 9)
, (N'City Center & Good Security Area ', N'Số 8 ngõ 77 Lê Hồng Phong, Ba Đình, Hà Nội', 10)
go
INSERT INTO Phong (loaiPhong, giaPhong, trangThai, maHomestay) VALUES
('Single', 100.0, 'Available', 1),
('Double', 150.0, 'Available', 1),
('Suite', 200.0, 'Available', 2),
('Single', 100.0, 'Available', 3),
('Double', 150.0, 'Available', 4),
('Suite', 200.0, 'Available', 5),
('Single', 100.0, 'Available', 6),
('Double', 150.0, 'Available', 7),
('Suite', 200.0, 'Available', 8),
('Single', 100.0, 'Available', 9);
go

