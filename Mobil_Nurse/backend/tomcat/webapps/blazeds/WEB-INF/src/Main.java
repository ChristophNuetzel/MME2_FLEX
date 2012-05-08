import java.io.IOException;


public class Main {

	/**
	 * @param args
	 */
	
	public static void main(String[] args) throws IOException {
		
//		MyStocks m1 = new MyStocks("DE01", "MICROSOFTs", 10, 412.48f,
//				"VERKAUFEN");
//
//		 MyStockDAO dao = new MyStockDAO();
//		 dao.delete(m1);
//		 dao.getAll();
		 
		 EmployeeDAO emplDAO = new EmployeeDAO();
		 
//		 Employee em = new Employee("DerA","ANachnachme", "a", "a", 0017, "01/05/1980", "Polizist");
//		 emplDAO.createEmployee(em);
		 emplDAO.getAllEmployees();
		 
		 PatientDAO patientDAO = new PatientDAO();
		 
//		 Patient patient = new Patient("Hans", "Maier", "Maier", "Kopfschmerzen");
//		 patientDAO.createPatient(patient);
		 patientDAO.getAllPatients();
		 
		 
		 
	}

}
