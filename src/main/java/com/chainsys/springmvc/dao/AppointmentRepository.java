package com.chainsys.springmvc.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.springmvc.pojo.Appointment;

public interface AppointmentRepository extends CrudRepository<Appointment, Integer> {
    Appointment findById(int id) ;
    Appointment save(Appointment app);       //used for adding a new appointment and modifying the appointment.
    void deleteById(int id);
    
    List<Appointment> findAll();
    //Define a native query for the method
    int getNextId();  
}