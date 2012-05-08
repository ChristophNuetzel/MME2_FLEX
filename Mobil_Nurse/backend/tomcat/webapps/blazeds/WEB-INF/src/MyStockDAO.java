import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

public class MyStockDAO {

	EntityManagerFactory emf;
	EntityManager em;
	

	public MyStockDAO() {
		emf = PersistenceManager.getInstance().createEntityManagerFactory();
		em = emf.createEntityManager();
	}

	public List<MyStocks> getAll() {
	
		ArrayList<MyStocks> stocks = new ArrayList<MyStocks>();
	
		EntityManagerFactory emf = PersistenceManager.getInstance()
				.createEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
	
		EntityTransaction tx = em.getTransaction();
		tx.begin();
	
		List<?> fetchedIdeas = em.createQuery("select a from MyStocks a")
				.getResultList();
	
		for (Object fetchedIdea : fetchedIdeas) {
			if (fetchedIdea instanceof MyStocks) {
				MyStocks stock = (MyStocks) fetchedIdea;
				System.out.println("ISIN: " + stock.getIsin() + "  Name: " + stock.getName() + "  PRICE: " + stock.getPrice());
				stocks.add(stock);
			}
		}
	
		tx.commit();
	
		return stocks;
	
	}

	public boolean createStock(MyStocks stock) {

		EntityTransaction tx = em.getTransaction();

		tx.begin();
		em.persist(stock);
		tx.commit();
		System.out.println("Stock created! " + stock);

		return true;
	}

	public boolean update(MyStocks stock) {

		try {
			EntityManagerFactory emf = PersistenceManager.getInstance()
					.createEntityManagerFactory();
			EntityManager em = emf.createEntityManager();

			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.merge(stock);
			tx.commit();
			System.out.println("Update OK " + stock);
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean delete(MyStocks stock) {

		try {
			EntityManagerFactory emf = PersistenceManager.getInstance()
					.createEntityManagerFactory();
			EntityManager em = emf.createEntityManager();

			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.remove(stock);
			tx.commit();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
}
