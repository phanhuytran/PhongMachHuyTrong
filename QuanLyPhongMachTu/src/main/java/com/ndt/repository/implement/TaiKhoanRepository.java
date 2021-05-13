package com.ndt.repository.implement;

import com.ndt.models.BacSi;
import com.ndt.models.TaiKhoan;
import com.ndt.repository.ITaiKhoanRepository;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Repository
public class TaiKhoanRepository extends GenericRepository<TaiKhoan> implements ITaiKhoanRepository {
    @Override
    @Transactional(readOnly = true, propagation = Propagation.REQUIRED)
    public TaiKhoan getTaiKhoanByUsername(String username) {
        Query q = currentSession().createQuery("From TaiKhoan where username=:u");
        q.setParameter("u", username);
        q.setFirstResult(0);

        return q.getResultList().size() == 0 ? null : (TaiKhoan) q.getResultList().get(0);
    }

    @Override
    @Transactional(readOnly = true, propagation = Propagation.REQUIRED)
    public List<TaiKhoan> getTaiKhoanTheoChucVu(String kw) {
        Query q = currentSession().createQuery("From TaiKhoan where role.ten=:c");
        q.setParameter("c", kw);
        return q.getResultList();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public boolean themTaiKhoanVaBacSi(TaiKhoan taiKhoan, BacSi bacSi) {
        TaiKhoan t = insert(taiKhoan);
        currentSession().save(bacSi);

        return t != null;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public List<TaiKhoan> getTaiKhoanBacSiTrong() {
        List<TaiKhoan> result = new ArrayList<>();
        result = currentSession().createSQLQuery("CALL getTaiKhoanConTrongBacSi()")
                .addEntity(TaiKhoan.class).getResultList();
        return result;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public List<TaiKhoan> getTaiKhoanNhanVienTrong() {
        List<TaiKhoan> result;
        result = currentSession().createSQLQuery("CALL getTaiKhoanConTrongNhanVien()")
                .addEntity(TaiKhoan.class).getResultList();

        return  result;
    }
}
