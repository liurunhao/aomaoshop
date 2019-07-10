package com.oracle.shop.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.Goods;

@Mapper
public interface FavDAO {

	@Insert("insert into collect(TIME,GOODS_ID,USERS_ID) values(#{TIME},#{GOODS_ID},#{USER_ID})")
	public int addProductToFav(@Param("GOODS_ID")int GOODS_ID,@Param("USER_ID")int userid,@Param("TIME")String TIME);
	
	@Select("select *  from goods where GOODS_ID in (select GOODS_ID from collect where USERS_ID=#{0})")
	public List<Goods> listAllProductsOfFav(int USER_ID);
	
	@Delete("delete from collect where goods_id=#{productid} and users_id=#{users_id}")
	public int deleteGoodsFromfav(@Param("users_id")int users_id,@Param("productid")int productid);
}
