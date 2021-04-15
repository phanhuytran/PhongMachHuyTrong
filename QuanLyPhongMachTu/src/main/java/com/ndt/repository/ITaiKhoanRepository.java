package com.ndt.repository;

import com.ndt.models.BacSi;
import com.ndt.models.TaiKhoan;

import java.util.List;

public interface ITaiKhoanRepository extends IGenericRepository<TaiKhoan> {
    TaiKhoan getTaiKhoanByUsername(String username);
    List<TaiKhoan> getTaiKhoanTheoChucVu(String kw);
    boolean themTaiKhoanVaBacSi(TaiKhoan taiKhoan, BacSi bacSi);
}
