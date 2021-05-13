package com.ndt.formatters;

import com.ndt.models.BenhNhan;
import org.springframework.format.Formatter;

import java.text.ParseException;
import java.util.Locale;

public class BenhNhanFormatter implements Formatter<BenhNhan> {
    @Override
    public BenhNhan parse(String s, Locale locale) throws ParseException {
        BenhNhan benhNhan = new BenhNhan();
        benhNhan.setId(s);
        return benhNhan;
    }

    @Override
    public String print(BenhNhan benhNhan, Locale locale) {
        return benhNhan.getTen();
    }
}
