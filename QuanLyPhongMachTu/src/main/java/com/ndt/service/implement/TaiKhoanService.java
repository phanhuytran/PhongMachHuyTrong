package com.ndt.service.implement;

import com.ndt.models.BacSi;
import com.ndt.models.TaiKhoan;
import com.ndt.repository.IGenericRepository;
import com.ndt.repository.ITaiKhoanRepository;
import com.ndt.service.ITaiKhoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaiKhoanService extends GenericService<TaiKhoan> implements ITaiKhoanService {
    private ITaiKhoanRepository taiKhoanRepository;

    @Autowired
    public TaiKhoanService(@Qualifier("taiKhoanRepository") IGenericRepository<TaiKhoan> iGenericRepository) {
        super(iGenericRepository);
        this.taiKhoanRepository = (ITaiKhoanRepository) iGenericRepository;
    }

    @Override
    public TaiKhoan getTaiKhoanByUsername(String username) {
        return taiKhoanRepository.getTaiKhoanByUsername(username);
    }

    @Override
    public List<TaiKhoan> getTaiKhoanTheoChucVu(String kw) {
        return taiKhoanRepository.getTaiKhoanTheoChucVu(kw);
    }

    @Override
    public boolean themTaiKhoanVaBacSi(TaiKhoan taiKhoan, BacSi bacSi) {
        return taiKhoanRepository.themTaiKhoanVaBacSi(taiKhoan, bacSi);
    }
}
