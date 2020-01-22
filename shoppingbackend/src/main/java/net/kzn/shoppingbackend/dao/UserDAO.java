package net.kzn.shoppingbackend.dao;

import java.util.List;

import net.kzn.shoppingbackend.dto.Address;
import net.kzn.shoppingbackend.dto.Cart;
import net.kzn.shoppingbackend.dto.User;

public interface UserDAO {

	//add an user
	boolean add(User user);


	User getByEmail(String email);


	// Adding the cart
//	boolean addCart(Cart cart);
	
	// Updating the cart
		boolean updateCart(Cart cart);
		
		// adding and updating a new address
		boolean addAddress(Address address);
		Address getBillingAddress(User user);
		List<Address> listShippingAddresses(User user);


	}
