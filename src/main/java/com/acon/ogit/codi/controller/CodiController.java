package com.acon.ogit.codi.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acon.ogit.codi.dto.CodiCommentDto;
import com.acon.ogit.codi.dto.CodiDto;
import com.acon.ogit.codi.service.CodiService;

@Controller
public class CodiController {

	@Autowired
	private CodiService codiService;
	
	//덧글 입력 요청 처리
		@RequestMapping("/codi/comment_insert")
		public String commentInsert(@ModelAttribute CodiCommentDto dto){
			// @ModelAttribute 어노테이션을 이용해서 덧글 정보를 얻어온다.
			
			//서비스 객체를 이용해서 덧글이 저장될수 있도록 한다. 
			codiService.commentInsert(dto);
			
			//원글의 글번호를 읽어와서 
			int num=dto.getCodi_seq();
			
			//리다일렉트 응답할때 사용한다. 
			return "redirect:/codi/detail.do?num="+num;
		}
		
		
		@RequestMapping("/codi/detail")
		public ModelAndView detail(@RequestParam int num, HttpSession session){
			ModelAndView mView=codiService.detail(num);
			mView.setViewName("codi/detail");
			String members_id=(String)session.getAttribute("members_id");
			//로그인 했는지 여부도 ModelAndView 객체에 담아서 
			if(members_id==null){
				mView.addObject("isLogin", false);
			}else{
				mView.addObject("isLogin", true);
			}
		
			//리턴해준다. 
			return mView;
		}
		
		@RequestMapping("/codi/insert")
		public String Insert(HttpSession session, 
				@ModelAttribute CodiDto dto){
			//글 작성자를 읽어온다. 
//			String members_id=(String)session.getAttribute("members_id");	
//			String name=codiService.getName(members_id);
//			//codiDto 에 넣어준다
//			dto.setWriter(name);
			//Service 객체를 이용해서 저장
			codiService.insert(dto);
			
			return "redirect:/codi/list.do";
		}
		
		
		
		
		@RequestMapping("/codi/insertform")
		public ModelAndView privateInsertForm(HttpServletRequest request){
			
			ModelAndView mView=new ModelAndView();
			mView.setViewName("codi/insertform");
			
			return mView;
		}
		
		@RequestMapping("/codi/list")
		public ModelAndView list(){
			// 서비스를 이용해서 글목록이 담긴 ModelAndView 객체를 리턴받는다.
			ModelAndView mView=codiService.list();
			//view 페이지 설정하고 
			mView.setViewName("codi/list");
			//ModelAndView 객체를 리턴해준다. 
			return mView;
		}
}
