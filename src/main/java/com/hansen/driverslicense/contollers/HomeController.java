package com.hansen.driverslicense.contollers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hansen.driverslicense.models.License;
import com.hansen.driverslicense.models.Person;
import com.hansen.driverslicense.services.DriversLicenseService;

@Controller
public class HomeController {
	
	private final DriversLicenseService dService;
	
	public HomeController(DriversLicenseService dService) {
		this.dService = dService;
	}

	@RequestMapping("/")
	public String index(Model model) {
		model.addAttribute("people", dService.getAllPeople());
		model.addAttribute("licenses", dService.getAllLicenses());
		return "index.jsp";
	}
	
	@RequestMapping("/persons/new")
	public String newPerson(@ModelAttribute("person") Person person) {
		return "createPerson.jsp";
	}
	
	@RequestMapping(value = "/persons/create", method = RequestMethod.POST)
	public String createPerson(@Valid @ModelAttribute("person") Person person,
			BindingResult result) {
		
		if (result.hasErrors()) {
			return "createPerson.jsp";
		} else {
			this.dService.createPerson(person);
			return "redirect:/";
		}		
	}

	@RequestMapping("/licenses/new")
	public String newLicense(@ModelAttribute("license") License license, Model model) {
		model.addAttribute("people", dService.getAllPeople());
		return "createLicense.jsp";
	}
	
	@RequestMapping(value = "/licenses/create", method = RequestMethod.POST)
	public String createLicense(@Valid @ModelAttribute("license") License license,
			BindingResult result) {
		
		if (result.hasErrors()) {
			return "createLicense.jsp";
		} else {
			this.dService.createLicense(license);
			return "redirect:/";
		}		
	}
	
	@RequestMapping(value = "/persons/{id}")
	public String showPerson(@PathVariable("id")Long id, Model model) {
		Person person = this.dService.getPerson(id);
		model.addAttribute("person", person);
		return "show.jsp";
		
	}
	
	
	
}
