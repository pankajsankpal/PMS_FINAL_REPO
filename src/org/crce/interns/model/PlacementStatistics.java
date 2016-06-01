package org.crce.interns.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "company", catalog = "placement_statistics_schema")
public class PlacementStatistics {
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	@Column(name = "placment_stats_id")
	private int placmentStatsId;
	
	@Column(name = "company_id")
	private int companyId;
	
	@Column(name = "year")
	private int year;
	
	@Column(name = "branch")
	private int branch;
	
	@Column(name = "no_applied")
	private int noApplied;
	
	@Column(name = "total_no_of_students")
	private int totalNoOfStudents;
	
	@Column(name = "no_joined")
	private int noJoined;
	
	@Column(name = "no_dual_placed")
	private int noDualPlaced;
	
	@Column(name = "created_by")
	private int createdBy;
	
	@Column(name = "created_date")
	private int createdDate;
	
	@Column(name = "modified_by")
	private int modifiedBy;
	
	@Column(name = "modified_date")
	private int modifiedDate;

	public int getPlacmentStatsId() {
		return placmentStatsId;
	}

	public void setPlacmentStatsId(int placmentStatsId) {
		this.placmentStatsId = placmentStatsId;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getBranch() {
		return branch;
	}

	public void setBranch(int branch) {
		this.branch = branch;
	}

	public int getNoApplied() {
		return noApplied;
	}

	public void setNoApplied(int noApplied) {
		this.noApplied = noApplied;
	}

	public int getTotalNoOfStudents() {
		return totalNoOfStudents;
	}

	public void setTotalNoOfStudents(int totalNoOfStudents) {
		this.totalNoOfStudents = totalNoOfStudents;
	}

	public int getNoJoined() {
		return noJoined;
	}

	public void setNoJoined(int noJoined) {
		this.noJoined = noJoined;
	}

	public int getNoDualPlaced() {
		return noDualPlaced;
	}

	public void setNoDualPlaced(int noDualPlaced) {
		this.noDualPlaced = noDualPlaced;
	}

	public int getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}

	public int getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(int createdDate) {
		this.createdDate = createdDate;
	}

	public int getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(int modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public int getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(int modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	
	
	
	
	
}
