package com.ndt.repository;

import com.ndt.models.BacSi;
import com.ndt.models.BenhNhan;
import com.ndt.models.ToaThuoc;

import java.util.List;
import java.util.Set;

public interface IBacSiRepository extends IGenericRepository<BacSi> {
    List<BacSi> getBacSiTheoTen(String ten);
    List<BacSi> getTopBacSiTheoTen(int limit, String name);
    Set<ToaThuoc> getToaThuocTheoBacSi(BacSi bacSi);
    Set<BenhNhan> getBenhNhanTheoBacSi(BacSi bacSi);
    List<BacSi> getAllbyStorProcudure ();
}
