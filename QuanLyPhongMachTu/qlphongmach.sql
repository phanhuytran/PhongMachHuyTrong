-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: qlphongmach
-- ------------------------------------------------------
-- Server version	8.0.21

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
INSERT INTO `bacsi` VALUES ('1','Nguyen','Do Trong','Nam','2022-09-05','0768107704','/admin-resources/plugins/images/users/d1.jpg','Binh Thuan','taolao.vn@gmail.com'),('14','Nguyen Tran','Khan Van','Nam','2022-03-05','0768107704','/admin-resources/plugins/images/users/d5.jpg','TP Ho Chi Minh','1851050159trong@ou.edu.vn'),('1851050169','Tran','Phan Huy','Nam','2000-02-15','0768107704','/admin-resources/plugins/images/users/d1.jpg','Tien Giang','1851050010buu@ou.edu.vn'),('1dd56d41-06b4-4de9-9aa1-8a522c156866','Nghech','Ngoc','Nam','2002-01-01','0768107704','/admin-resources/plugins/images/users/d2.jpg','Tien Giang','kkk123@gmail.com'),('21520e40-a02b-408c-b396-2caf61d38325','Ba Doi','Thong','Nam','2001-01-01','0768107704','/admin-resources/plugins/images/users/d3.jpg','Tien Giang','badoithong@gmail.com'),('24','nguyen','si','nam','2021-11-05','0768107705','/admin-resources/plugins/images/users/d2.jpg','binh thuan','1851050159trong@ou.edu.vn'),('294e0097-82d7-46f0-9a2a-41cc72ac07dd','Nobi12131','Nobita','Nam','2003-12-01','0768107704','/admin-resources/plugins/images/users/d4.jpg','Tien Giang','nobita123@gmail.com'),('307fc8f6-0814-48ba-840e-2356552addc9','Thien','Phuc','Nam','2000-11-02','0768107704','/admin-resources/plugins/images/users/d5.jpg','Tien Giang','Phuc@gmail.com'),('48a7ca08-532a-4be9-9979-26395cf2d8f8','Nguyen','Do Trong','Nam','2000-03-13','0768107704','/admin-resources/plugins/images/users/d1.jpg','Tien Giang','trongdo11@gmail.com'),('4acc8f5a-cfbf-4e70-8b6a-90b09446a065','Loc Choc','Nhoc','Nam','2003-01-01','0768107704','/admin-resources/plugins/images/users/d2.jpg','Tien Giang','vidu1@gmail.com'),('5aee0eec-9c0c-49da-a5b3-63f729d6b141','Nguyen Thi','Bi Dao','Nam','2000-12-06','0768107704','/admin-resources/plugins/images/users/d3.jpg','Dong Thap','bidaocute@gmail.com'),('7b8cdfad-7538-471e-84ea-8241939d9076','Nguyen','Binh','Nam','2000-02-04','0768107113','/admin-resources/plugins/images/users/d4.jpg','Tien Giang','1851050010buu@ou.edu.vn'),('7e51e415-1d11-4bf9-8c48-a27194f9da25','Tran','Doraemon','Nam','2001-01-01','0768107704','/admin-resources/plugins/images/users/d5.jpg','Tien Giang','doraemon@gmail.com'),('86bf2f24-5eff-45ed-bc91-5207dcf31e51','nam vang','hu tieu','Nam','2001-01-01','0126540451','/admin-resources/plugins/images/users/d1.jpg','Tien Giang','hutieunamvang@gmail.com'),('870fe48e-7d4e-44ab-81f9-3a9334212336','Tran','Shizuka','N????','2003-03-13','0768107704','/admin-resources/plugins/images/users/d2.jpg','Tien Giang','shizuka@gmail.com'),('8afecf5e-4c1a-44d1-be7b-3c168069c998','Hodekawa','Suneo','Nam','2005-12-10','0768107704','/admin-resources/plugins/images/users/d3.jpg','Tien Giang','suneo@gmail.com'),('98d44248-7fe6-4ca8-a1ab-a7d1b20d3cc1','Lien Minh','Huyen Thoai','Nam','2011-01-01','0768107704','/admin-resources/plugins/images/users/d4.jpg','Tien Giang','lmth@gmail.com'),('ad434e89-2dd8-493a-a1b7-29184f810c0f','Banh Thi','Xi Muoi','N????','2001-01-01','0768107704','/admin-resources/plugins/images/users/d5.jpg','Tien Giang','ximuoi@gmail.com');
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
INSERT INTO `benhnhan` VALUES ('1851050168','Ga','Cua T????????m C????????','Nu','2000-02-15','0943940261'),('1f7a47f2-e061-4546-96b0-b86c6630de6c','nguyen','BUU Khung','Nam','2021-04-05','0768107704'),('42a7feb3-4f3b-469d-b079-ef0b43f146ac','Obdam','dk1','Nam','1995-02-01','0775398511'),('4b83ae95-c045-4b8e-836d-fc5fc71af0df','Nguyen','dang ky 2','Nam','1995-02-01','0775398511'),('8aada13a-9a7d-4de9-8671-7c3fe0a40fdf','nguyen','thi tam','Nu','2021-06-05','0943940261'),('b2efd705-a39b-474e-8aec-3beec67a2f0f','dang','ky 1','Nam','1995-02-01','0775398511'),('d104a902-2378-450e-95eb-12de560c334a','Tran','dang ky 3','Nu','1995-02-01','0775398511'),('e8a55eb5-cd19-4975-9fe2-dd4bfa5306fb','Tran','Thi Bi Dao','Nu','2021-12-05','0775398511');
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
INSERT INTO `chitietphieukhambenh` VALUES (1,1),(6,1),(4,2),(5,2),(2,3),(3,3);
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
INSERT INTO `chitiettoathuoc` VALUES ('TOATHUOC1',1,112,35000,105000),('TOATHUOC1',2,2,25000,50000),('TOATHUOC1',3,25,30000,150000),('TOATHUOC6',1,200,35000,70000000),('TOATHUOC6',3,4,30000,120000);
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
INSERT INTO `nhanvien` VALUES ('10','xuong','rang','Nam','2021-11-05','0768107704','/admin-resources/plugins/images/users/1.jpg'),('11','ho','khung','Nam','2021-01-05','0768107705','/admin-resources/plugins/images/users/2.jpg'),('12','le','quyt','','2022-05-05','0768107705','/admin-resources/plugins/images/users/3.jpg'),('13','tran','buoi','Nam','2022-06-05','0943940261','/admin-resources/plugins/images/users/4.jpg'),('1851050105','cho trong','BUU Khung','Nam','2000-01-01','0768107705','/admin-resources/plugins/images/users/5.jpg'),('2','ho','hua','Nam','2021-03-05','0123','/admin-resources/plugins/images/users/6.jpg'),('3','Obdam','Amanda Chalisa','Nam','2022-01-05','0775398511','/admin-resources/plugins/images/users/7.jpg'),('4','cao','van lun','Nam','2021-11-05','0943940261','/admin-resources/plugins/images/users/8.jpg'),('5','nguyen','chuong chuong','Nu','2021-03-05','0123','/admin-resources/plugins/images/users/1.jpg'),('6','nguyen','chi','Nam','2021-06-05','0768107705','/admin-resources/plugins/images/users/2.jpg'),('7','kim','hun','Nam','2020-03-08','0768107705','/admin-resources/plugins/images/users/3.jpg'),('74b46ffa-f87a-44cb-a841-9682c330744c','tran','ti','Nam','2021-04-05','0768107704','/admin-resources/plugins/images/users/4.jpg'),('8','tran','teo','Nu','2021-11-05','0768107705','/admin-resources/plugins/images/users/5.jpg'),('9','nguyen','thi tam','Nam','2021-11-05','0943940261','/admin-resources/plugins/images/users/6.jpg'),('a831455e-c0a6-4f89-b7e0-46c58ac6812a','nguyen','com','Nu','2021-03-05','0768107705','/admin-resources/plugins/images/users/7.jpg');
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
INSERT INTO `phieukhambenh` VALUES (1,'1851050168','2021-03-18','371 Nguyen Kiem',_binary '\0',1,NULL),(2,'b2efd705-a39b-474e-8aec-3beec67a2f0f','2021-05-09','371 Nguyen Kiem',_binary '\0',2,'1851050169'),(3,'4b83ae95-c045-4b8e-836d-fc5fc71af0df','2021-05-09','371 Nguyen Kiem',_binary '\0',5,'294e0097-82d7-46f0-9a2a-41cc72ac07dd'),(4,'e8a55eb5-cd19-4975-9fe2-dd4bfa5306fb','2021-05-05','371 Nguyen Kiem',_binary '\0',2,'ad434e89-2dd8-493a-a1b7-29184f810c0f'),(5,'d104a902-2378-450e-95eb-12de560c334a','2021-05-09','371 Nguyen Kiem',_binary '\0',1,'98d44248-7fe6-4ca8-a1ab-a7d1b20d3cc1'),(6,'42a7feb3-4f3b-469d-b079-ef0b43f146ac','2021-05-09','371 Nguyen Kiem',_binary '\0',1,'1');
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
  `reset_password_token` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `taikhoan` VALUES ('1','234','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('10','hutieusadec','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('11','bunbohue','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('12','phoquynh','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('13','comtam','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('14','chuoichi','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('15','hoahong','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('16','hoacuc','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('17','bongbut','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('18','comxuong','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('1851050010','hoangbuu','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',1,NULL),('1851050105','thienphuc','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('1851050169','phanhuy','$2a$10$2TuptmSQFhFIKe8ct0m4A.0ZF3vSoFcl7KOBlYi9l5C4kHzqNTLAi',2,NULL),('19','chuoichien','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('1dd56d41-06b4-4de9-9aa1-8a522c156866','kkk123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('2','banhxeo','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('20','bunmoc','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('21','bunrieu','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('21520e40-a02b-408c-b396-2caf61d38325','badoithong','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('22','comga','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('23','phobo','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('24','boxao','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('294e0097-82d7-46f0-9a2a-41cc72ac07dd','nobita','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('3','banhflan','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('307fc8f6-0814-48ba-840e-2356552addc9','xucana123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('4','banhque','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('48a7ca08-532a-4be9-9979-26395cf2d8f8','trongnd123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('4acc8f5a-cfbf-4e70-8b6a-90b09446a065','vidu1','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('5','trasua','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('5aee0eec-9c0c-49da-a5b3-63f729d6b141','bidao123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('6','kemky','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('7','bacsiu','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('74b46ffa-f87a-44cb-a841-9682c330744c','tester2','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('7b8cdfad-7538-471e-84ea-8241939d9076','toilacongan113','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('7e51e415-1d11-4bf9-8c48-a27194f9da25','doraemon','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('8','raumamix','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('86bf2f24-5eff-45ed-bc91-5207dcf31e51','hutieunamvang','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('870fe48e-7d4e-44ab-81f9-3a9334212336','shizuka123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('8afecf5e-4c1a-44d1-be7b-3c168069c998','suneo','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('9','dauxanhrauma','$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('98d44248-7fe6-4ca8-a1ab-a7d1b20d3cc1','lol123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('a831455e-c0a6-4f89-b7e0-46c58ac6812a','tester3','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',3,NULL),('ad434e89-2dd8-493a-a1b7-29184f810c0f','ximuoi123','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('bef47dae-4279-4433-bb22-47c89a41988d','deki','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL),('fa4444c6-bd2f-4e7c-81cd-4a6c7c9a94ce','comsuon','$2a$10$OMLIxAqrTHHSPm5MYD1xvOIrJ18cG4epKlP09F9oJD5rZRJiGyzNe',2,NULL);
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
INSERT INTO `thuoc` VALUES (1,'Panadol','Thu????c nh????c ??????u',35000,'Vi??'),(2,'7 ma??u','Thu????c ng????a',25000,'Tuy??p'),(3,'Oxy gia??','Thu????c sa??t tru??ng v????t th????ng',30000,'Chai');
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
INSERT INTO `toathuoc` VALUES ('TOATHUOC1','1','1f7a47f2-e061-4546-96b0-b86c6630de6c','2021-03-18 00:00:00',2),('TOATHUOC6','307fc8f6-0814-48ba-840e-2356552addc9','8aada13a-9a7d-4de9-8671-7c3fe0a40fdf','2021-05-03 00:00:00',4),('TOATHUOC7','24','1f7a47f2-e061-4546-96b0-b86c6630de6c','2021-01-02 00:00:00',4);
/*!40000 ALTER TABLE `toathuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'qlphongmach'
--
/*!50003 DROP PROCEDURE IF EXISTS `getTaiKhoanConTrong` */;
ALTER DATABASE `qlphongmach` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
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
ALTER DATABASE `qlphongmach` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `getTaiKhoanConTrongBacSi` */;
ALTER DATABASE `qlphongmach` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
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
ALTER DATABASE `qlphongmach` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
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

-- Dump completed on 2021-05-13 16:17:35
