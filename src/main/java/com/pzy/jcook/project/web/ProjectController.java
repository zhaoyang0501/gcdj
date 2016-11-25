package com.pzy.jcook.project.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pzy.jcook.project.entity.Project;
import com.pzy.jcook.sys.web.AbstractBaseCURDController;

@Controller
@RequestMapping("project/project")
public class ProjectController extends AbstractBaseCURDController<Project,Long> {

	@Override
	protected String getBasePath() {
		return "project/project";
	}
	
	@Override
	@RequestMapping("index")
	public String index(Model model) {
		return this.getBasePath()+"/index";
	}
}
