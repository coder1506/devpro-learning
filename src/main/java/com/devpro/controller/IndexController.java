package com.devpro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.Constants;
import com.devpro.model.ProductSearch;
import com.devpro.services.ProductService;

@Controller // -> tạo ra 1 bean tên webConf và được spring-container quản lí.
			// -> báo module web mapping request cho controller này.
public class IndexController extends BaseController implements Constants {
	
	@Autowired
	private ProductService productService;
	
	/**
	 * @param model: trung gian trao đổi thông tin giữa Controller và View(Jsp)
	 * @param request: Chứa các thông tin Trình Duyệt truy vấn thông qua mẫu: ?abc=xyz
	 * @param response: Dữ liệu trả về Trình Duyệt.
	 */
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		// lấy đối tượng SESSION trong memory dựa vào SESSION_ID có trong request.
		HttpSession httpSession = request.getSession();
		httpSession.removeAttribute(CURRENTCATEGORYSEO);
		
		ProductSearch productSearch =  new ProductSearch();
		
		Integer currentPage = 0;
		
		String strCurrentPage = request.getParameter("page");
		if(strCurrentPage != null) currentPage = Integer.parseInt(strCurrentPage);
		
		productSearch.setCurrentPage(currentPage);
		
		model.addAttribute("products", productService.search(productSearch));
		return "front-end/index";
	}
	
}
