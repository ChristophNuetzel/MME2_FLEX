package mobile.nurse.model.atl.communication;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Communication {

	@Id
	@GeneratedValue
	private Long id;

	@OneToOne
	private ComProblem problems;

	public Long getId() {
		return id;
	}

	public ComProblem getCommunicationProblems() {
		return problems;
	}

	public void setCommunicationProblems(ComProblem problems) {
		this.problems = problems;
	}

}
