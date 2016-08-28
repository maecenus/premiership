package premier;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

public class GameDB {

	public static String insertGame(Game game){
		
		EntityManager em = DBUtil.getEMF().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		
		String check = "The insertion of a Game was a SUCCESS";
		try{
			trans.begin();
			em.persist(game);
			trans.commit();
			return check;
		}
		catch(Exception ex){
			System.out.println(ex);
			trans.rollback();
			check = "The insertion of a Game FAILED";
			return check;
		}
		finally{
			em.close();
		}
	}
}
