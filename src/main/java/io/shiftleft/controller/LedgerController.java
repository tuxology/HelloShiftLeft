package io.shiftleft.controller;

import io.shiftleft.exception.InvalidCustomerRequestException;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;


public class LedgerController {

    private static Logger log = LoggerFactory.getLogger(LedgerController.class);

    @RequestMapping(value = "/ledgers/{ledgerId}", method = RequestMethod.GET)
    public String getLedger(@PathVariable("ledgerId") Long ledgerId) throws IOException {

        StringBuilder sb = new StringBuilder();
        /* validate ledger Id parameter */
        if (null == ledgerId) {
            throw new InvalidCustomerRequestException();
        }

        Runtime runtime = Runtime.getRuntime();
        Process proc = runtime.exec("find" + " " + ledgerId);

        InputStream is = proc.getInputStream();
        InputStreamReader isr = new InputStreamReader(is);
        BufferedReader br = new BufferedReader(isr);

        String line;
        while ((line = br.readLine()) != null) {
            sb.append(line);
        }

        return sb.toString();
    }
}
