package com.ndt.repository.implement;

import com.ndt.models.HoaDon;
import com.ndt.repository.IHoaDonRepository;
import org.springframework.stereotype.Repository;

@Repository
public class HoaDonRepository extends GenericRepository<HoaDon> implements IHoaDonRepository {
}
