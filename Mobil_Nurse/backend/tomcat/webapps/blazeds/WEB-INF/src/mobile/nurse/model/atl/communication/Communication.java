package mobile.nurse.model.atl.communication;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Communication {

	@Id
	@GeneratedValue()
	private Long id;

	@OneToOne(cascade = CascadeType.ALL)
	private ComProblem problems;


	public Long getId() {
		return id;
	}

	public ComProblem getProblems() {
		return problems;
	}

	public void setProblems(ComProblem problems) {
		this.problems = problems;
	}

	public ComProblem getCommunicationProblems() {
		return problems;
	}

	public void setCommunicationProblems(ComProblem problems) {
		this.problems = problems;
	}

}
