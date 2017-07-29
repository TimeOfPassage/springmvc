package com.txzhe.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/api")
public abstract class BaseController {
	private Map<String,List<Object>> map = null;
	@RequestMapping(value = "/v1", method = RequestMethod.GET)
	public @ResponseBody Map<String,List<Object>> v1() {
		try{
			map = new HashMap<String, List<Object>>();
			//此处向下拓展
			List<Object> finalList = execute();
			map.put("DataSet", finalList);
		}catch(Exception e){
			e.printStackTrace();
		}
		return map;
	}
	public abstract List<Object> execute();
}
