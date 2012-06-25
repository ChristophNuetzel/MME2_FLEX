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
	public boolean speak = false;
	public boolean hand = false;
	public boolean pencil = false;
	
	public String problemsSee = "";
	public String problemsEar = "";
	public String problemsSpeak = "";
	public String problemsHand = "";
	public String problemsPencil = "";
	
	public String solutionsSee = "";
	public String solutionEar = "";
	public String solutionSpeak = "";
	public String solutionHand = "";
	public String solutionPencil = "";
	
	public String toolsSee = "";
	public String toolsEar = "";
	public String toolsSpeak = "";
	public String toolsHand = "";
	public String toolsPencil = "";

	public long getId() {
		return id;
	}
	
	
	
}
