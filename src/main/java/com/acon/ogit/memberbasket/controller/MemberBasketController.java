package com.acon.ogit.memberbasket.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acon.ogit.memberbasket.dto.MemberBasketDto;
import com.acon.ogit.memberbasket.service.MemberBasketService;

@Controller
public class MemberBasketController {

	@Autowired
	private MemberBasketService membasService;
	
	@RequestMapping("/memberbasket/insertform")
	public ModelAndView insertform(HttpServletRequest request){
		
		ModelAndView mView=new ModelAndView();
		mView.setViewName("memberbasket/insertform");
		
		return mView;
	}
	
	@RequestMapping("/memberbasket/insert")
	public String insert(HttpSession session,@ModelAttribute MemberBasketDto dto){
		
		String members_id="exampleid";
		dto.setMembers_id(members_id);
		membasService.insert(dto);
		
		
		return "redirect:home.do";
	}
	
	@RequestMapping("/memberbasket/detail")
	public ModelAndView detail(HttpSession session){
		String members_id=(String)session.getAttribute("members_id");
		ModelAndView mView=membasService.detail(members_id);
		mView.setViewName("memberbasket/detail");
		
		return mView;
	}
	
	@RequestMapping("/memberbasket/list")
	public ModelAndView list(){
		ModelAndView mView=membasService.getList();
		mView.setViewName("memberbasket/list");
		
		return mView;
	}
}
