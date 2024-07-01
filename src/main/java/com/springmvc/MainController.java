package com.springmvc;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {
	@Autowired
	MainDao dao;
@RequestMapping("/test")
public String testme() {
	return "test";
	
}
@RequestMapping("/register")
public String register() {
	return "registration";
	
}
@RequestMapping("/login")
public String login() {
	return "login";
}
@PostMapping("/save-data")
public String savdata(@ModelAttribute("rm")RegModel rm,HttpSession session) {
	dao.save(rm);
	return "login";
	
}
@PostMapping("/dologin")
public String dologin(@ModelAttribute("lm") LoginModel lm, HttpSession session) {
	List<RegModel> list=dao.login(lm);
	if(!list.isEmpty()) {
		session.setAttribute("email", lm.getEmail());
		return "redirect:/dashboard";
	}
	else {
		System.out.println("wrong password");
		return "login";
	}
	
}
@RequestMapping("/dashboard")
public String dashboard(HttpSession session,Model model) {
	String email=(String)session.getAttribute("email");
	session.setAttribute("email", email);
	List<ProductModel> list=dao.getProduct();
	session.setAttribute("product", list);
	return "dashboard";
}

@PostMapping("/saveProduct")
@ResponseBody
public String saveData(@RequestBody ProductModel product) {
    // Your controller logic here

	product.getName();
	dao.saveProduct(product);
	System.out.println("reached");
	return "submited succesfully";
	
}
@PostMapping("/savetest")
public String savetet(@ModelAttribute("tm") TestModel tm){
	dao.savetest(tm);
	
	return "";
	
}
@GetMapping("/addProduct/{pid}")
@ResponseBody
public ProductModel saveData2(@PathVariable("pid") int id) {
    // Your controller logic here
//	int pid=id;
ProductModel pm=dao.getProduct(id);
	/*for (ProductModel pm : pr) {*/
//   ProductModel pm = p.get(0);
		System.out.println(pm.getName());
		System.out.println(pm.getPid());
	
	
	System.out.println("reached"+id);
	return pm;
	
}
}








