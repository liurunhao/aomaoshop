package com.oracle.shop.model.javabean;

import java.io.Serializable;

/**
 * 订单详情表 儌僨儖僋儔僗.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Items implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 订单详情编号. */
	private Integer itemid;

	/** 商品数量. */
	private Integer itemnumber;

	/** 商品编号. */
	private Integer goods_id;

	/** 订单编号. */
	private String orderid;

	/**
	 * 僐儞僗僩儔僋僞.
	 */
	public Items() {
	}

	/**
	 * 订单详情编号 傪愝掕偟傑偡.
	 * 
	 * @param itemid
	 *            订单详情编号
	 */
	public void setItemid(Integer itemid) {
		this.itemid = itemid;
	}

	/**
	 * 订单详情编号 傪庢摼偟傑偡.
	 * 
	 * @return 订单详情编号
	 */
	public Integer getItemid() {
		return this.itemid;
	}

	/**
	 * 商品数量 傪愝掕偟傑偡.
	 * 
	 * @param itemnumber
	 *            商品数量
	 */
	public void setItemnumber(Integer itemnumber) {
		this.itemnumber = itemnumber;
	}

	/**
	 * 商品数量 傪庢摼偟傑偡.
	 * 
	 * @return 商品数量
	 */
	public Integer getItemnumber() {
		return this.itemnumber;
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
	 * 订单编号 傪愝掕偟傑偡.
	 * 
	 * @param orderid
	 *            订单编号
	 */
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	/**
	 * 订单编号 傪庢摼偟傑偡.
	 * 
	 * @return 订单编号
	 */
	public String getOrderid() {
		return this.orderid;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((itemid == null) ? 0 : itemid.hashCode());

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
		Items other = (Items) obj;
		if (itemid == null) {
			if (other.itemid != null) {
				return false;
			}
		} else if (!itemid.equals(other.itemid)) {
			return false;
		}

		return true;
	}

}