package mobile.nurse.model.atl.communication;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class ComProblem {
	
	@Id
	@GeneratedValue
	private long id;
	
	private boolean see = false;
	private boolean speak = false;
	
	public boolean canSee() {
		return see;
	}
	public void setSee(boolean see) {
		this.see = see;
	}
	public boolean canSpeak() {
		return speak;
	}
	public void setSpeak(boolean speak) {
		this.speak = speak;
	}
	public long getId() {
		return id;
	}
	
	
	
}
