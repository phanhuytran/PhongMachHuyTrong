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
  `Ho` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `bacsi` VALUES ('1','Nguyen','Do Trong','Nam','2022-09-05','0768107704','/admin-resources/plugins/images/users/d1.jpg','Binh Thuan','mailnhaSAichuaBaoloi'),('14','Nguyen','Thi Com Suon','Nam','2000-05-08','0768107704','/admin-resources/plugins/images/users/d1.jpg','BÃÂÃÂ¬nh ThuÃÂ¡ÃÂºÃÂ­n','1851050159trong@ou.edu.vn'),('15','huy','khung','Nam','2022-09-05','0126540451','/admin-resources/plugins/images/users/d2.jpg','bÃ¬nh dÆ°Æ¡ng','ndt050800@gmail.com'),('16','buu','huy','Nam','2006-05-12','0126540451','/admin-resources/plugins/images/users/d5.jpg','mat trang','ndt050800@gmail.com'),('1851050169','Tran','Phan Huy','Nam','2000-02-15','0768107704','/admin-resources/plugins/images/users/d1.jpg','Tien Giang','1851050010buu@ou.edu.vn'),('1dd56d41-06b4-4de9-9aa1-8a522c156866','Yen','Vo','Nam','2002-01-01','0768107704','/admin-resources/plugins/images/users/d2.jpg','Tien Giang','kkk123@gmail.com'),('21520e40-a02b-408c-b396-2caf61d38325','Ba Doi','Thong','Nam','2001-01-01','0768107704','/admin-resources/plugins/images/users/d3.jpg','Tien Giang','badoithong@gmail.com'),('24','nguyen','si','nam','2021-11-05','0768107705','/admin-resources/plugins/images/users/d2.jpg','binh thuan','1851050159trong@ou.edu.vn'),('294e0097-82d7-46f0-9a2a-41cc72ac07dd','Nobi12131','Nobita','Nam','2003-12-01','0768107704','/admin-resources/plugins/images/users/d4.jpg','Tien Giang','nobita123@gmail.com'),('307fc8f6-0814-48ba-840e-2356552addc9','Thien','Phuc','Nam','2000-11-02','0768107704','/admin-resources/plugins/images/users/d5.jpg','Tien Giang','Phuc@gmail.com'),('48a7ca08-532a-4be9-9979-26395cf2d8f8','Nhu','Quynh','Nam','2000-03-13','0768107704','/admin-resources/plugins/images/users/d1.jpg','Tien Giang','trongdo11@gmail.com'),('4acc8f5a-cfbf-4e70-8b6a-90b09446a065','Loc Choc','Nhoc','Nam','2003-01-01','0768107704','/admin-resources/plugins/images/users/d2.jpg','Tien Giang','vidu1@gmail.com'),('5aee0eec-9c0c-49da-a5b3-63f729d6b141','Nguyen Thi','Bi Dao','Nam','2000-12-06','0768107704','/admin-resources/plugins/images/users/d3.jpg','Dong Thap','bidaocute@gmail.com'),('7b8cdfad-7538-471e-84ea-8241939d9076','Nguyen','Binh','Nam','2000-02-04','0768107113','/admin-resources/plugins/images/users/d4.jpg','Tien Giang','1851050010buu@ou.edu.vn'),('7e51e415-1d11-4bf9-8c48-a27194f9da25','Tran','Doraemon','Nam','2001-01-01','0768107704','/admin-resources/plugins/images/users/d5.jpg','Tien Giang','doraemon@gmail.com'),('86bf2f24-5eff-45ed-bc91-5207dcf31e51','nam vang','hu tieu','Nam','2001-01-01','0126540451','/admin-resources/plugins/images/users/d1.jpg','Tien Giang','hutieunamvang@gmail.com'),('870fe48e-7d4e-44ab-81f9-3a9334212336','Tran','Shizuka','Nữ','2003-03-13','0768107704','/admin-resources/plugins/images/users/d2.jpg','Tien Giang','shizuka@gmail.com'),('8afecf5e-4c1a-44d1-be7b-3c168069c998','Hodekawa','Suneo','Nam','2005-12-10','0768107704','/admin-resources/plugins/images/users/d3.jpg','Tien Giang','suneo@gmail.com'),('98d44248-7fe6-4ca8-a1ab-a7d1b20d3cc1','Lien Minh','Huyen Thoai','Nam','2011-01-01','0768107704','/admin-resources/plugins/images/users/d4.jpg','Tien Giang','lmth@gmail.com'),('ad434e89-2dd8-493a-a1b7-29184f810c0f','Than','Y','Nữ','2001-01-01','0768107704','/admin-resources/plugins/images/users/d5.jpg','Tien Giang','ximuoi@gmail.com');
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
INSERT INTO `benhnhan` VALUES ('1851050168','Ga','Cua TÃÂ´m CÃÂ¡','Nu','2000-02-15','0943940261'),('1f7a47f2-e061-4546-96b0-b86c6630de6c','nguyen','BUU Khung','Nam','2021-04-05','0768107704'),('2522fd01-5a23-4349-85c3-cf6fe7949931','TroÌ£ng','KhuÌng','Nam','2002-02-12','0126540451'),('80f5a066-df16-460c-a54d-715eb77a5f44','buu','khung','Nam','2003-05-13','0126540451'),('8aada13a-9a7d-4de9-8671-7c3fe0a40fdf','nguyen','thi tam','Nu','2021-06-05','0943940261'),('8d2ae9e2-0f59-4369-9b31-ef49f4cf5521','buu','buu','Nu','2006-02-12','0126540451'),('9b0b7b91-d543-4f74-9101-be248da8d723','','','','2003-05-13',''),('9d16659f-dffd-4f99-bf49-399360c4a7b9','buu','khung','Nu','2002-02-12','0126540451'),('c716c533-6df5-43a2-b2cc-5fb5fdf9626c','','','','2003-05-13',''),('d5e378f0-4adf-4a9e-9937-6d4420561344','','','','2003-05-13',''),('f5c49c47-dc0b-4800-b10c-7a7b98c68e54','buu','khung','Nam','2002-02-12','0126540451');
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
INSERT INTO `chitietcakhambenh` VALUES (1,'1','2021-05-18'),(1,'14','2021-05-18'),(2,'15','2021-05-18'),(3,'16','2021-05-18'),(1,'1851050169','2021-05-18'),(1,'1851050169','2021-05-19'),(2,'1851050169','2021-05-20'),(3,'1851050169','2021-05-21'),(4,'1851050169','2021-05-22'),(5,'1851050169','2021-05-23'),(3,'1dd56d41-06b4-4de9-9aa1-8a522c156866','2021-05-19'),(4,'24','2021-05-18'),(2,'307fc8f6-0814-48ba-840e-2356552addc9','2021-05-19'),(5,'307fc8f6-0814-48ba-840e-2356552addc9','2021-05-18'),(4,'48a7ca08-532a-4be9-9979-26395cf2d8f8','2021-05-19'),(5,'ad434e89-2dd8-493a-a1b7-29184f810c0f','2021-05-19');
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
INSERT INTO `chitietphieukhambenh` VALUES (1,1),(4,1),(3,2),(2,4);
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
INSERT INTO `chitiettoathuoc` VALUES ('ff916743-9dc3-43b9-a320-adefeb44947d',1,5,35000,70000),('TOATHUOC1',1,107,35000,105000),('TOATHUOC1',2,2,25000,50000),('TOATHUOC1',3,25,30000,150000),('TOATHUOC6',1,200,35000,70000000),('TOATHUOC6',3,4,30000,120000);
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
INSERT INTO `loaibenh` VALUES (1,'Thoai vi dia dem','Dau lung',100000),(2,'viem mang vi','Het tien la dau',150000),(3,'lam bieng','di lam la dau',200000),(4,'noi nhieu','thay nguoi la noi',300000);
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
INSERT INTO `nhanvien` VALUES ('0ac','le','Khung','Nam','2000-01-03','0123569798','/admin-resources/plugins/images/users/2.jpg'),('10','xuong','rang','Nam','2021-11-05','0768107704','/admin-resources/plugins/images/users/2.jpg'),('11','ho','khung','Nam','2021-01-05','0768107705','/admin-resources/plugins/images/users/3.jpg'),('12','le','quyt','','2022-05-05','0768107705','/admin-resources/plugins/images/users/3.jpg'),('13','tran','buoi','Nam','2022-06-05','0943940261','/admin-resources/plugins/images/users/3.jpg'),('1851050105','dang','BUU Khung','Nam','2000-01-01','0768107705','/admin-resources/plugins/images/users/3.jpg'),('2','ho','hua','Nam','2021-03-05','0123','/admin-resources/plugins/images/users/5.jpg'),('3','Bui','Nam','Nam','2021-11-05','0123','/admin-resources/plugins/images/users/6.jpg'),('4','cao','van lun','Nam','2021-11-05','0943940261','/admin-resources/plugins/images/users/7.jpg'),('5','nguyen','chuong chuong','Nu','2021-03-05','0123','/admin-resources/plugins/images/users/8.jpg'),('6','nguyen','chi','Nam','2021-06-05','0768107705','/admin-resources/plugins/images/users/1.jpg'),('7','kim','hun','Nam','2020-03-08','0768107705','/admin-resources/plugins/images/users/1.jpg'),('74b46ffa-f87a-44cb-a841-9682c330744c','tran','ti','Nam','2021-04-05','0768107704','/admin-resources/plugins/images/users/1.jpg'),('9','nguyen','thi tam','Nam','2021-11-05','0943940261','/admin-resources/plugins/images/users/8.jpg'),('a831455e-c0a6-4f89-b7e0-46c58ac6812a','nguyen','com','Nu','2021-03-05','0768107705','/admin-resources/plugins/images/users/1.jpg');
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
  `MaBacSi` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `phieukhambenh` VALUES (1,'1851050168','2021-03-18','371 Nguyen Kiem',_binary '\0',1,NULL),(2,'2522fd01-5a23-4349-85c3-cf6fe7949931','2021-05-12','371 Nguyen Kiem',_binary '\0',1,'1'),(3,'8d2ae9e2-0f59-4369-9b31-ef49f4cf5521','2021-05-13','sd',_binary '\0',1,'14'),(4,'80f5a066-df16-460c-a54d-715eb77a5f44','2021-06-03','sd',_binary '\0',1,'1');
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
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_BACSI'),(3,'ROLE_NHANVIEN');
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
  `MatKhau` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `taikhoan` VALUES ('0ac','lechien','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('1','234','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('10','hutieusadec','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('11','bunbohue','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('12','phoquynh','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('13','comtam','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('14','chuoichi','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('15','hoahong','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('16','hoacuc','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('17','bongbut','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('18','comxuong','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('1851050010','nguyentrong','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',1),('1851050105','thienphuc','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('1851050169','phanhuy','$2a$10$2TuptmSQFhFIKe8ct0m4A.0ZF3vSoFcl7KOBlYi9l5C4kHzqNTLAi',2),('19','chuoichien','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('1dd56d41-06b4-4de9-9aa1-8a522c156866','kkk123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('2','banhxeo','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('20','bunmoc','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('21','bunrieu','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('21520e40-a02b-408c-b396-2caf61d38325','badoithong','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('22','comga','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('23','phobo','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('24','boxao','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('294e0097-82d7-46f0-9a2a-41cc72ac07dd','nobita','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('3','banhflan','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('307fc8f6-0814-48ba-840e-2356552addc9','xucana123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('4','banhque','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('48a7ca08-532a-4be9-9979-26395cf2d8f8','trongnd123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('4acc8f5a-cfbf-4e70-8b6a-90b09446a065','vidu1','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('5','trasua','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('5aee0eec-9c0c-49da-a5b3-63f729d6b141','bidao123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('6','kemky','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('7','bacsiu','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('74b46ffa-f87a-44cb-a841-9682c330744c','tester2','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('7b8cdfad-7538-471e-84ea-8241939d9076','toilacongan113','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('7e51e415-1d11-4bf9-8c48-a27194f9da25','doraemon','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('8','raumamix','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('86bf2f24-5eff-45ed-bc91-5207dcf31e51','hutieunamvang','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('870fe48e-7d4e-44ab-81f9-3a9334212336','shizuka123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('8afecf5e-4c1a-44d1-be7b-3c168069c998','suneo','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('9','dauxanhrauma','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('98d44248-7fe6-4ca8-a1ab-a7d1b20d3cc1','lol123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('a831455e-c0a6-4f89-b7e0-46c58ac6812a','tester3','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3),('ad434e89-2dd8-493a-a1b7-29184f810c0f','ximuoi123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('bef47dae-4279-4433-bb22-47c89a41988d','deki','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2),('fa4444c6-bd2f-4e7c-81cd-4a6c7c9a94ce','comsuon','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2);
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
INSERT INTO `toathuoc` VALUES ('ff916743-9dc3-43b9-a320-adefeb44947d','16','9d16659f-dffd-4f99-bf49-399360c4a7b9','2021-05-12 00:00:00',2),('TOATHUOC1','1','1f7a47f2-e061-4546-96b0-b86c6630de6c','2021-03-18 00:00:00',2),('TOATHUOC6','307fc8f6-0814-48ba-840e-2356552addc9','8aada13a-9a7d-4de9-8671-7c3fe0a40fdf','2021-05-03 00:00:00',4),('TOATHUOC7','24','1f7a47f2-e061-4546-96b0-b86c6630de6c','2021-01-02 00:00:00',4);
/*!40000 ALTER TABLE `toathuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'qlphongmach'
--
/*!50003 DROP PROCEDURE IF EXISTS `getBacSiTheoCaKhamBenh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getBacSiTheoCaKhamBenh`(`MaCa` int, `NgayKham` date)
BEGIN
	select b.*
    from chitietcakhambenh ct
    inner join cakhambenh c on c.id = ct.MaCa
    inner join bacsi b on b.id = ct.MaBacSi
    where ct.MaCa = `MaCa` and ct.NgayKhamBenh= `NgayKham`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTaiKhoanConTrong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTaiKhoanConTrong`()
BEGIN
	select t.*
    from taikhoan t
    where t.id not in (select id from bacsi) and t.id not in (select id from nhanvien)
    and t.id not in (select id from admin);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTaiKhoanConTrongBacSi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTaiKhoanConTrongBacSi`()
BEGIN
	select t.*
    from taikhoan t
    where t.id not in (select id from bacsi) and t.MaRole = 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTaiKhoanConTrongNhanVien` */;
ALTER DATABASE `qlphongmach` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTaiKhoanConTrongNhanVien`()
BEGIN
	select t.*
    from taikhoan t
    where t.id not in (select id from nhanvien) and t.MaRole = 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `qlphongmach` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `getTatCaBacSi` */;
ALTER DATABASE `qlphongmach` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTatCaBacSi`()
BEGIN
	select *
    from bacsi;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `qlphongmach` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-14  1:40:44
