package mobile.nurse.model.patient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BasicPatient {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String name;
	private String firstname;
	private String roomNr;
	private String patNr;
	
	public BasicPatient(Patient p){
		this.id = p.getId();
		this.name = p.getName();
		this.firstname = p.getFirstname();
		this.roomNr = p.getRoomNr();
		this.patNr = p.getPatNr();
	}

	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getFirstname() {
		return firstname;
	}

	public String getRoomNr() {
		return roomNr;
	}

	public String getPatNr() {
		return patNr;
	}
}
