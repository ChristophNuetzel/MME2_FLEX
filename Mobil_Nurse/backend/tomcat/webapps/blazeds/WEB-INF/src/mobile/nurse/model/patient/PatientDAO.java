package mobile.nurse.model.patient;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import mobile.nurse.database.PersistenceManager;

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
	
	public List<BasicPatient> getAllBasicPatients() {

		ArrayList<BasicPatient> patients = new ArrayList<BasicPatient>();

		EntityManagerFactory emf = PersistenceManager.getInstance()
				.createEntityManagerFactory();
		EntityManager em = emf.createEntityManager();

		EntityTransaction tx = em.getTransaction();
		tx.begin();

		List<?> fetchedPatients = em.createQuery("select a from Patient a")
				.getResultList();

		System.out.println("---------  LIST OF ALL BASICPATIENTS START ---------");

		for (Object fetchedPatient : fetchedPatients) {
			if (fetchedPatient instanceof Patient) {
				BasicPatient bpat = new BasicPatient((Patient) fetchedPatient);
				patients.add(bpat);
				System.out.println(" -BASIC Patient:  " + " ID: " + bpat.getId()
						+ "  Name: " + bpat.getName() + " Firstname: " + bpat.getFirstname() + ""  );
			}
		}

		System.out.println("---------  LIST OF ALL BASICPATIENTS END  ---------");

		tx.commit();

		return patients;

	}
	
	public String[][] getBasicPatientStrings(){
		List<BasicPatient> patl = getAllBasics();
		String[][] s = new String[patl.size()][5];
		for(int i = 0; i < patl.size() ; i++){
			for(int j = 0; j < 5 ; j++){
				if(j==0){
					s[i][j] = patl.get(i).getId().toString();
				}else if(j==1){
					s[i][j] = patl.get(i).getFirstname();
				}else if(j==2){
					s[i][j] = patl.get(i).getName();
				}else if(j==3){
					s[i][j]=patl.get(i).getRoomNr();
				}else{
					s[i][j] = patl.get(i).getPatNr();
				}
			}
		}
		return s;
	}

	public List<BasicPatient> getAllBasics(){
		
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

//		System.out.println("---------  LIST OF ALL PATIENTS START ---------");

		for (Object fetchedPatient : fetchedPatients) {
			if (fetchedPatient instanceof Patient) {
				Patient pat = (Patient) fetchedPatient;
				patients.add(pat);
//				System.out.println(" - Patient:  " + " ID: " + pat.getId()
//						+ "  Name: " + pat.getName() + " Firstname: " + pat.getFirstname() + "Room: " + pat.getRoomNr() + " Gender: "   + pat.getGender());
			}
		}

//		System.out.println("---------  LIST OF ALL PATIENTS END  ---------");

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
