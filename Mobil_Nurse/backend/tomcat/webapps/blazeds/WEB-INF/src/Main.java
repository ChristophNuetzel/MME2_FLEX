import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

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
//				.read(new File("C:/Users/Christoph/Documents/Studium/MME2/Archiv/me_300.png"));
//		
//		ByteArrayOutputStream baos = new ByteArrayOutputStream();
//		ImageIO.write(bim, "jpg", baos);
//		byte[] bytepic = baos.toByteArray();

		EmployeeDAO emplDAO = new EmployeeDAO();

//		Employee em = new Employee("Christoph", "Maiermüller", "a", "a", 815,
//				"01/05/1989", "High-Quality-Bitch", bytepic);

//		emplDAO.createEmployee(em);
		emplDAO.getAllEmployees();

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

//		 Patient patient = new Patient("Fritz", "Manheim", "Manheim",
//		 "Erblindet");
//		 patientDAO.createPatient(patient);
		 patientDAO.getAllPatients();

		// System.out.println(emplDAO.checkEmployeeLogin("a", "a"));

	}

}
