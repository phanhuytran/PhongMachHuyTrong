package com.ndt.service.implement;

import com.ndt.models.PhieuKhamBenh;
import com.ndt.repository.IGenericRepository;
import com.ndt.repository.IPhieuKhamBenhRepository;
import com.ndt.service.IPhieuKhamBenhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class PhieuKhamBenhService extends GenericService<PhieuKhamBenh> implements IPhieuKhamBenhService {
    private IPhieuKhamBenhRepository phieuKhamBenhRepository;

    @Autowired
    public PhieuKhamBenhService(@Qualifier("phieuKhamBenhRepository") IGenericRepository<PhieuKhamBenh> iGenericRepository) {
        super(iGenericRepository);
        this.phieuKhamBenhRepository = (IPhieuKhamBenhRepository) iGenericRepository;
    }
}
