package mobile.nurse.model.atl;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Communication {
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String[] problems;
	private String[] solutions;
	private String[] dia;
	private String[] tools;
	
	
	public String[] getProblems() {
		return this.problems;
	}

	public void setProblems(String[] probs) {
		this.problems = probs;
	}

}
