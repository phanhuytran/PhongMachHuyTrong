package com.ndt.service.implement;

import com.ndt.models.HoaDon;
import com.ndt.repository.IGenericRepository;
import com.ndt.repository.IHoaDonRepository;
import com.ndt.service.IHoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class HoaDonService extends GenericService<HoaDon> implements IHoaDonService {
    private IHoaDonRepository hoaDonRepository;

    @Autowired
    public HoaDonService(@Qualifier("hoaDonRepository") IGenericRepository<HoaDon> iGenericRepository) {
        super(iGenericRepository);
        this.hoaDonRepository = (IHoaDonRepository) iGenericRepository;
    }
}
