package com.agro.main.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.agro.main.model.Admin;
import com.agro.main.model.Feedback;
import com.agro.main.model.Order;
import com.agro.main.model.Pesticide;
import com.agro.main.model.Query;
import com.agro.main.repository.AdminRepo;
import com.agro.main.repository.FeedbackRepo;
import com.agro.main.repository.OrderRepo;
import com.agro.main.repository.PesticideRepo;
import com.agro.main.repository.QueryRepo;
import com.agro.main.service.AdminService;
import com.agro.main.vo.AdminVo;

@Controller
public class HomeController {

	@Autowired
	AdminRepo adminRepo;

	@Autowired
	FeedbackRepo feedbackRepo;

	@Autowired
	AdminService adminService;

	@Autowired
	PesticideRepo pesticideRepo;

	@Autowired
	OrderRepo orderRepo;

	@Autowired
	QueryRepo queryRepo;

	int adminid;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String submit(@Valid @ModelAttribute("admin") AdminVo adminVo, BindingResult result, ModelMap modell,
			Model model, HttpSession session) {
		model.addAttribute("string", model);
		session.setAttribute("login", 1);
		if (result.hasErrors()) {
			System.out.println("binding error===>" + result);
			return "error";
		}
		String check;
		System.out.println("adminvo==	==>" + adminVo.toString());
		model.addAttribute("admin", new AdminVo());

		if (("wholesellerbuyer").equalsIgnoreCase(adminVo.getType()) || ("farmer").equalsIgnoreCase(adminVo.getType())
				|| ("expert").equalsIgnoreCase(adminVo.getType()) || ("admin").equalsIgnoreCase(adminVo.getType())) {

			check = adminService.checkCredentials(adminVo);

			System.out.println("page name type====>" + check);
			System.out.println("adminvo id" + adminVo.getId());

			adminid = adminVo.getId();
			System.out.println(adminVo.toString());
			model.addAttribute("adminname", adminVo.getUsername().toUpperCase());
			model.addAttribute("type", adminVo.getType().toUpperCase());

			System.out.println(adminVo.getUsername());
			System.out.println("admindvvk" + adminid);

			if ("expert".equalsIgnoreCase(adminVo.getType())) {
				if ("1".equalsIgnoreCase(adminVo.getApproved())) {
					model.addAttribute("approvedstatus", "you are approved by admin");

				} else {
					model.addAttribute("approvedstatus", "you are not approved by admin");
				}

			}
		} else {
			return "error.jsp";
		}
		return check + ".jsp";
	}

	@RequestMapping("/logintype")
	public String type(Model model) {
		model.addAttribute("admin", new AdminVo());
		return "loginForm.jsp";
	}

	@GetMapping("/logout")
	public String logout(Model model) {
		model.addAttribute("admin", new AdminVo());
		Optional<Admin> admind = adminRepo.findById(adminid);
		admind.get().setLoginvalue("0");
		adminRepo.save(admind.get());

		return "loginForm.jsp";
	}

	@RequestMapping("/signup")
	public String signup(Model model) {
		// session.setAttribute("ses",1);
		System.out.println("signup");
		System.out.println("sigunpstart");
		model.addAttribute("userVo", new AdminVo());
		return "signup.jsp";
	}

	@RequestMapping("/paymentprocess")
	public String paymentprocess(Model model) {

		model.addAttribute("userVo", new AdminVo());
		return "paymentprocess.jsp";
	}

	@GetMapping("/payment")
	public String payment(Model model, @RequestParam("productid") int id, @RequestParam("quantity") int quantity) {

		System.out.println("payment" + id + "quantity" + quantity);

		Optional<Pesticide> pesti = pesticideRepo.findById(id);

		model.addAttribute("productname", pesti.get().getName());

		int price=Integer.parseInt(pesti.get().getPrice());
		int amm = quantity * price;

		model.addAttribute("amount", Integer.toString(amm));

		return "payment.jsp";
	}

	@PostMapping("/getdata")
	public String Getdata(@Valid @ModelAttribute("admin") AdminVo adminVo, BindingResult result, ModelMap modell,
			Model model) {

		if (result.hasErrors()) {
			System.out.println("data isi not binding");

			return "error.jsp";
		}
		try {
			Admin admin = new Admin();
			BeanUtils.copyProperties(adminVo, admin);
			System.out.println("admin  values" + admin.toString());
			admin = adminRepo.save(admin);
			System.out.println("after save");
			model.addAttribute("admin", new AdminVo());
			System.out.println("data save success");
			return "show.jsp";
		} catch (Exception ex) {
			ex.getMessage();
			ex.printStackTrace();

		}

		return "error.jsp";

	}

