package com.ndt.repository;

import com.ndt.models.BacSi;
import com.ndt.models.CaKhamBenh;

import java.util.Date;
import java.util.List;

public interface ICaKhamBenhRepository extends IGenericRepository<CaKhamBenh> {
    List<BacSi> layBacSiTheoCaKham(int id, Date ngayKhamBenh);
}
