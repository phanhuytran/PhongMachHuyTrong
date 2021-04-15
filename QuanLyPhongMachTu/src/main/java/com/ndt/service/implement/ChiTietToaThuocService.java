package com.ndt.service.implement;

import com.ndt.models.ChiTietToaThuoc;
import com.ndt.repository.IChiTietToaThuocRepository;
import com.ndt.repository.IGenericRepository;
import com.ndt.service.IChiTietToaThuocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class ChiTietToaThuocService extends GenericService<ChiTietToaThuoc> implements IChiTietToaThuocService {
    private IChiTietToaThuocRepository chiTietToaThuocRepository;

    @Autowired
    public ChiTietToaThuocService(@Qualifier("chiTietToaThuocRepository") IGenericRepository<ChiTietToaThuoc> genericRepository) {
        super(genericRepository);
        this.chiTietToaThuocRepository = (IChiTietToaThuocRepository) genericRepository;
    }
}
