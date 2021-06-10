--
-- File generated with SQLiteStudio v3.3.2 on Mon May 17 17:07:08 2021
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: LICHSUTIMER
CREATE TABLE LICHSUTIMER (
    MANGUOIDUNG TEXT,
    THOIGIAN DATETIME,
    KHOANGTHOIGIAN TIME,
    DAHOANTHANH BOOL,
    PRIMARY KEY (MANGUOIDUNG, THOIGIAN)
);

-- Table: MUCTIEU
CREATE TABLE MUCTIEU (
    MAMUCTIEU TEXT PRIMARY KEY,
    MANGUOIDUNG TEXT,
    MANHOM TEXT,
    TENMUCTIEU TEXT,
    MOTA TEXT,
    NGAYBATDAU INTEGER,
    LOAIHINH TEXT,
    CACNGAY INTEGER,
    SOLAN INTEGER,
    KHOANGTHOIGIAN INTEGER
);

-- Table: NGUOIDUNG
CREATE TABLE NGUOIDUNG (
    MANGUOIDUNG TEXT PRIMARY KEY,
    TENTAIKHOAN TEXT,
    MATKHAU TEXT
);

-- Table: NHOMMUCTIEU
CREATE TABLE NHOMMUCTIEU (
    MANHOM TEXT PRIMARY KEY,
    MANGUOIDUNG TEXT,
    MAMUCTIEU TEXT,
    TENNHOM TEXT
);

-- Table: THANHTUU
CREATE TABLE THANHTUU (
    MATHANHTUU TEXT PRIMARY KEY,
    TENTHANHTUU TEXT,
    MOTA TEXT,
    CAPDO INTEGER,
    VANG INTEGER
);

-- Table: THANHTUUNGUOIDUNG
CREATE TABLE THANHTUUNGUOIDUNG (
    MATHANHTUU TEXT,
    MANGUOIDUNG TEXT,
    PRIMARY KEY (MATHANHTUU, MANGUOIDUNG)
);

-- Table: THONGKE
CREATE TABLE THONGKE (
    MAMUCTIEU TEXT,
    NGAYHOANTHANH INTEGER,
    PRIMARY KEY (MAMUCTIEU, NGAYHOANTHANH)
);

-- Table: THONGTINNGUOIDUNG
CREATE TABLE THONGTINNGUOIDUNG (
    MANGUOIDUNG TEXT PRIMARY KEY,
    HOTEN TEXT,
    ANH BLOB,
    VANG INTEGER,
    THONGBAO BOOL,
    THONGBAOSANG BOOL,
    THONGBAOTOI BOOL,
    THOIGIANTHONGBAOSANG TIME,
    THOIGIANTHONGBAOTOI TIME,
    DARKMODE BOOL,
    PRIVACYLOCK BOOL,
    LOCKPASSCODE TEXT
);

-- Table: TRICHDAN
CREATE TABLE TRICHDAN (
    MATRICHDAN TEXT PRIMARY KEY,
    TRICHDAN TEXT,
    TACGIA TEXT
);

-- Table: VATPHAM
CREATE TABLE VATPHAM (
    MAVATPHAM TEXT PRIMARY KEY,
    TENVATPHAM TEXT,
    MOTA TEXT,
    GIA INTEGER,
    DOHIEM INTEGER
);

-- Table: POKEMON
CREATE TABLE POKEMON (
    MAPOKEMON TEXT PRIMARY KEY,
    NAMEPOKEMON TEXT,
    MANGUOIDUNG TEXT,
    LEVELPOKEMON INTEGER,
    DOHIEM INTEGER
);


-- Table: VATPHAMNGUOIDUNG
CREATE TABLE VATPHAMNGUOIDUNG (
    MAVATPHAM TEXT,
    MANGUOIDUNG TEXT,
    PRIMARY KEY (MAVATPHAM, MANGUOIDUNG)
);



INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP01', 'Carpentry', '?', 450, 1);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP02', 'Electric', '?', 2200, 2);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP03', 'Fire', '?', 6500, 3);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP04', 'Ice',  '?', 10000, 4);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP05', 'Magic', '?', 600, 1);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP06', 'Rock', '?', 2000, 2);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP07', 'Sky', '?', 5500, 3);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP08', 'Water', '?', 11000, 4);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP09', 'Blue', '?', 330, 1);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP10', 'Cheese', '?', 3200, 2);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP11', 'Chocolate', '?', 6600, 3);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP12', 'Cream', '?', 10500, 4);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP13', 'DeepBlue',  '?', 200, 1);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP14', 'Demon', '?', 2900, 2);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP15', 'Diamod', '?', 4900, 3);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP16', 'Forest', '?', 15000, 4);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP17', 'Loli', '?', 160, 1);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP18', 'Silver',  '?', 3170, 2);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP19', 'Strawberry', '?', 4500, 3);
INSERT INTO VATPHAM (MAVATPHAM,TENVATPHAM,MOTA,GIA,DOHIEM) VALUES ('VP20', 'Sweety',  '?', 12500, 4);



INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT01', 'Blue', 'Trứng Blue', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT02', 'Carpentry', 'Trứng Carpentry', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT03', 'Cheese', 'Trứng Cheese', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT04', 'Chocolate', 'Trứng Chocolate', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT05', 'Cream', 'Trứng Cream', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT06', 'DeepBlue', 'Trứng DeepBlue', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT07', 'Demon', 'Trứng Demon', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT08', 'Diamod', 'Trứng Diamod', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT09', 'Electric', 'Trứng Electric', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT10', 'Fire', 'Trứng Fire', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT11', 'Forest', 'Trứng Forest', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT12', 'Ice', 'Trứng Ice', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT13', 'Loli', 'Trứng Loli', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT14', 'Magic', 'Trứng Magic', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT15', 'Rock', 'Trứng Rock', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT16', 'Silver', 'Trứng Silver', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT17', 'Sky', 'Trứng Sky',1,200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT18', 'Strawberry', 'Trứng Strawberry', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT19', 'Sweety', 'Trứng Sweety', 1, 200);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT20', 'Water', 'Trứng Water', 1, 200);

INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT21', 'Blue 2', 'Blue level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT22', 'Carpentry 2', 'Carpentry level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT23', 'Cheese 2', 'Cheese level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT24', 'Chocolate 2', 'Chocolate level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT25', 'Cream 2', 'Cream level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT26', 'DeepBlue 2', 'DeepBlue level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT27', 'Demon 2', 'Demon level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT28', 'Diamod 2', 'Diamod level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT29', 'Electric 2', 'Electric level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT30', 'Fire 2', 'Fire level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT31', 'Forest 2', 'Forest level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT32', 'Ice 2', 'Ice level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT33', 'Loli 2', 'Loli level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT34', 'Magic 2', 'Magic level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT35', 'Rock 2', 'Rock level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT36', 'Silver 2', 'Silver level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT37', 'Sky 2', 'Sky level 50',2,500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT38', 'Strawberry 2', 'Strawberry level 50', 2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT39', 'Sweety 2', 'Sweety level 50',2, 500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT40', 'Water 2', 'Water level 50', 2, 500);

INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT41', 'Blue 3', 'Blue level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT42', 'Carpentry 3', 'Carpentry level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT43', 'Cheese 3', 'Cheese level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT44', 'Chocolate 3', 'Chocolate level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT45', 'Cream 3', 'Cream level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT46', 'DeepBlue 3', 'DeepBlue level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT47', 'Demon 3', 'Demon level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT48', 'Diamod 3', 'Diamod level 100',3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT49', 'Electric 3', 'Electric level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT50', 'Fire 3', 'Fire level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT51', 'Forest 3', 'Forest level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT52', 'Ice 3', 'Ice level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT53', 'Loli 3', 'Loli level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT54', 'Magic 3', 'Magic level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT55', 'Rock 3', 'Rock level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT56', 'Silver 3', 'Silver level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT57', 'Sky 3', 'Sky level 100',3,1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT58', 'Strawberry 3', 'Strawberry level 100', 3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT59', 'Sweety 3', 'Sweety level 100',3, 1500);
INSERT INTO THANHTUU (MATHANHTUU,TENTHANHTUU,MOTA,CAPDO,VANG) VALUES ('TT60', 'Water 3', 'Water level 100', 3, 1500);



COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
