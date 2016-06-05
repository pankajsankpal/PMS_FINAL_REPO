/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.validators;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author Leon
 */
public class SendEmailValidator {

    public boolean validateRecipients(String receivers) {
        //String receivers1 = "CompsSTPC, ITSTPC, leongmail.com";
        String[] receiversSplit = receivers.split(" ");
        List<String> list = new ArrayList<String>();
        List<String> loweredList = new ArrayList<String>();
        list.addAll(Arrays.asList(receiversSplit));
        System.out.println(list);
        list.stream().forEach((st) -> {
            loweredList.add(st.toLowerCase());
        });
        System.out.println("Validator " + loweredList);
        boolean flag = false;
        if (loweredList.contains("compsstpc,") || loweredList.contains("compsstpc")) {
            flag = true;
        }
        if (loweredList.contains("itstpc,") || loweredList.contains("itstpc")) {
            flag = true;
        }
        if (loweredList.contains("prodstpc,") || loweredList.contains("prodstpc")) {
            flag = true;
        }
        if (loweredList.contains("elexstpc,") || loweredList.contains("elexstpc")) {
            flag = true;
        }
        if (loweredList.contains("compsftpc,") || loweredList.contains("compsftpc")) {
            flag = true;
        }
        if (loweredList.contains("itftpc,") || loweredList.contains("itftpc")) {
            flag = true;
        }
        if (loweredList.contains("prodftpc,") || loweredList.contains("prodftpc")) {
            flag = true;
        }
        if (loweredList.contains("elexftpc,") || loweredList.contains("elexftpc")) {
            flag = true;
        }
        if (loweredList.contains("stpc,") || loweredList.contains("stpc")) {
            flag = true;
        }
        if (loweredList.contains("ftpc,") || loweredList.contains("ftpc")) {
            flag = true;
        }
        if (loweredList.contains("tpc,") || loweredList.contains("tpc")) {
            flag = true;
        }
        if (loweredList.contains("prodclass,") || loweredList.contains("prodclass")) {
            flag = true;
        }
        if (loweredList.contains("compsclass,") || loweredList.contains("compsclass")) {
            flag = true;
        }
        if (loweredList.contains("itclass,") || loweredList.contains("itclass")) {
            flag = true;
        }
        if (loweredList.contains("elexclass,") || loweredList.contains("elexclass")) {
            flag = true;
        }
        System.out.println(flag);
        return flag;
    }

}
