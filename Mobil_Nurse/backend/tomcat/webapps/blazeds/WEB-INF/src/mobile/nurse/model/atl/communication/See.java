package mobile.nurse.model.atl.communication;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import mobile.nurse.model.interfaces.IAttribute;

@Entity
public class See implements IAttribute {
	
	@Id
	@GeneratedValue
	private long id;
	
	private boolean status = false;
	private String name = "see";
	
	public boolean getStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getId() {
		return id;
	}
	
	

}
