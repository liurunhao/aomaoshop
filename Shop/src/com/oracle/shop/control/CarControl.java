package com.oracle.shop.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.CarDAO;
import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.shoppingcart;
import com.oracle.shop.model.javabean.Users;
/**
 * 购物车模块的后台control
 * @author Administrator
 *
 */

@Controller
@RequestMapping("/car")
public class CarControl {
	
	@RequestMapping("/delete")
	public String deleteProductFormShopcar(int pid,HttpSession session){
		
		int userid=((Users)session.getAttribute("logineduser")).getusers_id();
		System.out.println("删除购物车的方法");
		int result=dao.deleteGoodsFromShopcar(userid, pid);
		System.out.println(result>0?"删除成功":"删除失败");
		return "redirect:list";
	}
	
	@Autowired
	private CarDAO dao;

	@RequestMapping("/add")
	public String addProductToCar(int pid,HttpSession session){
		//判断是否登录，没有登录，直接跳转到登录页面
		if(session.getAttribute("logineduser")==null){
			return "login";
		}else{
	
			//从session中获取登录的用户编号
			int users_id=((Users)session.getAttribute("logineduser")).getusers_id();
			
			//调用dao方法将当前商品添加到购物车表中
			
			/****
			 * 在添加之前先查询该用户的购物车表里面是否有这个商品，
			 * 如果有应该查处之前的数量，将数量加1然后修改到购物车表
			 * 如果没有，则直接执行添加到购物车表
			 * 
			 * ???
			 */
			if(dao.addProductNumber(pid, users_id)>0){
			}else{
				int result=dao.addProduct(users_id, pid);
				System.out.println(result>0?"添加成功":"添加失败");
			}
			
			
			
			
		return "redirect:list";
		}
	}
	/**
	 * 这是查询用户下的多有购物车商品信息的方法
	 * @param session
	 * @param m
	 * @return
	 */
	@RequestMapping("/list")
	public String listCars(HttpSession session,Model  m){
		System.out.println("list cars");
		
		if(session.getAttribute("logineduser")==null){
			return "login";
		}else{
	
		//从session中获取登录的用户编号
		int users_id=((Users)session.getAttribute("logineduser")).getusers_id();
		Map<Goods, Integer> detailCars=new HashMap<>();
		
		
		List<shoppingcart> sc=dao.listCartsByusers_id(users_id);
		
		
//		int shopcount=dao.getAllCountOfShopcart(users_id);
//		if(shopcount<=3){
//			shopcount=550;
//		}
//		else{
//			shopcount=(shopcount-3)*115+550;
//		}
//		m.addAttribute("shopcount",shopcount);
		
		for(shoppingcart s:sc){
			detailCars.put(dao.getGoodsBygoods_id(s.getgoods_id()), s.getsum());
		}
		m.addAttribute("sc", detailCars);
		return "cart";
		}
	}
}
