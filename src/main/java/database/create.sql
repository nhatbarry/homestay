drop database homestay
go
Create database homestay
go
use homestay
go
CREATE TABLE NguoiDung (
    maNguoiDung INT PRIMARY KEY identity(1, 1),
    tenDangNhap NVARCHAR(100),
    matKhau NVARCHAR(50),
    email NVARCHAR(50),
    diaChi NVARCHAR(255),
    soDienThoai NVARCHAR(15),
	vaiTro NVARCHAR(10) Check (vaiTro='Customer' or vaiTro='Manager')
);
go
CREATE TABLE Homestay (
    maHomestay INT PRIMARY KEY identity(1, 1),
    tenHomestay NVARCHAR(100),
    diaChi NVARCHAR(255),
    maChuNha INT,
    FOREIGN KEY (maChuNha) REFERENCES NguoiDung(maNguoiDung)
);
go
CREATE TABLE Phong (
    maPhong INT PRIMARY KEY identity(1, 1),
    loaiPhong NVARCHAR(50),
    giaPhong FLOAT,
    trangThai NVARCHAR(50),
    maHomestay INT,
    FOREIGN KEY (maHomestay) REFERENCES Homestay(maHomestay)
);
go
CREATE TABLE ThanhToan (
    maThanhToan INT PRIMARY KEY identity(1, 1),
    maNguoiDung INT,
    maPhong INT,
    ngayThanhToan DATE,
    soTien FLOAT,
    FOREIGN KEY (maNguoiDung) REFERENCES NguoiDung(maNguoiDung),
    FOREIGN KEY (maPhong) REFERENCES Phong(maPhong)
);
go
CREATE TABLE DatPhong (
    maDatPhong INT PRIMARY KEY identity(1, 1),
    maPhong INT,
    ngayNhanPhong DATE,
    trangThai NVARCHAR(50),
    FOREIGN KEY (maPhong) REFERENCES Phong(maPhong)
);
go