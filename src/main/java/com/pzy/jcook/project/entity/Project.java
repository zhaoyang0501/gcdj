package com.pzy.jcook.project.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.pzy.jcook.sys.entity.BaseEntity;

@Entity
@Table(name = "t_project_project")
public class Project  extends BaseEntity<Long>{
	private String name;
	
	private String sn;
	
	private String address;
	
	private String area;
	
	private String  manger;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getManger() {
		return manger;
	}

	public void setManger(String manger) {
		this.manger = manger;
	}

	
	
}
