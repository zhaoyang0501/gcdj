package com.pzy.jcook.project.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.pzy.jcook.sys.entity.BaseEntity;

@Entity
@Table(name = "t_project_project")
public class Project  extends BaseEntity<Long>{
	private String title;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
}
