package com.ndt.service.implement;

import com.ndt.models.ChiTietCaKhamBenh;
import com.ndt.repository.IChiTietCaKhamBenhRepository;
import com.ndt.repository.IGenericRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class ChiTietCaKhamBenhService extends GenericService<ChiTietCaKhamBenh> implements IChiTietCaKhamBenhRepository {
    private IChiTietCaKhamBenhRepository chiTietCaKhamBenhRepository;

    @Autowired
    public ChiTietCaKhamBenhService(@Qualifier("chiTietCaKhamBenhRepository") IGenericRepository<ChiTietCaKhamBenh> genericRepository) {
        super(genericRepository);
        this.chiTietCaKhamBenhRepository = (IChiTietCaKhamBenhRepository) genericRepository;
    }
}
