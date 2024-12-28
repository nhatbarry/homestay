INSERT INTO NguoiDung (tenDangNhap, matKhau, email, diaChi, soDienThoai, vaiTro) VALUES
('user1', 'pass1', 'user1@example.com', 'Address 1', '0123456789', 'customer'),
('user2', 'pass2', 'user2@example.com', 'Address 2', '0123456790', 'customer'),
('user3', 'pass3', 'user3@example.com', 'Address 3', '0123456791', 'customer'),
('user4', 'pass4', 'user4@example.com', 'Address 4', '0123456792', 'customer'),
('user5', 'pass5', 'user5@example.com', 'Address 5', '0123456793', 'customer'),
('user6', 'pass6', 'user6@example.com', 'Address 6', '0123456794', 'customer'),
('user7', 'pass7', 'user7@example.com', 'Address 7', '0123456795', 'customer'),
('user8', 'pass8', 'user8@example.com', 'Address 8', '0123456796', 'customer'),
('user9', 'pass9', 'user9@example.com', 'Address 9', '0123456797', 'customer'),
('user10', 'pass10', 'user10@example.com', 'Address 10', '0123456798', 'manager');
go
INSERT INTO Homestay (tenHomestay, diaChi, maChuNha) VALUES
('Homestay 1', 'Location 1', 1),
('Homestay 2', 'Location 2', 2),
('Homestay 3', 'Location 3', 3),
('Homestay 4', 'Location 4', 4),
('Homestay 5', 'Location 5', 5),
('Homestay 6', 'Location 6', 6),
('Homestay 7', 'Location 7', 7),
('Homestay 8', 'Location 8', 8),
('Homestay 9', 'Location 9', 9),
('Homestay 10', 'Location 10', 10);
go
INSERT INTO Phong (loaiPhong, giaPhong, trangThai, maHomestay) VALUES
('Single', 100.0, 'Available', 1),
('Double', 150.0, 'Available', 1),
('Suite', 200.0, 'Booked', 2),
('Single', 100.0, 'Available', 3),
('Double', 150.0, 'Available', 4),
('Suite', 200.0, 'Booked', 5),
('Single', 100.0, 'Available', 6),
('Double', 150.0, 'Available', 7),
('Suite', 200.0, 'Available', 8),
('Single', 100.0, 'Booked', 9);
go
INSERT INTO ThanhToan (maNguoiDung, maPhong, ngayThanhToan, soTien) VALUES
(1, 1, '2024-01-01', 100.0),
(2, 2, '2024-01-02', 150.0),
(3, 3, '2024-01-03', 200.0),
(4, 4, '2024-01-04', 100.0),
(5, 5, '2024-01-05', 150.0),
(6, 6, '2024-01-06', 200.0),
(7, 7, '2024-01-07', 100.0),
(8, 8, '2024-01-08', 150.0),
(9, 9, '2024-01-09', 200.0),
(10, 10, '2024-01-10', 100.0);
go
INSERT INTO DatPhong (maPhong, ngayNhanPhong, trangThai) VALUES
(1, '2024-01-11', 'Confirmed'),
(2, '2024-01-12', 'Confirmed'),
(3, '2024-01-13', 'Pending'),
(4, '2024-01-14', 'Confirmed'),
(5, '2024-01-15', 'Cancelled'),
(6, '2024-01-16', 'Confirmed'),
(7, '2024-01-17', 'Pending'),
(8, '2024-01-18', 'Confirmed'),
(9, '2024-01-19', 'Cancelled'),
(10, '2024-01-20', 'Confirmed');
go