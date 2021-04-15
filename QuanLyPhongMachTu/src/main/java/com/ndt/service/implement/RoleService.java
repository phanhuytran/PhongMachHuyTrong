package com.ndt.service.implement;

import com.ndt.models.Role;
import com.ndt.repository.IGenericRepository;
import com.ndt.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class RoleService extends GenericService<Role> implements IRoleService {
    private IGenericRepository<Role> roleRepository;

    @Autowired
    public RoleService(@Qualifier("roleRepository")IGenericRepository<Role> iGenericRepository) {
        super(iGenericRepository);
        this.roleRepository = iGenericRepository;
    }
}
