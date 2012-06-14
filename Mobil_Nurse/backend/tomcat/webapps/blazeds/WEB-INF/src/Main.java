import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import mobile.nurse.model.employee.Employee;
import mobile.nurse.model.employee.EmployeeDAO;
import mobile.nurse.model.patient.Patient;
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
//////				.read(new File("D:/Ressourcen/PICS/chris.jpeg"));
//		ByteArrayOutputStream baos = new ByteArrayOutputStream();
//		ImageIO.write(bim, "jpg", baos);
//		byte[] bytepic = baos.toByteArray();
////
//		EmployeeDAO emplDAO = new EmployeeDAO();
//		
//		Employee em = new Employee("Petra", "Kuhmann", "a", "a", 789456,
//				"01/02/1985", "Nurse", bytepic);

//		emplDAO.createEmployee(em);
//		emplDAO.getAllEmployees();
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
		
//		Communication com  = new Communication();
//		ComProblem comP = new ComProblem();
//		comP.setSee(false);
//		comP.setSpeak(false);
//		com.setCommunicationProblems(comP);

		PatientDAO patientDAO = new PatientDAO();
//		long l = 2;
//		 patientDAO.updateCommunicationATL(2, com);
		 
//		 Patient p = new Patient("Jens", "Maiermüller", "E114", "135786", "Moslem", 59, "20.05.1963", "German", "w", "She can´t eat", bytepic);
//		 p.setCommunication(com);
//		 patientDAO.createPatient(p);
		
		 patientDAO.getAllPatients();
		 
		// System.out.println(emplDAO.checkEmployeeLogin("a", "a"));

	}

}
