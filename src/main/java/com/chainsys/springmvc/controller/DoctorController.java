package com.chainsys.springmvc.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
//import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.springmvc.dao.DoctorRepository;
import com.chainsys.springmvc.pojo.Appointment;
import com.chainsys.springmvc.pojo.Doctor;
import com.chainsys.springmvc.pojo.DoctorAppointmentsDTO;
import com.chainsys.springmvc.service.DoctorService;

@Controller
@RequestMapping("/doctor")
public class DoctorController {
	

//	@Bean
//	public void setRepo(DoctorRepository repo) {
//		this.repo = repo;
//	}
	@Autowired
	DoctorService drservice;
	@GetMapping("/list")
	public String getAllDoctors(Model model) {
		List<Doctor> dr = drservice.getDoctors();
		model.addAttribute("allDoctor",dr);
		return "list-doctor";
	}
	@GetMapping("/getDoctor")
	// we need to give from where to read data from the HTTP request and also the
	// content type application/json
	public String getDoctor(@RequestParam("id") int id, Model model) {
		Doctor dr = drservice.findById(id);
		model.addAttribute("getdoctor", dr);
		return "find-doctor-id-form";
	}
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Doctor dr = new Doctor();
		model.addAttribute("adddoctor",dr);
		return "add-doctor-form";
	}
	@PostMapping("/add")
	public String addNewDoctor(@ModelAttribute("adddoctor") Doctor dr) {
		drservice.save(dr);
		return "redirect:/doctor/list";
	}

	@GetMapping("/deleteDoctor")
	public String deleteDoctors(@RequestParam("doctor_id") int id) {
		drservice.deleteById(id);
		return "redirect:/doctor/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("doctor_id") int id,Model model)
	{
		Doctor dr =drservice.findById(id);
		model.addAttribute("updatedoctor",dr);
		return "update-doctor-form";
		
	}
	@PostMapping("updatedoc")
	public String updateEmployees(@ModelAttribute("updatedoctor") Doctor dr) {
		drservice.save(dr);
		return "redirect:/doctor/list";
	}
	@GetMapping("/getdocapp")
	public String getAppointments (@RequestParam("id") int id,Model model)
	{ 
		DoctorAppointmentsDTO dto=drservice.getDoctorAppointments(id);
		model.addAttribute("getdocapp", dto.getDoctor()); 
		model.addAttribute("applist", dto.getAppointments()); 
		return "list-doctor-appointments"; 
	}
	//localhost:8080/doctor/trans?id=44
	@GetMapping("/trans")
	public void testTransaction(@RequestParam("id")int id) {
		DoctorAppointmentsDTO dto =new DoctorAppointmentsDTO();
		Doctor dr =new Doctor();
		dr.setDoctor_id(id);
		dr.setDoctor_name("Leela");
		Date dt =new Date(80,7,5);
		dr.setDob(dt);
		dr.setCity("Chennai");
		dr.setPhoneno(8900012000l);
		dr.setSpeciality("heart");
		dr.setStandard_fees(800);
		dto.setDoctor(dr);
		List<Appointment> appList = new ArrayList<Appointment>();
		int nextAppId =drservice.getNextAppointmentId();
		for(int i=0;i<=202;i++) {
			Appointment app = new Appointment();
			app.setApp_id(id);
			Date appdt =new Date(22,7,25);
			app.setApp_date(dt);
			app.setDoctor_id(id);
			app.setPatient_name("LeelaMurugesan");
			app.setFees_collected(dr.getStandard_fees());
			dto.addAppointments(app);
		}
		drservice.addDoctorAndAppointments(dto);
		System.out.println("Successfully Completed");

		}
	}
	
