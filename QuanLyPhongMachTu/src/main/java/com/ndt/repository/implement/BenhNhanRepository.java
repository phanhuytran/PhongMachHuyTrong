package com.ndt.repository.implement;

import com.ndt.models.BenhNhan;
import com.ndt.models.PhieuKhamBenh;
import com.ndt.repository.IBenhNhanRepository;
import com.ndt.repository.IPhieuKhamBenhRepository;
import org.hibernate.HibernateError;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Repository
public class BenhNhanRepository extends GenericRepository<BenhNhan> implements IBenhNhanRepository {
    @Autowired
    IPhieuKhamBenhRepository iPhieuKhamBenhRepository;

    @Override
    @Transactional(readOnly = true, propagation = Propagation.REQUIRED)
    public List<BenhNhan> getBenhNhanTheoTen(String ten) {
        try {
            currentSession().beginTransaction();
            Query q = currentSession().createQuery("From BenhNhan where ten like concat('%', :t, '%')");
            q.setParameter("t", ten);
            currentSession().getTransaction().commit();
            return q.getResultList();
        }
        catch (HibernateError e) {
            return null;
        }
    }

    @Override
    @Transactional(readOnly = true, propagation = Propagation.REQUIRED)
    public List<BenhNhan> getTopBenhNhanTheoTen(int limit, String name) {
        try {
            currentSession().beginTransaction();
            Query q = currentSession().createQuery("From BenhNhan where ten like concat('%', :name, '%') ")
                    .setMaxResults(limit).setParameter("name", name);
            currentSession().getTransaction().commit();
            return q.getResultList();
        }
        catch (HibernateError e) {
            return null;
        }
    }

    @Override
    @Transactional(readOnly = true, propagation = Propagation.REQUIRED)
    public int getSoLuongPhieuKhamBenhCuaBenhNhan(BenhNhan benhNhan) {
        try {
            Query q = currentSession().createQuery("From PhieuKhamBenh where benhNhan.id=:maBenhNhan")
                    .setParameter("maBenhNhan", benhNhan.getId());
            return q.getResultList().size();
        }
        catch (HibernateError e) {
            return 0;
        }
    }

    @Override
    @Transactional(readOnly = true, propagation = Propagation.REQUIRED)
    public List<BenhNhan> getTopNewBenhNhan(int limit) {
        try {
            List<BenhNhan> ds = new ArrayList<>();

            Query q = currentSession().createSQLQuery("CALL getTopNewPatients(:limit)")
                    .addEntity(BenhNhan.class).setParameter("limit", limit);
            q.getResultList().forEach(b -> {
                if (getSoLuongPhieuKhamBenhCuaBenhNhan((BenhNhan) b) == 1)
                    ds.add((BenhNhan) b);
            });
            return ds;
        }
        catch (Exception e) {
            return null;
        }
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public boolean themBenhNhanVaPhieuKhamBenh(BenhNhan benhNhan, PhieuKhamBenh phieuKhamBenh) {
        BenhNhan b = insert(benhNhan);
        currentSession().save(phieuKhamBenh);

        if (b != null)
            return true;
        return false;
    }

    @Override
    @Transactional(readOnly = true)
    public BenhNhan getBenhNhanhTheoSDT(String sdt) {
        List<BenhNhan> result = currentSession().createQuery("From BenhNhan where dienThoai=:sdt")
                .setParameter("sdt", sdt).getResultList();
        return result.isEmpty() ? null : result.get(0);
    }

    @Override
    @Transactional(readOnly = true)
    public int[] getTotalPatients(int year) {
        int[] result = new int[12];
        List<PhieuKhamBenh> phieuKhamBenhs = currentSession().createQuery("From PhieuKhamBenh where year(ngayKham)=:y")
                .setParameter("y", year)
                .getResultList();
        for(PhieuKhamBenh p : phieuKhamBenhs) {
            for(int i = 0; i < 12; i++) {
                if (p.getNgayKham().getMonth() == i)
                    result[i] = result[i] + 1;
            }
        }
        return result;
    }
}
