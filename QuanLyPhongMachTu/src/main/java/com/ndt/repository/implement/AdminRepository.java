package com.ndt.repository.implement;

import com.ndt.models.Admin;
import com.ndt.repository.IAdminRepository;
import org.springframework.stereotype.Repository;

@Repository
public class AdminRepository extends GenericRepository<Admin> implements IAdminRepository {
}
