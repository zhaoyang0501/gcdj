package com.pzy.jcook.workflow.web;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.shiro.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pzy.jcook.dto.json.DataTableResponse;
import com.pzy.jcook.dto.json.Response;
import com.pzy.jcook.dto.json.SuccessResponse;
import com.pzy.jcook.sys.entity.User;
import com.pzy.jcook.sys.service.UserService;
import com.pzy.jcook.workflow.dto.WorkItemDTO;
import com.pzy.jcook.workflow.entity.Workitem;
import com.pzy.jcook.workflow.service.WorkFlowService;
import com.pzy.jcook.workflow.service.WorkitemService;

/***
 * 任务单据的相关操作
 * 
 * @author panchaoyang
 *
 */
@Controller
@RequestMapping("workflow/ship")
public class ShipController {
	private static final Logger log = LoggerFactory.getLogger(ShipController.class);

	@Autowired
	WorkitemService workitemService;

	@Autowired
	private ProcessEngine processEngine;

	@Autowired
	private UserService userService;

	@Autowired
	private WorkFlowService workFlowService;

	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}

	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String create(Model model) {
		return "workflow/ship/create";
	}

	@RequestMapping(value = "index")
	public String index(Model model) {
		return "workitem/index";
	}

}
