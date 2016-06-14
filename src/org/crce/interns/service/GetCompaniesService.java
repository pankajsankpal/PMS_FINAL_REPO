/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.service;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Leon
 */
public interface GetCompaniesService {
    public Map referenceData(HttpServletRequest request) throws Exception;
}
