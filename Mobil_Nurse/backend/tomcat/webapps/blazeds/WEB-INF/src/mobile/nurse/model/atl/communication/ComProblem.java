package mobile.nurse.model.atl.communication;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class ComProblem {
	
	@Id
	@GeneratedValue()
	private Long id;
	
	public boolean see = false;
	public boolean ear = false;
	public boolean nose = false;
	
	public String problemsSee = "";
	public String problemsEar = "";
	public String problemsSpeak = "";
	
	public String solutionsSee = "";
	public String solutionEar = "";
	public String solutionSpeak = "";
	
	public String toolsSee = "";
	public String toolsEar = "";
	public String toolsSpeak = "";
	

	public long getId() {
		return id;
	}
	
	
	
}
