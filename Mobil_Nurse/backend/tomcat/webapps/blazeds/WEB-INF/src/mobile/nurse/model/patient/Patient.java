package mobile.nurse.model.patient;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import mobile.nurse.model.atl.communication.Communication;

/*
 * @author Christoph Nützel
 */

@Entity
public class Patient {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String firstname;
	private String name;
	private String roomNr;
	private String patNr;
	private String religion;
	private String birth;
	private String nation;
	private String gender;
	private String history;
	
	private int age;
	
	private byte[] picture;
	
	@OneToOne
	private Communication communication;

	public Patient(){
	}

	public Patient(String firstname, String name, String roomNr, String patNr,
			String religion, int age, String birth, String nation,
			String gender, String history, byte[] picture) {
		this.firstname = firstname;
		this.name = name;
		this.roomNr = roomNr;
		this.patNr = patNr;
		this.religion = religion;
		this.age = age;
		this.birth = birth;
		this.nation = nation;
		this.gender = gender;
		this.history = history;
		this.picture = picture;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRoomNr() {
		return roomNr;
	}

	public void setRoomNr(String roomNr) {
		this.roomNr = roomNr;
	}

	public String getPatNr() {
		return patNr;
	}

	public void setPatNr(String patNr) {
		this.patNr = patNr;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHistory() {
		return history;
	}

	public void setHistory(String history) {
		this.history = history;
	}

	public byte[] getPicture() {
		return picture;
	}

	public void setPicture(byte[] picture) {
		this.picture = picture;
	}

	public Communication getCommunication() {
		return communication;
	}

	public void setCommunication(Communication communication) {
		this.communication = communication;
	}
}
