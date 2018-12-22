package com.codingdojo.productcategory.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.codingdojo.productcategory.models.Product;
import com.codingdojo.productcategory.services.CategoryService;
import com.codingdojo.productcategory.services.ProductService;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Charge;

@Controller

public class ProductController {

	private final ProductService ps;
	private final CategoryService cs;

	public ProductController(ProductService ps, CategoryService cs) {

		this.ps = ps;
		this.cs = cs;
	}

	@GetMapping("")
	public String index(@Valid @ModelAttribute("product") Product product, Model model, HttpSession session) {
		if (session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}
		System.out.println("Product Controller newproduct()");
		List<Product> products = ps.allProduct();
		System.out.println(products);
		model.addAttribute("products", products);
		return "index.jsp";
	}

	@GetMapping("/products/new")
	public String newProduct(@ModelAttribute("product") Product product) {
		System.out.println("Product Controller newproduct()");
		System.out.println("ProductsController > newProduct()");
		return "products/new.jsp";
	}

	@PostMapping("/createnew/product")
	public String createCategory(@Valid @ModelAttribute("product") Product product, BindingResult result) {
		System.out.println("Category Controller > POST createProduct() ");
		if (result.hasErrors()) {
			return "/products/new.jsp";
		} else {
			this.ps.createProduct(product);
			return "redirect:/products/new";
		}
	}

	@GetMapping("/product/show/{id}")
	public String info(@PathVariable("id") Long id, Model model) {
		Product product = ps.findProductById(id);
		model.addAttribute("product", product);
		return "products/details.jsp";
	}

	// Add to the cart
	@GetMapping("/addtocart/{id}")
	public String addToCart(@PathVariable("id") Long id, Model model, HttpSession session) {

		System.out.println("START OF CART LOGIC");

		if (session.getAttribute("cart") != null) {
			System.out.println("- IF CART EXISTS...");
			@SuppressWarnings("unchecked")
			HashMap<Long, Integer> cart = (HashMap<Long, Integer>) session.getAttribute("cart");
			if (cart.get(id) != null) {
				System.out.println("--- IF CART KEY EXISTS...");
				cart.put(id, cart.get(id) + 1);
				session.setAttribute("cart", cart);

			} else {

				System.out.println(" --- IF CART KEY DOES NOT EXIST...");
				cart.put(id, 1);
			}
			int count = 0;
			for (Integer i : cart.values()) {
				count = count + i;
			}
			session.setAttribute("count", count);
//			return "redirect:/";
		} else {
			System.out.println("- IF CART DOES NOT EXISTS...");
			HashMap<Long, Integer> cart = new HashMap<Long, Integer>();
			cart.put(id, 1);

			session.setAttribute("cart", cart);
			session.setAttribute("count", 1);
			
		}

		System.out.println("END OF CART LOGIC");
		System.out.println(" -- -- -- Cart Status: -- -- -- ");
		HashMap<Long, Integer> cart = (HashMap<Long, Integer>) session.getAttribute("cart");
		System.out.println(cart);
		System.out.println(" -- -- -- -- -- -- --  -- -- -- ");
		model.addAttribute("cart", cart);
		return "redirect:/";
	}
	// Taking to the check out page

	
	@GetMapping("/cart/products")
	public String cart(Model model) {
		HashMap<Long, Product> allitems = new HashMap<>();
		for (Product product : ps.allProduct()) {
			allitems.put(product.getId(), product);
		}
		model.addAttribute("allitems", allitems);
		return "cart/chekout.jsp";
	}
	@GetMapping("/payment")
	public String payment(Model model) {
		return "cart/payment.jsp";
	}
	@PostMapping("/charge")
	public String charge(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpSession session,
			@RequestParam("stripeToken") String token
//			@RequestParam("amount") Double amount,
//			@RequestParam("currency") String currency,
//			@RequestParam("description") String description
	) {
		System.out.println("stripeToken" + token);
//		System.out.println("amount" + amount);
//		System.out.println("currency" + currency);
//		System.out.println("description" + description);
		// Set your secret key: remember to change this to your live secret key in
		// production
		// See your keys here: https://dashboard.stripe.com/account/apikeys
		Stripe.apiKey = "sk_test_r7ZTNcozjLnXl0bPDFQfIaTi";
		// Token is created using Checkout or Elements!
		// Get the payment token ID submitted by the form:
		// String token = request.getParameter("stripeToken");
		//HashMap<Long, Integer> cart = new HashMap<Long, Integer>();
	
		

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("amount", 599);
		params.put("currency", "usd");
		params.put("description", "Example charge");
		params.put("source", token);
		

		try {
			System.out.println("About to charge...");
			Charge charge = Charge.create(params);

			System.out.println(" - Done charging...");
			session.removeAttribute("cart");
			
			session.removeAttribute("count");
//			if (session.getAttribute("cart") != null) {
//		
//				HashMap<Long, Integer> cart = (HashMap<Long, Integer>) session.getAttribute("cart");
//				cart.put(null, 0);
//				session.setAttribute("cart", cart);
//			}
		} catch (StripeException e) {

			System.out.println(" - Failed to charge...");
			e.printStackTrace();
		}
		return "redirect:/";
	}

}
