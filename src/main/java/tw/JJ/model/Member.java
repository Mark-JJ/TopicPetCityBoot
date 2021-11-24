package tw.JJ.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity @Table(name = "MemberData")
@Component
public class Member {
	@Id @Column(name = "memberID ")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	private String mail;
	private String password;
	private String phone;
	private String name;
	private String numberID;
	private String birthday;
	private String address;
	private String gender;


	public Member() {
	}


	public Member(String mail, String password, String phone, String name, String numberID, String birthday,
			String address, String gender) {
		this.mail = mail;
		this.password = password;
		this.phone = phone;
		this.name = name;
		this.numberID = numberID;
		this.birthday = birthday;
		this.address = address;
		this.gender = gender;
	}
	public Member(String id,String mail, String password, String phone, String name, String numberID, String birthday,
			String address, String gender) {
		this.id = id;
		this.mail = mail;
		this.password = password;
		this.phone = phone;
		this.name = name;
		this.numberID = numberID;
		this.birthday = birthday;
		this.address = address;
		this.gender = gender;
	}


	public Member(String mail, String password) {
		this.mail = mail;
		this.password = password;
	}


	@Override
	public String toString() {
		return "Member [id=" + id + ", mail=" + mail + ", password=" + password + ", phone=" + phone + ", name=" + name
				+ ", numberID=" + numberID + ", birthday=" + birthday + ", address=" + address + ", gender=" + gender
				+ "]";
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getNumberID() {
		return numberID;
	}


	public void setNumberID(String numberID) {
		this.numberID = numberID;
	}


	public String getBirthday() {
		return birthday;
	}


	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
