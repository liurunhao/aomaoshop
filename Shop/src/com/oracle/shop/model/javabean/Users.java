package com.oracle.shop.model.javabean;

import java.io.Serializable;

/**
 * 用户表 儌僨儖僋儔僗.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Users implements Serializable {

	@Override
	public String toString() {
		return "Users [users_id=" + users_id + ", username=" + username
				+ ", password=" + password + ", secondname=" + secondname + "]";
	}

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 用户编号. */
	private Integer users_id;

	/** 用户名. */
	private String username;

	/** 密码. */
	private String password;

	/** 昵称. */
	private String secondname;
	
	/** 用户头像. */
	private String image;

	/** 用户性别. */
	private String sex;

	/** 用户年龄. */
	private Integer age;

	/**
	 * 僐儞僗僩儔僋僞.
	 */
	public Users() {
	}

	/**
	 * 用户编号 傪愝掕偟傑偡.
	 * 
	 * @param userid
	 *            用户编号
	 */
	public void setUserid(Integer userid) {
		this.users_id = userid;
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
	 * 用户名 傪愝掕偟傑偡.
	 * 
	 * @param username
	 *            用户名
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * 用户名 傪庢摼偟傑偡.
	 * 
	 * @return 用户名
	 */
	public String getUsername() {
		return this.username;
	}

	/**
	 * 密码 傪愝掕偟傑偡.
	 * 
	 * @param password
	 *            密码
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * 密码 傪庢摼偟傑偡.
	 * 
	 * @return 密码
	 */
	public String getPassword() {
		return this.password;
	}

	/**
	 * 昵称 傪愝掕偟傑偡.
	 * 
	 * @param second
	 *            昵称
	 */
	public void setSecondname(String secondname) {
		this.secondname = secondname;
	}

	/**
	 * 昵称 傪庢摼偟傑偡.
	 * 
	 * @return 昵称
	 */
	public String getSecondname() {
		return this.secondname;
	}
	/**
	 * 用户头像 傪愝掕偟傑偡.
	 * 
	 * @param image
	 *            用户头像
	 */
	public void setImage(String image) {
		this.image = image;
	}

	/**
	 * 用户头像 傪庢摼偟傑偡.
	 * 
	 * @return 用户头像
	 */
	public String getImage() {
		return this.image;
	}

	/**
	 * 用户性别 傪愝掕偟傑偡.
	 * 
	 * @param sex
	 *            用户性别
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/**
	 * 用户性别 傪庢摼偟傑偡.
	 * 
	 * @return 用户性别
	 */
	public String getSex() {
		return this.sex;
	}

	/**
	 * 用户年龄 傪愝掕偟傑偡.
	 * 
	 * @param age
	 *            用户年龄
	 */
	public void setAge(Integer age) {
		this.age = age;
	}

	/**
	 * 用户年龄 傪庢摼偟傑偡.
	 * 
	 * @return 用户年龄
	 */
	public Integer getAge() {
		return this.age;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((users_id == null) ? 0 : users_id.hashCode());

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
		Users other = (Users) obj;
		if (users_id == null) {
			if (other.users_id != null) {
				return false;
			}
		} else if (!users_id.equals(other.users_id)) {
			return false;
		}

		return true;
	}

	

}
