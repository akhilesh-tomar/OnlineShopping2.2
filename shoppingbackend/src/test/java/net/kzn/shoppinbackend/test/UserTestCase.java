package net.kzn.shoppinbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.kzn.shoppingbackend.dao.UserDAO;
import net.kzn.shoppingbackend.dto.Address;
import net.kzn.shoppingbackend.dto.Cart;
import net.kzn.shoppingbackend.dto.User;

public class UserTestCase {

	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user = null;
	private Cart cart = null;
	private Address address = null;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.kzn.shoppingbackend");
		context.refresh();

		userDAO = (UserDAO) context.getBean("userDAO");
	}
/*
@Test
public void testAddUser() {

user = new User() ;
user.setFirstName("Hrithik");
user.setLastName("Roshan");
user.setEmail("hr@gmail.com");
user.setContactNumber("1234512345");
user.setRole("USER");
user.setPassword("12345");

// add the user
assertEquals("Failed to add the user!", true, userDAO.add(user)); 

address = new Address();
address.setAddressLineOne("101/B Jadoo Society, Krissh Nagar");
address.setAddressLineTwo("Near Kaabil Store");
address.setCity("Mumbai");
address.setState("Maharashtra");
address.setCountry("India");
address.setPostalCode("400001");
address.setBilling(true);

//link the user with the with the address using user id 
address.setUserId(user.getId());

//// add the address
assertEquals("Failed to add the billing address!", true, userDAO.addAddress(address)); 


if(user.getRole().equals("USER"))
{
//Create a cart for this user 
cart = new Cart();
//cart.setUserId(user.getId());
cart.setUser(user);
// add the cart
assertEquals("Failed to add the cart",true, userDAO.addCart(cart)); 





//add a shipping address for this user
// add the shipping address
address = new Address();
address.setAddressLineOne("201/B Jadoo Society, Kishan Kanhaiya Nagar");
address.setAddressLineTwo("Near Kudrat Store");
address.setCity("Mumbai");
address.setState("Maharashtra");
address.setCountry("India");
address.setPostalCode("400001");
//set shipping to true 
address.setShipping(true);
//link it with the user 
address.setUserId(user.getId());
assertEquals("Failed to add the shipping address!", true, userDAO.addAddress(address));


}

*/

	
	

	/*

//below teat case is the teat case  to test that we eliminate explicit calling of addcart(cart) method to add the cart for the user. 
	//just by adding user cart will also be added as we attach cart to the user
	@Test
	public void testAddUser() {

	user = new User() ;
	user.setFirstName("Hrithik");
	user.setLastName("Roshan");
	user.setEmail("hr@gmail.com");
	user.setContactNumber("1234512345");
	user.setRole("USER");
	user.setPassword("12345");

	

	
	
	if(user.getRole().equals("USER"))
	{
	//Create a cart for this user 
	cart = new Cart();
	
	cart.setUser(user);
	
	// attach this cart with user
	
	user.setCart(cart);
	
	//In this way we can eliminate explicit calling of addcart(cart) method to add the cart for the user. 
	//just by adding user cart will also be added as we attach cart to the user
	assertEquals("Failed to add the user",true, userDAO.add(user)); 





	
	}


*/
	@Test
	public void testAddUser() {

	user = new User() ;
	user.setFirstName("Hrithik");
	user.setLastName("Roshan");
	user.setEmail("hr@gmail.com");
	user.setContactNumber("1234512345");
	user.setRole("USER");
	user.setPassword("12345");
	
	

	

	
	
	if(user.getRole().equals("USER"))
	{
	//Create a cart for this user 
	cart = new Cart();
	
	cart.setUser(user);
	
	// attach this cart with user
	
	user.setCart(cart);
	
	userDAO.add(user);//adding the user first of all in the database and its corresponding matching
	
	Cart cart1=new Cart();
	User user1=new User();
	
	user1=userDAO.getByEmail(user.getEmail());
	cart1=user1.getCart();  // we are fetching cart corresponding to the specific email..as right now in this case hr@gmail.com is there as we set in this method
	
	cart1.setCartLines(2);
	cart1.setGrandTotal(5555);
	
	
	assertEquals("Failed to add the user",true, userDAO.updateCart(cart1)); 





	
	}


}
}