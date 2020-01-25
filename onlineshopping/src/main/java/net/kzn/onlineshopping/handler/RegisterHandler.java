package net.kzn.onlineshopping.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import net.kzn.onlineshopping.model.RegisterModel;
import net.kzn.shoppingbackend.dao.UserDAO;
import net.kzn.shoppingbackend.dto.Address;
import net.kzn.shoppingbackend.dto.Cart;
import net.kzn.shoppingbackend.dto.User;

@Component
public class RegisterHandler {
	
	@Autowired
	private UserDAO userDAO;
	
	public RegisterModel init()
	{
		return new RegisterModel();
		
	}
	
	public void addUser(RegisterModel registerModel,User user)
	{
		registerModel.setUser(user);
	}
	
	public void addBilling(RegisterModel registerModel,Address billing)
	{
		registerModel.setBilling(billing);
	}
	
	public String saveAll(RegisterModel registerModel)
	{
		String transitionValue;
		
		
		//fetch the user
		User user=registerModel.getUser();
		
		//Add the cart automatically if user type is user 
		if(user.getRole().equalsIgnoreCase("USER"))
		{
			Cart cart=new Cart();
			cart.setUser(user);
			user.setCart(cart);
			
			
		}
		//persisting user details filled in personal form in database
		userDAO.add(user);
		
		Address billing=registerModel.getBilling();
		billing.setUserId(registerModel.getUser().getId());
		billing.setBilling(true);
		
		//save the address
		userDAO.addAddress(billing);
		
		
		
		return transitionValue="success";
		
	}

}
