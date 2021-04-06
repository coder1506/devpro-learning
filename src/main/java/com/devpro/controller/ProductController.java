package com.devpro.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.Constants;
import com.devpro.entities.Product;
import com.devpro.model.ProductSearch;
import com.devpro.repositories.ProductRepo;
import com.devpro.services.ProductService;

@Controller
public class ProductController extends BaseController implements Constants {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = { "/product/details/{productSeo}" }, method = RequestMethod.GET)
	public String index(@PathVariable("productSeo") String productSeo,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		ProductSearch productSearch = new ProductSearch();
		productSearch.setSeoProduct(productSeo);
		
		model.addAttribute("product", productService.search(productSearch).get(0));
		return "front-end/details";
	}
	
	@RequestMapping(value = { "/category/{seo}" }, method = RequestMethod.GET)
	public String getFromCategoryId(@PathVariable("seo") String seo,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		ProductSearch productSearch = new ProductSearch();
		productSearch.setSeoCategoty(seo);
		List<Product> products = productService.search(productSearch);
		model.addAttribute("products", products);
		
		// lấy đối tượng SESSION trong memory dựa vào SESSION_ID có trong request.
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute(CURRENTCATEGORYSEO, seo);
		
		return "front-end/index";
	}
	
}
