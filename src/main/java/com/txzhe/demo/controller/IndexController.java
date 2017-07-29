package com.txzhe.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
@Controller
public class IndexController extends BaseController{
	@Override
	public List<Object> execute() {
		List<Object> dataList = new ArrayList<>();
		dataList.add("A");
		dataList.add("B");
		dataList.add("C");
		return dataList;
	}
}