	@PostMapping("/signupdata")
	public String saveuer(@Valid @ModelAttribute("userVo") AdminVo userVo, BindingResult result, ModelMap modell,
			Model model, HttpSession Session) throws ParseException {

		System.out.println(Session.getAttribute("ses"));
		;

		if (result.hasErrors()) {
			System.out.println("data isi not binding");
			System.out.println(result);
			return "error.jsp";
		}
		System.out.println(userVo.getDateofbirth());

		try {
			Admin admin = new Admin();

			System.out.println("admin  values");

			Admin data = adminRepo.findByEmail(userVo.getEmail());

			if (Objects.isNull(data)) {
				System.out.println("trying to save data");
				if (userVo.getType().equalsIgnoreCase("expert")) {

					userVo.setApproved("0");

				} else {

					userVo.setApproved("1");

				}
				userVo.setIsActive("1");
				BeanUtils.copyProperties(userVo, admin);

			} else {

				System.out.println("data updated");

				BeanUtils.copyProperties(userVo, admin);

			}

			adminRepo.save(admin);

			System.out.println("data save success");
			model.addAttribute("admin", new AdminVo());
			return "loginForm.jsp";
		} catch (Exception ex) {
			ex.getMessage();
			ex.printStackTrace();

		}

		return "error.jsp";

	}

	@ResponseBody
	@PostMapping(value = "saveuserdata")
	public String getSearchResultViaAjax(@RequestBody @RequestParam("name") String username,
			@RequestParam("password") String password, @RequestParam("type") String type,
			@RequestParam("address") String address, @RequestParam("dob") String dob,
			@RequestParam("contactno") String contactno, @RequestParam("email") String email) {

		System.out.println("in ajax signup admin");
		// logic

		try {
			System.out.println(type);

			Admin admin = new Admin();

			admin.setUsername(username);
			admin.setPassword(password);
			admin.setType(type);
			admin.setAddress(address);
			admin.setDateofbirth(dob);
			admin.setEmail(email);
			admin.setContactno(contactno);

			admin = adminRepo.save(admin);
			System.out.println("after save");
			String result = "data save succefully of type  " + " " + type + " and username and pass word is" + "   "
					+ username + " " + password;

			// model.addAttribute("admin", new AdminVo());
			System.out.println("data save success");
			return result;
		} catch (Exception ex) {
			ex.getMessage();
			ex.printStackTrace();

		}
		return "error while save data";
	}

	@ResponseBody
	@GetMapping(value = "alluser")
	public List<Admin> Alldatafind(Model model) {

		System.out.println("in ajax");

		try {
// AdminVo adminVo=new AdminVo();
			String admin = "admin";
			List<Admin> adminList = adminRepo.findByTypeNot(admin);

			// BeanUtils.copyProperties(adminVo, admin);

			System.out.println("find all other than admin========>" + adminList);
			// return userVo;
			model.addAttribute("alluser", "adminList");
			return adminList;
		} catch (Exception ex) {
			ex.getMessage();
			ex.printStackTrace();

		}
		return null;

	}

	@ResponseBody
	@PostMapping(value = "alluserbytype")
	public List<Admin> Alldatafindtype(@RequestParam("type") String type, Model model) {

		System.out.println("in ajax");
		try {
			String admin = "admin";
			List<Admin> adminList = new ArrayList<Admin>();

			if ("approvedexpert".equalsIgnoreCase(type)) {
//String cc="0";
				type = "expert";
				adminList = adminRepo.findByTypeAndApproved(type, "0");
			} else {
				adminList = adminRepo.findByType(type);

			}
			System.out.println("find all by type========>" + adminList);

			model.addAttribute("alluser", "adminList");

			return adminList;
		} catch (Exception ex) {
			ex.getMessage();
			ex.printStackTrace();

		}
		return null;

	}

	@ResponseBody
	@PostMapping(value = "updateuser")
	public String updateUser(@RequestParam(name = "type", required = false) String type,
			@RequestParam(name = "activestatus", required = false) String activeStatus,
			@RequestParam(name = "approved", required = false) String approved, @RequestParam("emailid") String emailid,
			Model model) {

		System.out.println("update/type in ajax");

//if(type="" || emailid.equalsIgnoreCase("") )			
//			

		if (activeStatus != null) {

			try {
				AdminVo adminVo = new AdminVo();

				adminVo.setIsActive("0");
				adminVo.setEmail(emailid);
				adminService.saveupdate(adminVo);
				System.out.println("Block succesfully");
			} catch (Exception ex) {
				ex.getMessage();
			}

		}
		if (approved != null) {

			try {
				AdminVo adminVo = new AdminVo();
				System.out.println("approving ===>");
				// adminVo.setIsActive("0");
				adminVo.setEmail(emailid);
				adminVo.setApproved("1");
				adminService.saveupdate(adminVo);
				System.out.println("approved succesfully");
			} catch (Exception ex) {
				ex.getMessage();
			}

		}

		if (type != null && !type.isBlank()) {
			try {
				AdminVo adminVo = new AdminVo();
				adminVo.setEmail(emailid);
				adminVo.setType(type);
				adminService.saveupdate(adminVo);
				System.out.println("update succesfully");
				// return adminList;
			} catch (Exception ex) {
				ex.getMessage();
				ex.printStackTrace();

			}
		}
		return null;

	}

