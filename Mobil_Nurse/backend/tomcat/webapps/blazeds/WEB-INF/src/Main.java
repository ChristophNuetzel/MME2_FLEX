import java.io.IOException;

import mobile.nurse.model.employee.EmployeeDAO;
import mobile.nurse.model.patient.PatientDAO;

public class Main {

	/**
	 * @param args
	 */

	public static void main(String[] args) throws IOException {

		// MyStocks m1 = new MyStocks("DE01", "MICROSOFTs", 10, 412.48f,
		// "VERKAUFEN");
		//
		// MyStockDAO dao = new MyStockDAO();
		// dao.delete(m1);
		// dao.getAll();

		
		
//		BufferedImage bim = ImageIO
//				.read(new File("C:/Users/Christoph/Pictures/MyAvatar_Southpark.png"));
//				.read(new File("D:/Ressourcen/PICS/chris.jpeg"));
//		ByteArrayOutputStream baos = new ByteArrayOutputStream();
//		ImageIO.write(bim, "jpg", baos);
//		byte[] bytepic = baos.toByteArray();

		EmployeeDAO emplDAO = new EmployeeDAO();
		emplDAO.getAllEmployees();
//		Employee em = new Employee("Christoph", "Maiermüller", "a", "a", 815,
//				"01/05/1989", "High-Quality-Bitch", bytepic);

//		emplDAO.createEmployee(em);
//		emplDAO.getAllEmployees();

//		byte[] bb = null;
//		for (Employee e : emplDAO.getAllEmployees()) {
//			if (e.getFirstname().equals("Chris")) {
//				bb = e.getPicture();
//			}
//		}
		
		
//		emplDAO.getAllEmployees();
//
//		DbFrame df = new DbFrame(bb);
		// emplDAO.getAllEmployees();

		 PatientDAO patientDAO = new PatientDAO();
		 patientDAO.getAllPatients();
		 
		 System.out.println(patientDAO.getPatientById(1l).getFirstname());
//		 Patient p = new Patient("Harald", "Bergmann", "E108", "00158432", "evangelic", 55, "20.05.1968", "Irish", "w", "no history", bytepic);
//		 patientDAO.createPatient(p);

		// System.out.println(emplDAO.checkEmployeeLogin("a", "a"));

	}

}
