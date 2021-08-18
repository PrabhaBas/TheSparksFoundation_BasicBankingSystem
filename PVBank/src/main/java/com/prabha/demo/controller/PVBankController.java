package com.prabha.demo.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.prabha.demo.model.PVSender;
import com.prabha.demo.repo.PVSenderRepository;

@Controller
public class PVBankController {
	
	@Autowired
	PVSenderRepository pvSenderRepository;
	LocalDateTime now = LocalDateTime.now();  
	DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");  
    String formatDateTime = now.format(format);  
	
	@RequestMapping
	public String home() {
		return "index.jsp";
	}
	
	@RequestMapping("/transact")
	public String transact(PVSender pvSender) {
		
		pvSender.setDateTime(formatDateTime);
		pvSenderRepository.save(pvSender);
		
		return "transfer_money.jsp";
		
	}

	
}
