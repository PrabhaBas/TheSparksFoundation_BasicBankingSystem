package com.prabha.demo.model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "pvsender")
public class PVSender {
	
	@Id
	@SequenceGenerator(
			name ="pvsender_sequence",
			sequenceName = "pvsender_sequence",
			allocationSize = 1
			
	)
	@GeneratedValue(
			strategy = GenerationType.SEQUENCE,
			generator = "pvsender_sequence"
			)
	private int sno;
	private String sender;
	private String receiver;
	private int amount;
	private String dateTime;
	
	
	
	
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	

	public String getDateTime() {
		return dateTime;
	}



	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}



	@Override
	public String toString() {
		return "PVSender [sno=" + sno + ", sender=" + sender + ", receiver=" + receiver + ", amount=" + amount
				+ ", dateTime=" + dateTime + "]";
	}
	
	
	

}
