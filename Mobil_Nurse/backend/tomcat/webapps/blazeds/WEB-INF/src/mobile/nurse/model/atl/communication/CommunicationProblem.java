package mobile.nurse.model.atl.communication;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class CommunicationProblem {
	
	@Id
	@GeneratedValue
	private long id;
	
	private See see = new See();

	public See getSee() {
		return see;
	}

	public void setSee(See see) {
		this.see = see;
	}

	public long getId() {
		return id;
	}
	
}
