/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.service.impl;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.crce.interns.dao.impl.GetCompaniesDAOImpl;
import org.crce.interns.service.GetCompaniesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Leon
 */
@Service("getCompaniesService")
public class GetCompaniesServiceImpl implements GetCompaniesService{
    
    @Autowired
    GetCompaniesDAOImpl getCompaniesDAO;
    
    @Override
    public Map referenceData(HttpServletRequest request) throws Exception{
        
        Map referenceData = new HashMap();
        Map<String,String> companies = new LinkedHashMap<String,String>();
        companies.putAll(getCompaniesDAO.getCompanies());
        return companies;
    }
}
