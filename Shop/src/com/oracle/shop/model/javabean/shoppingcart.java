package com.oracle.shop.model.javabean;

import java.io.Serializable;

/**
 * 购物车 儌僨儖僋儔僗.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class shoppingcart implements Serializable {

	@Override
	public String toString() {
		return "shoppingcart [carid=" + carid + ", sum=" + sum
				+ ", users_id=" + users_id + ", goods_id=" + goods_id + "]";
	}

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 购物车编号. */
	private Integer carid;

	/** 购物车数量. */
	private Integer sum;

	/** 用户编号. */
	private Integer users_id;

	/** 商品编号. */
	private Integer goods_id;

	/**
	 * 僐儞僗僩儔僋僞.
	 */
	public shoppingcart() {
	}

	/**
	 * 购物车编号 傪愝掕偟傑偡.
	 * 
	 * @param carid
	 *            购物车编号
	 */
	public void setCarid(Integer carid) {
		this.carid = carid;
	}

	/**
	 * 购物车编号 傪庢摼偟傑偡.
	 * 
	 * @return 购物车编号
	 */
	public Integer getCarid() {
		return this.carid;
	}

	/**
	 * 购物车数量 傪愝掕偟傑偡.
	 * 
	 * @param sum
	 *            购物车数量
	 */
	public void setsum(Integer sum) {
		this.sum = sum;
	}

	/**
	 * 购物车数量 傪庢摼偟傑偡.
	 * 
	 * @return 购物车数量
	 */
	public Integer getsum() {
		return this.sum;
	}

	/**
	 * 用户编号 傪愝掕偟傑偡.
	 * 
	 * @param users_id
	 *            用户编号
	 */
	public void setusers_id(Integer users_id) {
		this.users_id = users_id;
	}

	/**
	 * 用户编号 傪庢摼偟傑偡.
	 * 
	 * @return 用户编号
	 */
	public Integer getusers_id() {
		return this.users_id;
	}

	/**
	 * 商品编号 傪愝掕偟傑偡.
	 * 
	 * @param goods_id
	 *            商品编号
	 */
	public void setgoods_id(Integer goods_id) {
		this.goods_id = goods_id;
	}

	/**
	 * 商品编号 傪庢摼偟傑偡.
	 * 
	 * @return 商品编号
	 */
	public Integer getgoods_id() {
		return this.goods_id;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((carid == null) ? 0 : carid.hashCode());

		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		shoppingcart other = (shoppingcart) obj;
		if (carid == null) {
			if (other.carid != null) {
				return false;
			}
		} else if (!carid.equals(other.carid)) {
			return false;
		}

		return true;
	}

}
