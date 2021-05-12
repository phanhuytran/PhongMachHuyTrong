package com.ndt.formatters;

import com.ndt.models.CaKhamBenh;
import org.springframework.format.Formatter;

import java.text.ParseException;
import java.util.Locale;

public class CaKhamBenhFormatter implements Formatter<CaKhamBenh> {
    @Override
    public CaKhamBenh parse(String s, Locale locale) throws ParseException {
        CaKhamBenh caKhamBenh = new CaKhamBenh();
        caKhamBenh.setId(Integer.parseInt(s));
        return caKhamBenh;
    }

    @Override
    public String print(CaKhamBenh caKhamBenh, Locale locale) {
        return caKhamBenh.getTenCa();
    }
}
