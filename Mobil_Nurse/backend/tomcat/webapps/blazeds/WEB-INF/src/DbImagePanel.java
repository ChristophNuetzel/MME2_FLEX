import java.awt.Graphics;
import java.awt.image.BufferedImage;

import javax.swing.JPanel;

public class DbImagePanel extends JPanel {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private BufferedImage img;

	public DbImagePanel(BufferedImage img) {
		if (img != null) {
			this.img = img;
		}
	}

	protected void paintComponent(Graphics g) {
		super.paintComponent(g);
		// Draw image centered.
		int x = (getWidth() - img.getWidth()) / 2;
		int y = (getHeight() - img.getHeight()) / 2;
		g.drawImage(img, x, y, this);
	}
}
