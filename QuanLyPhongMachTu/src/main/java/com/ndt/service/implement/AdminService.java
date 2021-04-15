package com.ndt.service.implement;

import com.ndt.models.Admin;
import com.ndt.repository.IAdminRepository;
import com.ndt.repository.IGenericRepository;
import com.ndt.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class AdminService extends GenericService<Admin> implements IAdminService {
    private IAdminRepository adminRepository;

    @Autowired
    public AdminService(@Qualifier("adminRepository") IGenericRepository<Admin> genericRepository) {
        super(genericRepository);
        this.adminRepository = (IAdminRepository) genericRepository;
    }
}
