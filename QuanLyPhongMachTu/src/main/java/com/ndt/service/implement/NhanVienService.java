package com.ndt.service.implement;

import com.ndt.models.NhanVien;
import com.ndt.repository.IGenericRepository;
import com.ndt.repository.INhanVienRepository;
import com.ndt.service.INhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class NhanVienService extends GenericService<NhanVien> implements INhanVienService {
    private INhanVienRepository nhanVienRepository;

    @Autowired
    public NhanVienService(@Qualifier("nhanVienRepository") IGenericRepository<NhanVien> genericRepository) {
        super(genericRepository);
        this.nhanVienRepository = (INhanVienRepository) genericRepository;
    }
}
