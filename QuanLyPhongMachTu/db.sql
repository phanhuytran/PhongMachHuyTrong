-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: qlphongmach
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ho` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DienThoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_admin_taikhoan` FOREIGN KEY (`id`) REFERENCES `taikhoan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('1851050010','Dang','Buu','Nam','2000-02-04','0768107704','/resources/image/admin.png');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bacsi`
--

DROP TABLE IF EXISTS `bacsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bacsi` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ho` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DienThoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `QueQuan` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_bacsi_taikhoan` FOREIGN KEY (`id`) REFERENCES `taikhoan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bacsi`
--

LOCK TABLES `bacsi` WRITE;
/*!40000 ALTER TABLE `bacsi` DISABLE KEYS */;
INSERT INTO `bacsi` VALUES ('1851050169','Tran','Phan Huy','Nam','2000-02-15','0768107704','/resources/images/bacsi/dhb.jpg','Tien Giang','1851050010buu@ou.edu.vn'),('1dd56d41-06b4-4de9-9aa1-8a522c156866','Nghech','Ngoc','Nam','2002-01-01','0768107704','C:\\Users\\ASUS\\Desktop\\apache-tomcat-9.0.43\\webapps\\ROOT\\resources\\images\\bacsi\\kkk123.png','Tien Giang','kkk123@gmail.com'),('21520e40-a02b-408c-b396-2caf61d38325','Ba Doi','Thong','Nam','2001-01-01','0768107704','C:\\Users\\ASUS\\Desktop\\java\\QuanLyPhongMach\\target\\QuanLyPhongMach\\resources\\images\\bacsi\\badoithong.png','Tien Giang','badoithong@gmail.com'),('294e0097-82d7-46f0-9a2a-41cc72ac07dd','Nobi','Nobita','Nam','2003-12-01','0768107704','/resources/images/bacsi/nobita.png','Tien Giang','nobita123@gmail.com'),('307fc8f6-0814-48ba-840e-2356552addc9','Xu','Ca Na','Nữ','2000-11-02','0768107704','/resources/images/bacsi/xucana123.png','Tien Giang','xucana@gmail.com'),('48a7ca08-532a-4be9-9979-26395cf2d8f8','Nguyen','Do Trong','Nam','2000-03-13','0768107704','C:\\Users\\ASUS\\Desktop\\java\\QuanLyPhongMach\\target\\QuanLyPhongMach\\resources/images/trongnd123.png','Tien Giang','trongdo11@gmail.com'),('4acc8f5a-cfbf-4e70-8b6a-90b09446a065','Loc Choc','Nhoc','Nam','2003-01-01','0768107704','C:\\Users\\ASUS\\Desktop\\java\\QuanLyPhongMach\\target\\QuanLyPhongMach\\resources\\images\\bacsi\\vidu1.png','Tien Giang','vidu1@gmail.com'),('5aee0eec-9c0c-49da-a5b3-63f729d6b141','Nguyen Thi','Bi Dao','Nam','2000-12-06','0768107704','C:\\Users\\ASUS\\Desktop\\java\\QuanLyPhongMach\\target\\QuanLyPhongMach\\resources/images/bidao123.png','Dong Thap','bidaocute@gmail.com'),('7b8cdfad-7538-471e-84ea-8241939d9076','Nguyen','Binh','Nam','2000-02-04','0768107113','/resources/images/bacsi/dhb.jpg','Tien Giang','1851050010buu@ou.edu.vn'),('7e51e415-1d11-4bf9-8c48-a27194f9da25','Tran','Doraemon','Nam','2001-01-01','0768107704','C:\\Users\\ASUS\\Desktop\\java\\QuanLyPhongMach\\src\\main\\webapp\\resources\\images\\bacsi\\doraemon.png','Tien Giang','doraemon@gmail.com'),('86bf2f24-5eff-45ed-bc91-5207dcf31e51','nam vang','hu tieu','Nam','2001-01-01','0126540451','/resources/images/bacsi/hutieunamvang.png','Tien Giang','hutieunamvang@gmail.com'),('870fe48e-7d4e-44ab-81f9-3a9334212336','Tran','Shizuka','Nữ','2003-03-13','0768107704','/resources/images/bacsi/shizuka123.png','Tien Giang','shizuka@gmail.com'),('8afecf5e-4c1a-44d1-be7b-3c168069c998','Hodekawa','Suneo','Nam','2005-12-10','0768107704','/resources/images/bacsi/suneo.png','Tien Giang','suneo@gmail.com'),('98d44248-7fe6-4ca8-a1ab-a7d1b20d3cc1','Lien Minh','Huyen Thoai','Nam','2011-01-01','0768107704','/resources/images/bacsi/lol123.png','Tien Giang','lmth@gmail.com'),('ad434e89-2dd8-493a-a1b7-29184f810c0f','Banh Thi','Xi Muoi','Nữ','2001-01-01','0768107704','resources/images/ximuoi123.png','Tien Giang','ximuoi@gmail.com'),('bef47dae-4279-4433-bb22-47c89a41988d','Suki','Deki','Nam','2003-03-13','0768107704','/resources/images/bacsi/deki.png','Tien Giang','deki@gmail.com');
/*!40000 ALTER TABLE `bacsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benhnhan`
--

DROP TABLE IF EXISTS `benhnhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benhnhan` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ho` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DienThoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benhnhan`
--

LOCK TABLES `benhnhan` WRITE;
/*!40000 ALTER TABLE `benhnhan` DISABLE KEYS */;
INSERT INTO `benhnhan` VALUES ('1851050168','Phan','Quynh','Nu','2000-02-15','0768107704'),('2f59ee78-902d-4de5-9ce1-9fb474e41b5f','Vu','Dat','Nam','2000-07-28','0126540451');
/*!40000 ALTER TABLE `benhnhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cakhambenh`
--

DROP TABLE IF EXISTS `cakhambenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cakhambenh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenCa` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cakhambenh`
--

LOCK TABLES `cakhambenh` WRITE;
/*!40000 ALTER TABLE `cakhambenh` DISABLE KEYS */;
INSERT INTO `cakhambenh` VALUES (1,'Ca 1','7:00 - 9:00'),(2,'Ca 2','9:00 - 11:00'),(3,'Ca 3','13:00 - 15:00'),(4,'Ca 4','15:00 - 17:00'),(5,'Ca 5','17:00 - 19:00');
/*!40000 ALTER TABLE `cakhambenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietcakhambenh`
--

DROP TABLE IF EXISTS `chitietcakhambenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietcakhambenh` (
  `MaCa` int NOT NULL,
  `MaBacSi` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayKhamBenh` date NOT NULL,
  PRIMARY KEY (`MaCa`,`MaBacSi`,`NgayKhamBenh`),
  KEY `fk_chitietcakhambenh_bacsi` (`MaBacSi`),
  CONSTRAINT `fk_chitietcakhambenh_bacsi` FOREIGN KEY (`MaBacSi`) REFERENCES `bacsi` (`id`),
  CONSTRAINT `fk_chitietcakhambenh_cakhambenh` FOREIGN KEY (`MaCa`) REFERENCES `cakhambenh` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietcakhambenh`
--

LOCK TABLES `chitietcakhambenh` WRITE;
/*!40000 ALTER TABLE `chitietcakhambenh` DISABLE KEYS */;
INSERT INTO `chitietcakhambenh` VALUES (1,'1851050169','2021-03-18');
/*!40000 ALTER TABLE `chitietcakhambenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietphieukhambenh`
--

DROP TABLE IF EXISTS `chitietphieukhambenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietphieukhambenh` (
  `MaPhieuKhamBenh` int NOT NULL,
  `MaLoaiBenh` int NOT NULL,
  PRIMARY KEY (`MaPhieuKhamBenh`,`MaLoaiBenh`),
  KEY `fk_chitietphieukhambenh_loaibenh_idx` (`MaLoaiBenh`),
  CONSTRAINT `fk_chitietphieukhambenh_loaibenh` FOREIGN KEY (`MaLoaiBenh`) REFERENCES `loaibenh` (`id`),
  CONSTRAINT `fk_chitietphieukhambenh_phieukhambenh` FOREIGN KEY (`MaPhieuKhamBenh`) REFERENCES `phieukhambenh` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietphieukhambenh`
--

LOCK TABLES `chitietphieukhambenh` WRITE;
/*!40000 ALTER TABLE `chitietphieukhambenh` DISABLE KEYS */;
INSERT INTO `chitietphieukhambenh` VALUES (1,1);
/*!40000 ALTER TABLE `chitietphieukhambenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiettoathuoc`
--

DROP TABLE IF EXISTS `chitiettoathuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiettoathuoc` (
  `MaToaThuoc` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaThuoc` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  PRIMARY KEY (`MaToaThuoc`,`MaThuoc`),
  KEY `fk_chitiettoathuoc_thuoc_idx` (`MaThuoc`),
  CONSTRAINT `fk_chitiettoathuoc_thuoc` FOREIGN KEY (`MaThuoc`) REFERENCES `thuoc` (`id`),
  CONSTRAINT `fk_chitiettoathuoc_toathuoc` FOREIGN KEY (`MaToaThuoc`) REFERENCES `toathuoc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiettoathuoc`
--

LOCK TABLES `chitiettoathuoc` WRITE;
/*!40000 ALTER TABLE `chitiettoathuoc` DISABLE KEYS */;
INSERT INTO `chitiettoathuoc` VALUES ('TOATHUOC1',1,3,35000,105000),('TOATHUOC1',2,1,25000,25000);
/*!40000 ALTER TABLE `chitiettoathuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaToaThuoc` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaNhanVien` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayXuat` datetime NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MaToaThuoc_UNIQUE` (`MaToaThuoc`),
  KEY `fk_hoadon_nhanvien` (`MaNhanVien`),
  CONSTRAINT `fk_hoadon_nhanvien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`id`),
  CONSTRAINT `fk_hoadon_toathuoc` FOREIGN KEY (`MaToaThuoc`) REFERENCES `toathuoc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES ('HOADONSO1','TOATHUOC1','1851050105','2021-03-18 00:00:00',230000);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaibenh`
--

DROP TABLE IF EXISTS `loaibenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaibenh` (
  `id` int NOT NULL,
  `TenBenh` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaibenh`
--

LOCK TABLES `loaibenh` WRITE;
/*!40000 ALTER TABLE `loaibenh` DISABLE KEYS */;
INSERT INTO `loaibenh` VALUES (1,'Thoai vi dia dem','Dau lung',100000);
/*!40000 ALTER TABLE `loaibenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ho` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DienThoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_nhanvien_taikhoan` FOREIGN KEY (`id`) REFERENCES `taikhoan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('1851050105','Nguyen','Phuc','Nam','2000-01-01','0768107704',NULL);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieukhambenh`
--

DROP TABLE IF EXISTS `phieukhambenh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieukhambenh` (
  `id` int NOT NULL,
  `MaBenhNhan` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayKham` date NOT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ThanhToan` bit(1) NOT NULL,
  `MaCaKham` int NOT NULL,
  `MaBacSi` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phieukhambenh_benhnhan` (`MaBenhNhan`),
  KEY `fk_phieukhambenh_cakhambenh_idx` (`MaCaKham`),
  KEY `fk_phieukhambenh_bacsi` (`MaBacSi`),
  CONSTRAINT `fk_phieukhambenh_bacsi` FOREIGN KEY (`MaBacSi`) REFERENCES `bacsi` (`id`),
  CONSTRAINT `fk_phieukhambenh_benhnhan` FOREIGN KEY (`MaBenhNhan`) REFERENCES `benhnhan` (`id`),
  CONSTRAINT `fk_phieukhambenh_cakhambenh` FOREIGN KEY (`MaCaKham`) REFERENCES `cakhambenh` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieukhambenh`
--

LOCK TABLES `phieukhambenh` WRITE;
/*!40000 ALTER TABLE `phieukhambenh` DISABLE KEYS */;
INSERT INTO `phieukhambenh` VALUES (1,'1851050168','2021-03-18','371 Nguyen Kiem',_binary '\0',1,NULL);
/*!40000 ALTER TABLE `phieukhambenh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Ten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'bác sĩ'),(3,'nhân viên');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TaiKhoan` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaRole` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`TaiKhoan`),
  KEY `fk_taikhoan_role_idx` (`MaRole`),
  CONSTRAINT `fk_taikhoan_role` FOREIGN KEY (`MaRole`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('1','234','1',2),('1851050010','hoangbuu','123',1),('1851050105','thienphuc','123',3),('1851050169','phanhuy','123',2),('1dd56d41-06b4-4de9-9aa1-8a522c156866','kkk123','123',2),('21520e40-a02b-408c-b396-2caf61d38325','badoithong','123',2),('294e0097-82d7-46f0-9a2a-41cc72ac07dd','nobita','123',2),('307fc8f6-0814-48ba-840e-2356552addc9','xucana123','123',2),('48a7ca08-532a-4be9-9979-26395cf2d8f8','trongnd123','123',2),('4acc8f5a-cfbf-4e70-8b6a-90b09446a065','vidu1','123',2),('5aee0eec-9c0c-49da-a5b3-63f729d6b141','bidao123','123',2),('74b46ffa-f87a-44cb-a841-9682c330744c','tester2','123456',3),('7b8cdfad-7538-471e-84ea-8241939d9076','toilacongan113','123456',2),('7e51e415-1d11-4bf9-8c48-a27194f9da25','doraemon','123',2),('86bf2f24-5eff-45ed-bc91-5207dcf31e51','hutieunamvang','123',2),('870fe48e-7d4e-44ab-81f9-3a9334212336','shizuka123','123',2),('8afecf5e-4c1a-44d1-be7b-3c168069c998','suneo','123',2),('98d44248-7fe6-4ca8-a1ab-a7d1b20d3cc1','lol123','123',2),('a831455e-c0a6-4f89-b7e0-46c58ac6812a','tester3','123456',3),('ad434e89-2dd8-493a-a1b7-29184f810c0f','ximuoi123','123',2),('bef47dae-4279-4433-bb22-47c89a41988d','deki','123',2),('fa4444c6-bd2f-4e7c-81cd-4a6c7c9a94ce','comsuon','123',2);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuoc`
--

DROP TABLE IF EXISTS `thuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thuoc` (
  `id` int NOT NULL,
  `TenThuoc` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `DonVi` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuoc`
--

LOCK TABLES `thuoc` WRITE;
/*!40000 ALTER TABLE `thuoc` DISABLE KEYS */;
INSERT INTO `thuoc` VALUES (1,'Panadol','Thuốc nhức đầu',35000,'Vỉ'),(2,'7 màu','Thuốc ngứa',25000,'Tuýp'),(3,'Oxy già','Thuốc sát trùng vết thương',30000,'Chai');
/*!40000 ALTER TABLE `thuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toathuoc`
--

DROP TABLE IF EXISTS `toathuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toathuoc` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaBacSi` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MaBenhNhan` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayKeToa` datetime NOT NULL,
  `MaLoaiBenh` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_toathuoc_bacsi` (`MaBacSi`),
  KEY `fk_toathuoc_benhnhan` (`MaBenhNhan`),
  KEY `fk_toathuoc_loaibenh_idx` (`MaLoaiBenh`),
  CONSTRAINT `fk_toathuoc_bacsi` FOREIGN KEY (`MaBacSi`) REFERENCES `bacsi` (`id`),
  CONSTRAINT `fk_toathuoc_benhnhan` FOREIGN KEY (`MaBenhNhan`) REFERENCES `benhnhan` (`id`),
  CONSTRAINT `fk_toathuoc_loaibenh` FOREIGN KEY (`MaLoaiBenh`) REFERENCES `loaibenh` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toathuoc`
--

LOCK TABLES `toathuoc` WRITE;
/*!40000 ALTER TABLE `toathuoc` DISABLE KEYS */;
INSERT INTO `toathuoc` VALUES ('TOATHUOC1','1851050169','1851050168','2021-03-18 00:00:00',1);
/*!40000 ALTER TABLE `toathuoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-20 10:03:56
