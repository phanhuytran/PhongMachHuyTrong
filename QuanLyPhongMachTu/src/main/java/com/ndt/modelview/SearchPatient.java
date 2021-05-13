package com.ndt.modelview;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class SearchPatient {

    @NotEmpty(message = "This field cannot be null")
    @Pattern(regexp = "[0-9]{10}", message = "Khong duoc nhap chu, 10 so ")
    private String dienThoai;



    public String getDienThoai() {
        return dienThoai;
    }

    public void setDienThoai(String dienThoai) {
        this.dienThoai = dienThoai;
    }
}
