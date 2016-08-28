package premier;

import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import premier.DBUtil;
import premier.Person;

public class PersonDB {

	public static String insertPerson(Person person){
		
		EntityManager em = DBUtil.getEMF().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		
		String check = "The insertion of a person was a SUCCESS";
		try{
			trans.begin();
			em.persist(person);
			trans.commit();
			return check;
		}
		catch(Exception ex){
			System.out.println(ex);
			trans.rollback();
			check = "The insertion of a person FAILED";
			return check;
		}
		finally{
			em.close();
		}
	}
	
	public static Person checkLogin(String username){
		
		EntityManager em = DBUtil.getEMF().createEntityManager();
		String qString = "select p from Person p " +
						"where p.username = :username";
		TypedQuery<Person> tq = em.createQuery(qString, Person.class);
		tq.setParameter("username", username);
		
		Person person = null;
		try{
			person = tq.getSingleResult();
		}
		catch (NoResultException e){
			return person;
		}
		finally{
			em.close();
		}
		
		return person;
	}
	

	public static void addGames(Set<Game> newGames, Person person){
		EntityManager em = DBUtil.getEMF().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		
		try{
			trans.begin();
			person.getGames().addAll(newGames);
			trans.commit();
		}
		catch(Exception ex){
			System.out.println(ex);
			trans.rollback();
		}
		finally{
			em.close();
		}
	}
}
