package com.ndt.repository;

import com.ndt.models.LoaiBenh;

import java.util.List;

public interface ILoaiBenhRepository extends IGenericRepository<LoaiBenh> {
    List<LoaiBenh> getLoaiBenhTheoTen(String ten);
    List<LoaiBenh> getLoaiBenhTheoMoTa(String moTa);
}
