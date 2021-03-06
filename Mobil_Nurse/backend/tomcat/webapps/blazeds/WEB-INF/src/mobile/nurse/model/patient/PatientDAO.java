package mobile.nurse.model.patient;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import mobile.nurse.database.PersistenceManager;
import mobile.nurse.model.atl.communication.ComProblem;
import mobile.nurse.model.atl.communication.Communication;

/*
 * @author Christoph N�tzel
 */

public class PatientDAO {

	EntityManagerFactory emf;
	EntityManager em;

	public PatientDAO() {
		emf = PersistenceManager.getInstance().createEntityManagerFactory();
		em = emf.createEntityManager();
	}

	public String[][] getBasicPatientStrings() {
		List<BasicPatient> patl = getAllBasics();
		String[][] s = new String[patl.size()][5];
		for (int i = 0; i < patl.size(); i++) {
			for (int j = 0; j < 5; j++) {
				if (j == 0) {
					s[i][j] = patl.get(i).getId().toString();
				} else if (j == 1) {
					s[i][j] = patl.get(i).getFirstname();
				} else if (j == 2) {
					s[i][j] = patl.get(i).getName();
				} else if (j == 3) {
					s[i][j] = patl.get(i).getRoomNr();
				} else {
					s[i][j] = patl.get(i).getPatNr();
				}
			}
		}
		return s;
	}

	private List<BasicPatient> getAllBasics() {

		ArrayList<Patient> patients = (ArrayList<Patient>) getAllPatients();
		List<BasicPatient> basicPatients = new ArrayList<BasicPatient>();

		for (Patient patient : patients) {
			BasicPatient bpat = new BasicPatient(patient);
			basicPatients.add(bpat);
		}
		return basicPatients;
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

		// System.out.println("---------  LIST OF ALL PATIENTS START ---------");

		for (Object fetchedPatient : fetchedPatients) {
			if (fetchedPatient instanceof Patient) {
				Patient pat = (Patient) fetchedPatient;
				patients.add(pat);
				System.out.println(" - Patient:  " + " ID: " + pat.getId()
						+ "  Name: " + pat.getName() + " Firstname: "
						+ pat.getFirstname() + "Room: " + pat.getRoomNr()
						+ " Gender: " + pat.getGender() + 
						" See: " +
						pat.getCommunication().getProblems().see + 
						" Ear: " + 
						pat.getCommunication().getProblems().ear + 
						" Speak: " + 
						pat.getCommunication().getProblems().speak);
			}
		}

		// System.out.println("---------  LIST OF ALL PATIENTS END  ---------");

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

		System.out.println("DATABASE UPDATE PATIENT: " + patient);
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

	public Patient getPatientById(long id) {

		EntityManagerFactory emf = PersistenceManager.getInstance()
				.createEntityManagerFactory();
		EntityManager em = emf.createEntityManager();

		Patient p = null;

		try {
			EntityTransaction tx = em.getTransaction();
			tx.begin();

			p = (Patient) em.find(Patient.class, id);

			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

	public void updateCommunicationATL(long id, Communication c) {
		System.out.println("ALL PATIENTS: " + getAllPatients()); 
		System.out.println("UPDATING THE COMMUNICATION ATL");
		System.out.println("CA: " + c);
		
		EntityManagerFactory emf = PersistenceManager.getInstance()
				.createEntityManagerFactory();
		EntityManager em = emf.createEntityManager();

		try {
			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.find(Patient.class, id).setCommunication(c);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
		System.out.println("END OF UPDATING");
		System.out.println("ALL PATIENTS: " + getAllPatients()); 
	}
	
	public void updateCommunicationATLBool(long id, boolean b) {
		System.out.println("ALL PATIENTS: " + getAllPatients()); 
		System.out.println("UPDATING THE COMMUNICATION ATL");
		
		Communication c = new Communication();
		ComProblem cp = new ComProblem();
		cp.see = (b);
		cp.ear = (true);
		c.setProblems(cp);
		System.out.println("CA: " + c );
		
		EntityManagerFactory emf = PersistenceManager.getInstance()
				.createEntityManagerFactory();
		EntityManager em = emf.createEntityManager();

		try {
			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.find(Patient.class, id).setCommunication(c);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
		System.out.println("END OF UPDATING");
		System.out.println("ALL PATIENTS: " + getAllPatients()); 
	}


}
