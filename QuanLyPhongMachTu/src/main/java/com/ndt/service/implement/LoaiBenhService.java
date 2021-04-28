package com.ndt.service.implement;

import com.ndt.models.LoaiBenh;
import com.ndt.repository.IGenericRepository;
import com.ndt.repository.ILoaiBenhRepository;
import com.ndt.service.ILoaiBenhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoaiBenhService extends GenericService<LoaiBenh> implements ILoaiBenhService {
    private ILoaiBenhRepository loaiBenhRepository;

    @Autowired
    public LoaiBenhService(@Qualifier("loaiBenhRepository") IGenericRepository<LoaiBenh> iGenericRepository) {
        super(iGenericRepository);
        this.loaiBenhRepository = (ILoaiBenhRepository) iGenericRepository;
    }

    @Override
    public List<LoaiBenh> getLoaiBenhTheoTen(String ten) {
        return loaiBenhRepository.getLoaiBenhTheoTen(ten);
    }

    @Override
    public List<LoaiBenh> getLoaiBenhTheoMoTa(String moTa) {
        return loaiBenhRepository.getLoaiBenhTheoMoTa(moTa);
    }
}