	@ResponseBody
	@GetMapping(value = "getpesticide")
	public List<Pesticide> allpesticide(Model model) {

		// List<HistoryVo> historyVo = null;

		List<Pesticide> history = new ArrayList<>();
		history = pesticideRepo.findAll();
		System.out.println("history of products database=>" + history);

		System.out.println("pesticide List=>" + history);

		return history;

	};

	@ResponseBody
	@PostMapping(value = "deletepesti")
	public List<Pesticide> allpesticide(@RequestParam("id") String id, Model model) {

		// List<HistoryVo> historyVo = null;

		List<Pesticide> history = new ArrayList<>();
		int idi = Integer.parseInt(id);
		try {
			pesticideRepo.deleteById(idi);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		System.out.println("history of products database=>" + history);

		System.out.println("pesticide List=>" + history);

		return history;

	};

	@ResponseBody
	@PostMapping(value = "setquantitypesticide")
	public List<Pesticide> pestiaddquantity(@RequestParam("id") String id, @RequestParam("quantity") String quantity,
			Model model) {

		// List<HistoryVo> historyVo = null;

		List<Pesticide> history = new ArrayList<>();
//		/int idi=Integer.parseInt(id);
		try {
			int idi = Integer.parseInt(id);
			Optional<Pesticide> pesticide = pesticideRepo.findById(idi);

			pesticide.get().setQuantity(quantity);
			pesticideRepo.save(pesticide.get());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		System.out.println("history of products database=>" + history);

		System.out.println("pesticide List=>" + history);

		return history;

	};

	@ResponseBody
	@PostMapping(value = "pesticideadd")
	public void pestiaddquantity(@RequestParam("productquantity") String quantity,
			@RequestParam("productname") String productname, @RequestParam("productprice") String productprice,
			Model model) {

		// List<HistoryVo> historyVo = null;

		// List<Pesticide> history = new ArrayList<>();
		Pesticide pesticide = new Pesticide();
//		/int idi=Integer.parseInt(id);
		try {
			// int idi=Integer.parseInt(id);

			// pesticideRepo.findById(idi);
			pesticide.setAddby(adminid);
			pesticide.setQuantity(quantity);
			pesticide.setName(productname);
			pesticide.setPrice(productprice);

			pesticideRepo.save(pesticide);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		System.out.println("history of products database=>" + pesticide);

		System.out.println("pesticide List=>" + pesticide);

	};

	@ResponseBody
	@GetMapping(value = "seequeries")
	public List<Query> seequeries(Model model) {

		// List<HistoryVo> historyVo = null;

		List<Query> query = new ArrayList<>();
		query = queryRepo.findAll();

		System.out.println("history of products database=>" + query);

		return query;

	};

	@ResponseBody
	@PostMapping(value = "savefeedback")
	public void getfeedback(Model model, @RequestParam("feedback") String getfeedback, @RequestParam("id") int id) {

		System.out.println("savinf feedback");
		Feedback feedback = new Feedback();

		String adminidd = Integer.toString(adminid);

		Optional<Pesticide> pesti = pesticideRepo.findById(id);

		feedback.setProductname(pesti.get().getName());
		feedback.setProductid(Integer.toString(pesti.get().getId()));
		feedback.setFeedback(getfeedback);
		System.out.println(adminid);
		feedback.setFeedbackid(adminidd);

		feedbackRepo.save(feedback);
	};

	@ResponseBody
	@PostMapping(value = "saveanswer")
	public void saveanser(@RequestParam(name = "answer") String answer, @RequestParam(name = "id") int id,
			Model model) {

		Optional<Query> ff = queryRepo.findById(id);
		Query query = new Query();

		String adminidd = Integer.toString(adminid);
		if (ff.get().getExpertid() == Integer.toString(adminid)) {
			query.setId(ff.get().getId());

		}
		query.setAnswer(answer);
		query.setQuery(ff.get().getQuery());
		query.setQueryuserid(ff.get().getQueryuserid());
		query.setProductname(ff.get().getProductname());
		query.setProductid(ff.get().getProductid());

		query.setExpertid(adminidd);

		queryRepo.save(query);

		System.out.println("save succesfully query answer ");

	};

	@ResponseBody
	@PostMapping(value = "savequery")
	public void savequery(@RequestParam(name = "query") String queries, @RequestParam(name = "id") int id,
			Model model) {
		System.out.println("in savequery");
		System.out.println(id);

		Optional<Pesticide> ff = pesticideRepo.findById(id);

		Query query = new Query();

		String idd = Integer.toString(id);
		query.setProductid(idd);
		query.setQuery(queries);
		String adminidd = Integer.toString(adminid);
		query.setQueryuserid(adminidd);
		query.setProductname(ff.get().getName());

		queryRepo.save(query);

		System.out.println("save succesfully query");

	};

}
