package com.vyntra.vyntrau.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.sun.istack.NotNull;

@Entity
public class Products {
	
	@Id
	@GeneratedValue
	@NotNull
	private int pid;
	@NotNull
	@NotEmpty
	//@Size(min=2,max=15)
	private String pname;
	@NotNull
	@NotEmpty
	//@Size(min=2,max=15)
	private String pdesc;
	@NotNull
	@DecimalMin(value = "0.0")
	@Digits(integer = 7,fraction = 2)
	private float price;
	@NotNull
	@NotEmpty
	private String pdate;
	@NotNull
	@NotEmpty
	//@Size(min=2,max=15)
	private String manfid;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public String getManfid() {
		return manfid;
	}
	public void setManfid(String manfid) {
		this.manfid = manfid;
	}
	
	
	

}
