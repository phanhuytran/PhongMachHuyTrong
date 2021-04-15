package com.ndt.service;

import com.ndt.models.BacSi;
import com.ndt.models.CaKhamBenh;

import java.util.Date;
import java.util.List;

public interface ICaKhamBenhService extends IGenericService<CaKhamBenh> {
    List<BacSi> layBacSiTheoCaKham(int id, Date ngayKhamBenh);
}
