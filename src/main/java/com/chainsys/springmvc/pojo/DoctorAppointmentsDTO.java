package com.chainsys.springmvc.pojo;

import java.util.ArrayList;
import java.util.List;

public class DoctorAppointmentsDTO {
	private Doctor doctor;
	private List<Appointment> applist =new ArrayList<Appointment>();
	public Doctor getDoctor() {
		return doctor;
	}
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	public void addAppointments(Appointment app) {
		applist.add(app);
	}
	public List<Appointment> getAppointments(){
		return applist;
	}

}
