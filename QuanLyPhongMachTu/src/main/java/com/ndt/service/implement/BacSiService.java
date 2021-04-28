package com.ndt.service.implement;

import com.ndt.models.BacSi;
import com.ndt.models.BenhNhan;
import com.ndt.models.ToaThuoc;
import com.ndt.repository.IBacSiRepository;
import com.ndt.repository.IGenericRepository;
import com.ndt.service.IBacSiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public class BacSiService extends GenericService<BacSi> implements IBacSiService {
    private IBacSiRepository bacSiRepository;

    @Autowired
    public BacSiService(@Qualifier("bacSiRepository") IGenericRepository<BacSi> iGenericRepository) {
        super(iGenericRepository);
        this.bacSiRepository = (IBacSiRepository) iGenericRepository;
    }

    @Override
    public List<BacSi> getBacSiTheoTen(String ten) {
        return bacSiRepository.getBacSiTheoTen(ten);
    }

    @Override
    public List<BacSi> getTopBacSiTheoTen(int limit, String name) {
        return bacSiRepository.getTopBacSiTheoTen(limit, name);
    }

    @Override
    public Set<ToaThuoc> getToaThuocTheoBacSi(BacSi bacSi) {
        return bacSiRepository.getToaThuocTheoBacSi(bacSi);
    }

    @Override
    public Set<BenhNhan> getBenhNhanTheoBacSi(BacSi bacSi) {
        return bacSiRepository.getBenhNhanTheoBacSi(bacSi);
    }
}
