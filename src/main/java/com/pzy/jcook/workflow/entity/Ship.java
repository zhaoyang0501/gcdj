package com.pzy.jcook.workflow.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.pzy.jcook.project.entity.Project;
import com.pzy.jcook.sys.entity.BaseEntity;
import com.pzy.jcook.sys.entity.User;

@Entity
@Table(name = "t_workflow_ship")
public class Ship  extends BaseEntity<Long>{
	
	private Integer type;
	
	private String receiveName;
	
	private String receiveAddr;
	
	private String receiveTel;
	
	private Date receiveDate;
	
	private String remark;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private Project project;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private User creater;
	
	
	private String state;
	
	private String approve;
	
	private Integer reject;
	
	
	
	public Integer getType() {
		return type;
	}


	public void setType(Integer type) {
		this.type = type;
	}


	public String getReceiveName() {
		return receiveName;
	}


	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}


	public String getReceiveAddr() {
		return receiveAddr;
	}


	public void setReceiveAddr(String receiveAddr) {
		this.receiveAddr = receiveAddr;
	}


	public String getReceiveTel() {
		return receiveTel;
	}


	public void setReceiveTel(String receiveTel) {
		this.receiveTel = receiveTel;
	}


	public Date getReceiveDate() {
		return receiveDate;
	}


	public void setReceiveDate(Date receiveDate) {
		this.receiveDate = receiveDate;
	}


	public String getApprove() {
		return approve;
	}


	public void setApprove(String approve) {
		this.approve = approve;
	}


	public Integer getReject() {
		return reject;
	}


	public void setReject(Integer reject) {
		this.reject = reject;
	}


	public String getRemark() {
		return remark;
	}


	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public User getCreater() {
		return creater;
	}

	public void setCreater(User creater) {
		this.creater = creater;
	}
	
}
