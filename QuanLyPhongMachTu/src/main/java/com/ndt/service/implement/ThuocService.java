package com.ndt.service.implement;

import com.ndt.models.Thuoc;
import com.ndt.repository.IGenericRepository;
import com.ndt.repository.IThuocRepository;
import com.ndt.service.IThuocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class ThuocService extends GenericService<Thuoc> implements IThuocService {
    private IThuocRepository thuocRepository;

    @Autowired
    public ThuocService(@Qualifier("thuocRepository") IGenericRepository<Thuoc> genericRepository) {
        super(genericRepository);
        this.thuocRepository = (IThuocRepository) genericRepository;
    }
}
