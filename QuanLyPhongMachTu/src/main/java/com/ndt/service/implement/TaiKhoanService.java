package com.ndt.service.implement;

import com.ndt.models.BacSi;
import com.ndt.models.TaiKhoan;
import com.ndt.repository.IGenericRepository;
import com.ndt.repository.ITaiKhoanRepository;
import com.ndt.service.ITaiKhoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class TaiKhoanService extends GenericService<TaiKhoan> implements ITaiKhoanService {
    private ITaiKhoanRepository taiKhoanRepository;

    @Autowired
    public TaiKhoanService(@Qualifier("taiKhoanRepository") IGenericRepository<TaiKhoan> iGenericRepository) {
        super(iGenericRepository);
        this.taiKhoanRepository = (ITaiKhoanRepository) iGenericRepository;
    }

    @Override
    public TaiKhoan getTaiKhoanByUsername(String username) {
        return taiKhoanRepository.getTaiKhoanByUsername(username);
    }

    @Override
    public List<TaiKhoan> getTaiKhoanTheoChucVu(String kw) {
        return taiKhoanRepository.getTaiKhoanTheoChucVu(kw);
    }

    @Override
    public boolean themTaiKhoanVaBacSi(TaiKhoan taiKhoan, BacSi bacSi) {
        return taiKhoanRepository.themTaiKhoanVaBacSi(taiKhoan, bacSi);
    }

    @Override
    public List<TaiKhoan> getTaiKhoanBacSiTrong() {
        return taiKhoanRepository.getTaiKhoanBacSiTrong();
    }


    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException {
        TaiKhoan users = taiKhoanRepository.getTaiKhoanByUsername(username);
        if (users == null)
            throw new UsernameNotFoundException("Không tồn tại!");

        Set<GrantedAuthority> authorities = new HashSet<>();
        authorities.add(new SimpleGrantedAuthority(users.getRole().getTen()));
        return new org.springframework.security.core.userdetails.User(
                users.getUsername(), users.getPassword(), authorities);
    }
}
