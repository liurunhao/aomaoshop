package com.oracle.shop.control;

import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.OrderDAO;
import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.Items;
import com.oracle.shop.model.javabean.Orders;
import com.oracle.shop.model.javabean.Users;


@Controller
@RequestMapping("/order")
public class OrderControl {
	@Autowired
	private OrderDAO dao;

	@RequestMapping("/add")
	public  String addOrder(int[] pid,int[] count,String shouhuoname,String adresses,String remark,HttpSession session){
		//1.获取提交订单页面上的各种参数（购买的商品编号和对应的数量，收货人的信息和备注）
		System.out.println(Arrays.toString(pid));
		System.out.println(Arrays.toString(count));
		System.out.println(shouhuoname);
		System.out.println(adresses);
		System.out.println(remark);
		int result=dao.addOrder(((Users)session.getAttribute("logineduser")).getusers_id(), shouhuoname, adresses, remark, "已付款", new Date().toLocaleString());
		System.out.println(result>0?"订单提成功":"提交失败");
		return "redirect:list";
	}
	@RequestMapping("/list")
	public String list(HttpSession session,Model m){
		if(session.getAttribute("logineduser")==null){
			//如果未登陆，跳转到登录页面
			return "login";
		}else{
			//如果登陆了，则查询数据库将订单详情查询好封装到一个map集合中
			Map<Orders, Map<Goods, Integer>> orderDtails= new HashMap();
			
			 List<Orders>  orders=dao.listOrders(((Users)session.getAttribute("logineduser")).getusers_id());
			 
			for(Orders  o:orders){
				List<Items> items=dao.listItemsByOrderId(o.getOrderid());
				Map<Goods, Integer> itemDetails=new HashMap();
				for(Items  i:items){
					Goods g=dao.getGoodsByGoodsid(i.getgoods_id());
					itemDetails.put(g, i.getItemnumber());
				}
				orderDtails.put(o, itemDetails);
			}
			m.addAttribute("orderDetail", orderDtails);
			return "orders";
		}
	}
}
