package com.oracle.shop.model.dao;
import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.Orders;
import com.oracle.shop.model.javabean.Items;


@Mapper
public interface OrderDAO {

	@Insert("insert into orders(ordertime,status,adresses,mark,users_id,shouhuoname) values(#{ordertime},#{status},#{adresses},#{mark},#{users_id},#{shouhuoname})")
	public int addOrder(@Param("users_id") int users_id,
			@Param("shouhuoname") String shouhuoname, @Param("adresses") String adresses,
			@Param("mark") String remark, @Param("status") String status,
			@Param("ordertime") String times);
	@Select("select * from  orders where users_id=#{0}")
	public List<Orders> listOrders(int userid);
	
	@Select("select *  from orderdetail where orders_id=#{0}")
	public List<Items>  listItemsByOrderId(String orderid);
	
	@Select("select * from goods where goodsid=#{0}")
	public Goods getGoodsByGoodsid(int goodsid);
}
