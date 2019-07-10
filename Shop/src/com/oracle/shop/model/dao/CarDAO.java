package com.oracle.shop.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.shoppingcart;

/**
 * 购物车的dao类
 * @author Administrator
 *
 */
@Mapper
public interface CarDAO {

	@Insert("insert into shoppingcart(sum,users_id,goods_id) values(1,#{users_id},#{pid})")
	public int addProduct(@Param("users_id")int userid,@Param("pid")int pid);
	
	@Select("select *  from shoppingcart where users_id=#{0}")
	public List<shoppingcart> listCartsByusers_id(int users_id);
	
	
	@Select("select * from goods where goods_id=#{0}")
	public  Goods  getGoodsBygoods_id(int goods_id);
	
	@Delete("delete from shoppingcart where goods_id=#{productid} and users_id=#{users_id}")
	public int deleteGoodsFromShopcar(@Param("users_id")int users_id,@Param("productid")int productid);
	
//	@Select("select count(*) from shoppingcart where users_id=#{users_id}")
//	public int getAllCountOfShopcart(@Param("users_id")int users_id);
	
	@Update("update shoppingcart set sum=sum+1 where goods_id=#{pid} and users_id=#{users_id}")
	public int addProductNumber(@Param("pid")int pid,@Param("users_id")int users_id);
	
}
