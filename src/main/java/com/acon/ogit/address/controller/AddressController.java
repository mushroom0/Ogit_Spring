package com.acon.ogit.address.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acon.ogit.address.dto.AddressDto;
import com.acon.ogit.address.service.AddressService;

@Controller
public class AddressController {

	@Autowired
	private AddressService addressService;
	
	@RequestMapping("/address/insertform")
	public ModelAndView insertform(HttpServletRequest request){
		
		ModelAndView mView=new ModelAndView();
		mView.setViewName("address/insertform");
		
		return mView;
	}
	
	@RequestMapping("/address/insert")
	public String insert(HttpSession session,@ModelAttribute AddressDto dto){
		
		String members_id=(String)session.getAttribute("members_id");
		dto.setMembers_id(members_id);
		addressService.insert(dto);
		
		
		return "redirect:home.do";
	}
	
	@RequestMapping("/address/detail")
	public ModelAndView detail(@RequestParam int seq){
		ModelAndView mView=addressService.detail(seq);
		mView.setViewName("address/detail");
		
		return mView;
	}
}
