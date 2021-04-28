package com.ndt.service.implement;

import com.ndt.models.BacSi;
import com.ndt.models.CaKhamBenh;
import com.ndt.repository.ICaKhamBenhRepository;
import com.ndt.repository.IGenericRepository;
import com.ndt.service.ICaKhamBenhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CaKhamBenhService extends GenericService<CaKhamBenh> implements ICaKhamBenhService {
    private ICaKhamBenhRepository caKhamBenhRepository;

    @Autowired
    public CaKhamBenhService(@Qualifier("caKhamBenhRepository") IGenericRepository<CaKhamBenh> genericRepository) {
        super(genericRepository);
        this.caKhamBenhRepository = (ICaKhamBenhRepository) genericRepository;
    }

    @Override
    public List<BacSi> layBacSiTheoCaKham(int id, Date ngayKhamBenh) {
        return caKhamBenhRepository.layBacSiTheoCaKham(id, ngayKhamBenh);
    }
}
