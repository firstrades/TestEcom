package ecom.model;

import java.io.Serializable;

public class Size implements Serializable {
	private static final long serialVersionUID = 1L;

	private String size;
	private int    count;
	
	
	public String getSize() {
		return size;
	}
	public int getCount() {
		return count;
	}
	public void setSize(String size) {
		this.size = size.trim().toUpperCase();
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	
}
