package com.pzy.jcook.sys.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pzy.jcook.dto.json.DataTableResponse;
import com.pzy.jcook.dto.json.Response;
import com.pzy.jcook.sys.dto.CategorySelect;
import com.pzy.jcook.sys.dto.CategoryTree;
import com.pzy.jcook.sys.dto.DeptmentSelect;
import com.pzy.jcook.sys.entity.Category;
import com.pzy.jcook.sys.entity.Deptment;
import com.pzy.jcook.sys.entity.Item;
import com.pzy.jcook.sys.service.CategoryService;
import com.pzy.jcook.sys.service.ItemService;

@Controller
@RequestMapping("sys/item")
public class ItemController extends AbstractBaseCURDController<Item,Long>  {
	
	
	@Autowired
	private CategoryService categoryService;
	
	@Override
	public ItemService getBaseService() {
		return (ItemService)super.getBaseService();
	}
	
	@Override
	@RequestMapping("index")
	public String index(Model model) {
		List<Category> deptments = this.categoryService.queryRootList();
		List<CategorySelect> deptmentselect = new ArrayList<CategorySelect>();
		for(Category dept:deptments){
			CategorySelect.convertToSelectDto(dept,deptmentselect);
		}
		model.addAttribute("cateselects",deptmentselect);
		return this.getBasePath()+"/index";
	}
	
	@Override
	protected String getBasePath() {
		return "sys/item";
	}
	
	@RequestMapping("allcategorys")
	@ResponseBody
	public List<CategoryTree> allCategory(){
		List<Category> categorys = this.categoryService.findAll();
		List<CategoryTree> categoryTrees = new ArrayList<CategoryTree>();
		for(Category dept:categorys){
			categoryTrees.add(new CategoryTree(dept));
		}
		return categoryTrees;
	}
	
	
	
	@RequestMapping("listall")
	@ResponseBody
	public Response listall(Integer start, Integer length, String name,Long cid) {
		int pageNumber = (int) (start / length) + 1;
		int pageSize = length;
		Page<Item> m = this.getBaseService().findAll(pageNumber, pageSize, name,cid);
		return new DataTableResponse<Item>( m.getContent(),(int) m.getTotalElements() );
	}
	
}
