package com.ndt.formatters;

import com.ndt.models.BacSi;
import org.springframework.format.Formatter;

import java.text.ParseException;
import java.util.Locale;

public class BacSiFormatter implements Formatter<BacSi> {
    @Override
    public BacSi parse(String s, Locale locale) throws ParseException {
        BacSi bacSi = new BacSi();
        bacSi.setId(s);
        return bacSi;
    }

    @Override
    public String print(BacSi bacSi, Locale locale) {
        return bacSi.getTen();
    }
}
