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
	private CommunicationProblem communication_problems;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public CommunicationProblem getCommunication_problems() {
		return communication_problems;
	}

	public void setCommunication_problems(
			CommunicationProblem communication_problems) {
		this.communication_problems = communication_problems;
	}

}
