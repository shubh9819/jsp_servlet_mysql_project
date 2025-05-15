package com.food.pojo;

public class Cart {
   private Integer cartId;
   private Integer food_id;
   private Food f;
   private Integer quantity;
   private Double subtotal;
   private String email;
   private Double price;
public Cart() {
	super();
	// TODO Auto-generated constructor stub
}
public Cart(Integer cartId, Integer food_id, Food f, Integer quantity, Double subtotal, String email, Double price) {
	super();
	this.cartId = cartId;
	this.food_id = food_id;
	this.f = f;
	this.quantity = quantity;
	this.subtotal = subtotal;
	this.email = email;
	this.price = price;
}
public Integer getCartId() {
	return cartId;
}
public void setCartId(Integer cartId) {
	this.cartId = cartId;
}
public Integer getFood_id() {
	return food_id;
}
public void setFood_id(Integer food_id) {
	this.food_id = food_id;
}
public Food getF() {
	return f;
}
public void setF(Food f) {
	this.f = f;
}
public Integer getQuantity() {
	return quantity;
}
public void setQuantity(Integer quantity) {
	this.quantity = quantity;
}
public Double getSubtotal() {
	return subtotal;
}
public void setSubtotal(Double subtotal) {
	this.subtotal = subtotal;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Double getPrice() {
	return price;
}
public void setPrice(Double price) {
	this.price = price;
}
@Override
public String toString() {
	return "Cart [cartId=" + cartId + ", food_id=" + food_id + ", f=" + f + ", quantity=" + quantity + ", subtotal="
			+ subtotal + ", email=" + email + ", price=" + price + "]";
}
   
}

   
//public Double getPrice() {
//	return price;
//}
//public void setPrice(Double price) {
//	this.price = price;
//}
//public Cart() {
//	super();
//	// TODO Auto-generated constructor stub
//}
//@Override
//public String toString() {
//	return "Cart [cartId=" + cartId + ", foodId=" + foodId + ", f=" + f + ", quantity=" + quantity + ", subtotal="
//			+ subtotal + ", email=" + email + "]";
//}
//public Cart(Integer cartId, Integer foodId, Food f, Integer quantity, Double subtotal, String email) {
//	super();
//	this.cartId = cartId;
//	this.foodId = foodId;
//	this.f = f;
//	this.quantity = quantity;
//	this.subtotal = subtotal;
//	this.email = email;
//}
//public Integer getCartId() {
//	return cartId;
//}
//public void setCartId(Integer cartId) {
//	this.cartId = cartId;
//}
//public Integer getFoodId() {
//	return foodId;
//}
//public void setFoodId(Integer foodId) {
//	this.foodId = foodId;
//}
//public Food getF() {
//	return f;
//}
//public void setF(Food f) {
//	this.f = f;
//}
//public Integer getQuantity() {
//	return quantity;
//}
//public void setQuantity(Integer quantity) {
//	this.quantity = quantity;
//}
//public Double getSubtotal() {
//	return subtotal;
//}
//public void setSubtotal(Double subtotal) {
//	this.subtotal = subtotal;
//}
//public String getEmail() {
//	return email;
//}
//public void setEmail(String email) {
//	this.email = email;
//}
//
//   
//
//}
