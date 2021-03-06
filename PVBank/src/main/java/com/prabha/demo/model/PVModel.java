package com.prabha.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "pvmodel")
public class PVModel {
	@Id
	@SequenceGenerator(
			name ="pvmodel_sequence",
			sequenceName = "pvmodel_sequence",
			allocationSize = 1
			
	)
	@GeneratedValue(
			strategy = GenerationType.SEQUENCE,
			generator = "pvmodel_sequence"
			)
	private int id;
	private String name;
	private String mail;
	private int balance;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "PVModel [id=" + id + ", name=" + name + ", mail=" + mail + ", balance=" + balance + "]";
	}
	
	
	
	
	

}
