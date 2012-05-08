import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

/*
 * @author Christoph Nützel
 */

public class PatientDAO {

	EntityManagerFactory emf;
	EntityManager em;

	public PatientDAO() {
		emf = PersistenceManager.getInstance().createEntityManagerFactory();
		em = emf.createEntityManager();
	}

	public List<Patient> getAllPatients() {

		ArrayList<Patient> patients = new ArrayList<Patient>();

		EntityManagerFactory emf = PersistenceManager.getInstance()
				.createEntityManagerFactory();
		EntityManager em = emf.createEntityManager();

		EntityTransaction tx = em.getTransaction();
		tx.begin();

		List<?> fetchedPatients = em.createQuery("select a from Patient a")
				.getResultList();

		System.out.println("---------  LIST OF ALL PATIENTS START ---------");

		for (Object fetchedPatient : fetchedPatients) {
			if (fetchedPatient instanceof Patient) {
				Patient pat = (Patient) fetchedPatient;
				patients.add(pat);
				System.out.println(" - Patient:  " + " ID: " + pat.getId()
						+ "  Name: " + pat.getName() + " Firstname: " + pat.getFirstname() + " Illness: " + pat.getIllness()  );
			}
		}

		System.out.println("---------  LIST OF ALL PATIENTS END  ---------");

		tx.commit();

		return patients;

	}

	public void createPatient(Patient patient) {

		EntityTransaction tx = em.getTransaction();

		tx.begin();
		em.persist(patient);
		tx.commit();
		System.out.println("Patient " + patient.getName() + " created!");
	}

	public boolean updatePatient(Patient patient) {

		try {
			EntityManagerFactory emf = PersistenceManager.getInstance()
					.createEntityManagerFactory();
			EntityManager em = emf.createEntityManager();

			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.merge(patient);
			tx.commit();
			System.out.println("Patient  " + patient.getName() + " updated!");

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean deletePatient(Patient patient) {
		try {
			EntityManagerFactory emf = PersistenceManager.getInstance()
					.createEntityManagerFactory();
			EntityManager em = emf.createEntityManager();

			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.remove(patient);
			System.out.println("Patient " + patient.getName() + " deleted!");
			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
