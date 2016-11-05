package com.pzy.jcook.workflow.service;
import org.activiti.engine.ProcessEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pzy.jcook.sys.service.BaseService;
import com.pzy.jcook.workflow.entity.Ship;
import com.pzy.jcook.workflow.repository.ShipRepository;

@Service
public class ShipService extends BaseService<Ship, Long> {
	
	@Autowired
	private ShipRepository shipRepository;
	
	@Autowired
	private ProcessEngine processEngine;
	
}
