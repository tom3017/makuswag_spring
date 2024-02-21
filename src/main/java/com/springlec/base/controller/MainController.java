package com.springlec.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springlec.base.service.TestDaoService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {

	@Autowired
	TestDaoService service;
	
	// 메인으로
	@GetMapping("/") 
	public String main() throws Exception {
		return "index";
	}
	
	// 메인으로
	@PostMapping("/") 
	public String main1() throws Exception {
		return "index";
	}
	
	// 로그아웃
	@GetMapping("logout") 
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "index";
	}
	
	// ------------------ Header ---------------------
	// 로그인
	@GetMapping("login")
	public String login(HttpSession session) throws Exception {
		session.invalidate();
		return "member/login";
	}
	
	// 마이페이지
	@GetMapping("myPage")
	public String myPage() throws Exception {
		return "member/myPage";
	}
	
	// 카트
	@GetMapping("cart")
	public String cart() throws Exception {
		return "member/cart";
	}
	
	// ------------------ sidemenu ---------------------
	// about us
	@GetMapping("about")
	public String about() throws Exception {
		return "about/aboutUs";
	}
	
	// ------------------ category ---------------------
	// best100
	@GetMapping("best100")
	public String best100() throws Exception {
		return "category/best_100";
	}
	
	// all_in_one
	@GetMapping("all_in_one")
	public String all_in_one() throws Exception {
		return "category/all_in_one";
	}
	
	// outer
	@GetMapping("outer")
	public String outer() throws Exception {
		return "category/outer";
	}
	
	// topshort
	@GetMapping("topshort")
	public String topshort() throws Exception {
		return "category/topshort_sleeve";
	}
	
	// toplong
	@GetMapping("toplong")
	public String toplong() throws Exception {
		return "category/toplong_sleeve";
	}
	
	// bottoms
	@GetMapping("bottoms")
	public String bottoms() throws Exception {
		return "category/bottoms";
	}
	
	// bags
	@GetMapping("bags")
	public String bags() throws Exception {
		return "category/bags";
	}
	
	// accessories
	@GetMapping("accessories")
	public String accessories() throws Exception {
		return "category/accessories";
	}
	
	// shoes
	@GetMapping("shoes")
	public String shoes() throws Exception {
		return "category/shoes";
	}
	
	// women
	@GetMapping("women")
	public String women() throws Exception {
		return "category/women_only";
	}

	// ------------------ search ---------------------
	// search
	@PostMapping("search")
	public String search() throws Exception {
		return "product/search";
	}
	
	// search1
	@PostMapping("search1")
	public String search1() throws Exception {
		return "product/search1";
	}
	
	// search2
	@PostMapping("search2")
	public String search2() throws Exception {
		return "product/search2";
	}
	
	// ------------------ footer ---------------------
	
	// agreement
	@GetMapping("agreement")
	public String agreement() throws Exception {
		return "member/agreement";
	}
	
	// privacy
	@GetMapping("privacy")
	public String privacy() throws Exception {
		return "member/privacy";
	}
	
}
