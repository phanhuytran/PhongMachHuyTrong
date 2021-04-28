package com.ndt.repository;

import com.ndt.models.NhanVien;

import java.util.List;

public interface INhanVienRepository extends IGenericRepository<NhanVien> {
    List<NhanVien> getNhanVienTheoTen(String ten);
}
