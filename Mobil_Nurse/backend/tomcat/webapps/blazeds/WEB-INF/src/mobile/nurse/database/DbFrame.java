package mobile.nurse.database;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.JFrame;

public class DbFrame extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private DbImagePanel dbip;

	public DbFrame(final byte[] data) {
		this.setSize(300, 300);
		this.setVisible(true);
		BufferedImage bdata = null;
		try {
			bdata = ImageIO.read(new ByteArrayInputStream(data));
		} catch (IOException e) {
			e.printStackTrace();
		}
		dbip = new DbImagePanel(bdata);
		this.add(dbip);
	}

}
