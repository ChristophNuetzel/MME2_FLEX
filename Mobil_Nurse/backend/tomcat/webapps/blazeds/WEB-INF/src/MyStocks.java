import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class MyStocks {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String isin;
	private String name;
	private int qty;
	private double price;
	private String currency;
	private String infoLink;
	private String comment;
	
	public MyStocks(){}
	
	public MyStocks(String isin, String name, int qty, double price, String currency) {
		super();
		this.isin = isin;
		this.name = name;
		this.qty = qty;
		this.price = price;
		this.currency = currency;
		this.infoLink = "missing";
		this.comment = "";
	}
		
	public String getIsin() {
		return isin;
	}
	public void setIsin(String isin) {
		this.isin = isin;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getInfoLInk() {
		return infoLink;
	}
	public void setInfoLInk(String infoLInk) {
		this.infoLink = infoLInk;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
//
//	@Override
//	public String toString() {
//		return "ShareVO [isin=" + isin + ", name=" + name + ", qty=" + qty
//				+ ", price=" + price + ", currency=" + currency + ", infoLInk="
//				+ infoLink + ", comment=" + comment + "]";
//	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	

}
