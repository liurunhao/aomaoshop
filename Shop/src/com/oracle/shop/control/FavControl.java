package com.oracle.shop.control;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.FavDAO;
import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.Users;

@Controller
@RequestMapping("/fav")
public class FavControl {
	
	@RequestMapping("/delete")
	public String deleteProductsFromfav(int pid,HttpSession session){
		
		int userid=((Users)session.getAttribute("logineduser")).getusers_id();
		System.out.println("删除购物车的方法");
		int result=dao.deleteGoodsFromfav(userid, pid);
		System.out.println(result>0?"删除成功":"删除失败");
		return "redirect:list";
	}
	
	@Autowired
	private FavDAO dao;
	
	@RequestMapping("/add")
	public String addToFav(int pid,HttpSession  session){
		if(session.getAttribute("logineduser")==null){
			return "login";
		}else{
			int USER_ID=((Users)session.getAttribute("logineduser")).getusers_id();
			int result=dao.addProductToFav(pid, USER_ID, new Date().toLocaleString());
			System.out.println(result>0?"添加成功":"添加失败");
			return "redirect:list";
		}
	}
	
	@RequestMapping("/list")
	public String list(Model m,HttpSession  session){
		if(session.getAttribute("logineduser")==null){
			return "login";
		}else{
		int USER_ID=((Users)session.getAttribute("logineduser")).getusers_id();
		List<Goods> gs=dao.listAllProductsOfFav(USER_ID);
		m.addAttribute("gs", gs);
		return "fav";
		}
	}
	
}
