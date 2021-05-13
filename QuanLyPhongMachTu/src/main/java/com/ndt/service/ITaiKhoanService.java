package com.ndt.service;

import com.ndt.models.BacSi;
import com.ndt.models.TaiKhoan;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface ITaiKhoanService extends IGenericService<TaiKhoan>, UserDetailsService {
    TaiKhoan getTaiKhoanByUsername(String username);
    List<TaiKhoan> getTaiKhoanTheoChucVu(String kw);
    boolean themTaiKhoanVaBacSi(TaiKhoan taiKhoan, BacSi bacSi);
    List<TaiKhoan> getTaiKhoanBacSiTrong();
    List<TaiKhoan> getTaiKhoanNhanVienTrong();
}
