package com.ndt.service.implement;

import com.ndt.models.ToaThuoc;
import com.ndt.repository.IGenericRepository;
import com.ndt.repository.IToaThuocRepository;
import com.ndt.service.IToaThuocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class ToaThuocService extends GenericService<ToaThuoc> implements IToaThuocService {
    private IToaThuocRepository toaThuocRepository;

    @Autowired
    public ToaThuocService(@Qualifier("toaThuocRepository") IGenericRepository<ToaThuoc> iGenericRepository) {
        super(iGenericRepository);
        this.toaThuocRepository = (IToaThuocRepository) iGenericRepository;
    }
}
