package com.ndt.repository;

import com.ndt.models.BenhNhan;
import com.ndt.models.PhieuKhamBenh;

import java.util.List;

public interface IBenhNhanRepository extends IGenericRepository<BenhNhan> {
    List<BenhNhan> getBenhNhanTheoTen(String ten);
    List<BenhNhan> getTopBenhNhanTheoTen(int limit, String name);
    List<BenhNhan> getTopNewBenhNhan(int limit);
    int getSoLuongPhieuKhamBenhCuaBenhNhan(BenhNhan benhNhan);
    boolean themBenhNhanVaPhieuKhamBenh(BenhNhan benhNhan, PhieuKhamBenh phieuKhamBenh);
}
