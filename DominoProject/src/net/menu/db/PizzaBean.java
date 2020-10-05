package net.menu.db;

public class PizzaBean {
	
	private int pizza_code;
	private String pizza_name;
	private int pizza_price;
	private byte[] pizza_image;
	
	
	public int getPizza_code() {
		return pizza_code;
	}
	public void setPizza_code(int pizza_code) {
		this.pizza_code = pizza_code;
	}
	public String getPizza_name() {
		return pizza_name;
	}
	public void setPizza_name(String pizza_name) {
		this.pizza_name = pizza_name;
	}
	public int getPizza_price() {
		return pizza_price;
	}
	public void setPizza_price(int pizza_price) {
		this.pizza_price = pizza_price;
	}
	public byte[] getPizza_image() {
		return pizza_image;
	}
	public void setPizza_image(byte[] pizza_image) {
		this.pizza_image = pizza_image;
	}
}
