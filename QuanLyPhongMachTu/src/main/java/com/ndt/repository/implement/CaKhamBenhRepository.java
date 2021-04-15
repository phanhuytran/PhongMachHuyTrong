package com.ndt.repository.implement;

import com.ndt.models.BacSi;
import com.ndt.models.CaKhamBenh;
import com.ndt.repository.ICaKhamBenhRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Repository
public class CaKhamBenhRepository extends GenericRepository<CaKhamBenh> implements ICaKhamBenhRepository {
    @Override
    @Transactional(readOnly = true)
    public List<BacSi> layBacSiTheoCaKham(int id, Date ngayKhamBenh) {
        List<BacSi> result;
        result = currentSession().createSQLQuery("CALL getBacSiTheoCaKhamBenh(:c, :d)")
                .addEntity(BacSi.class).setParameter("c", id).setParameter("d", ngayKhamBenh).getResultList();
        return result;
    }
}
