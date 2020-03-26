package com.kyunghee.model;

import java.sql.Timestamp;

public class MemberVO {
	private String member_id;			//	아이디
	private String member_pw;			//	비밀번호
	private String member_name;			//	이름
	private String member_birthyy;		//	생일 - 년
	private String member_birthmm;	 	//	생일 - 월 
	private String member_birthdd;		//	생일 - 일
	private String member_gender;		//	성별
	private String member_class;		//	기수
	private String member_phone;		//	전화
	private String member_email;		//	이메일 
	private Timestamp reg;				// 	가입일
	
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_birthyy() {
		return member_birthyy;
	}
	public void setMember_birthyy(String member_birthyy) {
		this.member_birthyy = member_birthyy;
	}
	public String getMember_birthmm() {
		return member_birthmm;
	}
	public void setMember_birthmm(String member_birthmm) {
		this.member_birthmm = member_birthmm;
	}
	public String getMember_birthdd() {
		return member_birthdd;
	}
	public void setMember_birthdd(String member_birthdd) {
		this.member_birthdd = member_birthdd;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_class() {
		return member_class;
	}
	public void setMember_class(String member_class) {
		this.member_class = member_class;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public Timestamp getReg() {
		return reg;
	}
	public void setReg(Timestamp reg) {
		this.reg = reg;
	}
	
	
	
	
	
}
