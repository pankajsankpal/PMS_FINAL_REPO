/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.crce.interns.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Leon
 */
@Entity
@Table(name = "quick_stats", catalog="placement_statistics_schema")
@SuppressWarnings("serial")
public class QuickStats {
    
    @Id
    @Column(name = "username" )        
    String userName;
    
    
    @Column(name = "branch" )
    String branch;

    @Column(name = "company_id")
    String companyId;
    
    
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }
    
    
    
}
