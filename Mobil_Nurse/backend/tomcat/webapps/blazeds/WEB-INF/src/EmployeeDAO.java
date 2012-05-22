import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

/*
 * @author Christoph Nützel
 */

public class EmployeeDAO {

	EntityManagerFactory emf;
	EntityManager em;

	public EmployeeDAO() {
		emf = PersistenceManager.getInstance().createEntityManagerFactory();
		em = emf.createEntityManager();
	}

	public List<Employee> getAllEmployees() {

		ArrayList<Employee> employees = new ArrayList<Employee>();

		EntityManagerFactory emf = PersistenceManager.getInstance()
				.createEntityManagerFactory();
		EntityManager em = emf.createEntityManager();

		EntityTransaction tx = em.getTransaction();
		tx.begin();

		List<?> fetchedEmployees = em.createQuery("select a from Employee a")
				.getResultList();

		System.out
				.println("\n---------  LIST OF ALL EMPLOYESS START ---------");

		for (Object fetchedEmployee : fetchedEmployees) {
			if (fetchedEmployee instanceof Employee) {
				Employee emp = (Employee) fetchedEmployee;
				employees.add(emp);
				System.out.println(" - Employee: " + " ID: " + emp.getId()
						+ "  Name: " + emp.getName() + " Firstname: "
						+ emp.getFirstname() + " Pass: " + emp.getPassword()
						+ " User: " + emp.getUsername() + " Picture: " + emp.getPicture());
			}
		}

		System.out.println("---------  LIST OF ALL EMPLOYESS END  ---------\n");

		tx.commit();

		return employees;

	}

	public void createEmployee(Employee employee) {

		EntityTransaction tx = em.getTransaction();

		tx.begin();
		em.persist(employee);
		tx.commit();
		System.out.println("Employee " + employee.getName() + " created!");
	}

	public boolean updateEmployee(Employee employee) {

		try {
			EntityManagerFactory emf = PersistenceManager.getInstance()
					.createEntityManagerFactory();
			EntityManager em = emf.createEntityManager();

			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.merge(employee);
			tx.commit();
			System.out.println("Employee  " + employee.getName() + " updated!");

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean deleteEmployee(Employee employee) {
		try {
			EntityManagerFactory emf = PersistenceManager.getInstance()
					.createEntityManagerFactory();
			EntityManager em = emf.createEntityManager();

			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.remove(em.merge(employee));
			System.out.println("Employee " + employee.getName() + " deleted!");
			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public Employee checkEmployeeLogin(final String username,
			final String password) {
		// boolean isIn = false;
		System.out.println("\n--------- CHECK RATHER EMPLOYEE RIGHT OR WRONG START ---------");
		Employee empCurrent;
		List<?> emplist = getAllEmployees();
		for (Object emp : emplist) {
			empCurrent = (Employee) emp;
			if (empCurrent.getUsername().equals(username)
					&& empCurrent.getPassword().equals(password)) {
				System.out.println("\n-------- EMPLOYEE TRUE : " + empCurrent.getUsername());
				return empCurrent;
			}
		}
		System.out.println("\n ------------ EMPLOYEE NOT TRUE ");
		return null;
	}
}
