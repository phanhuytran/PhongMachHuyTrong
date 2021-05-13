package com.ndt.modelview;

import com.ndt.models.BacSi;
import com.ndt.models.CaKhamBenh;
import com.ndt.models.LoaiBenh;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.*;
import java.util.Set;


public class Appointment {

    @NotEmpty(message = "This field not null")
    private String ho;
    @NotEmpty(message = "This field not null")
    private String ten;
    @NotEmpty(message = "This field not null")
    private String gioiTinh;

    @NotNull(message = "This field not null or type wrong date born ")
//    @Past(message = "Nhập ngày ở quá khứ")
    @Pattern(regexp = "([0-2][0-9]|3[0-1]/[0-9]|1[0-2]/((19[5-9][0-9])|(20[0-2]0)))" )

    @Temporal(TemporalType.DATE)
    private String ngaySinh;

    @NotEmpty(message = "This field not null")

    @Pattern(regexp = "[0-9]{10}", message = "Khong duoc nhap chu, 10 so ")
    private String dienThoai;

    @NotEmpty(message = "This field not null")
    private String diaChi;

    @NotNull(message = "This field not null")
    private CaKhamBenh caKhamBenh;

    @NotNull(message = "This field not null")
//    @Future(message = "Đặt ngày ở tương lai")
//    @DateTimeFormat(pattern = "dd/MM/yyyy")
    @Pattern(regexp = "()")
    @Temporal(TemporalType.DATE)
    private String ngayKham;

    @NotNull(message = "This field not null")
    private BacSi bacSi;

    @NotNull(message = "This field not null")
    private LoaiBenh loaiBenh;


    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
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

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDienThoai() {
        return dienThoai;
    }

    public void setDienThoai(String dienThoai) {
        this.dienThoai = dienThoai;
    }

    public CaKhamBenh getCaKhamBenh() {
        return caKhamBenh;
    }

    public void setCaKhamBenh(CaKhamBenh caKhamBenh) {
        this.caKhamBenh = caKhamBenh;
    }

    public String getNgayKham() {
        return ngayKham;
    }

    public void setNgayKham(String ngayKham) {
        this.ngayKham = ngayKham;
    }

    public BacSi getBacSi() {
        return bacSi;
    }

    public void setBacSi(BacSi bacSi) {
        this.bacSi = bacSi;
    }

    public LoaiBenh getLoaiBenh() {
        return loaiBenh;
    }

    public void setLoaiBenh(LoaiBenh loaiBenh) {
        this.loaiBenh = loaiBenh;
    }
}
