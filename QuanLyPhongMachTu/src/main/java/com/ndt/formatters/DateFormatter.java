package com.ndt.formatters;

import org.springframework.format.Formatter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class DateFormatter implements Formatter<Date> {
    SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

    @Override
    public Date parse(String s, Locale locale) throws ParseException {
        return format.parse(s);
    }

    @Override
    public String print(Date date, Locale locale) {
        return format.format(date);
    }
}
