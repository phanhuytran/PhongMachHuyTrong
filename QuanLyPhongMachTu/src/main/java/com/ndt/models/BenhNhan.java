package com.ndt.models;


import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "benhnhan")
public class BenhNhan implements Serializable {
    @Id
    @Column(name = "id", length = 36)
    private String id;
    @Column(name = "Ho", length = 10, nullable = false)
    private String ho;
    @Column(name = "Ten", length = 45, nullable = false)
    private String ten;
    @Column(name = "GioiTinh", length = 10, nullable = false)
    private String gioiTinh;
    @Column(name = "NgaySinh", nullable = false)
    private Date ngaySinh;
    @Transient
    private String dateString;
    @Column(name = "DienThoai", length = 10, nullable = false)
    private String dienThoai;
//    @Column(name = "Image", length = 200)
//    private String image;
//    @Transient
//    private MultipartFile img;

    @OneToMany(mappedBy = "benhNhan", fetch = FetchType.LAZY,  cascade = CascadeType.REMOVE)
    private Set<ToaThuoc> dsToaThuoc;
    @OneToMany(mappedBy = "benhNhan", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
    private Set<PhieuKhamBenh> dsPhieuKhamBenh;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHo() {
        return ho;
    }

    public void setHo(String ho) {
        this.ho = ho;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDienThoai() {
        return dienThoai;
    }

    public void setDienThoai(String dienThoai) {
        this.dienThoai = dienThoai;
    }

    public Set<ToaThuoc> getDsToaThuoc() {
        return dsToaThuoc;
    }

    public void setDsToaThuoc(Set<ToaThuoc> dsToaThuoc) {
        this.dsToaThuoc = dsToaThuoc;
    }

    public Set<PhieuKhamBenh> getDsPhieuKhamBenh() {
        return dsPhieuKhamBenh;
    }

    public void setDsPhieuKhamBenh(Set<PhieuKhamBenh> dsPhieuKhamBenh) {
        this.dsPhieuKhamBenh = dsPhieuKhamBenh;
    }

    public String getDateString() {
        return dateString;
    }

    public void setDateString(String dateString) {
        this.dateString = dateString;
    }


}
