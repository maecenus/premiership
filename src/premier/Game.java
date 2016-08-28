package premier;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Game implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4055688675285905692L;

	@Id
	@GeneratedValue
	private long id;
	
	@ManyToOne
	private Person person;
	
	private String week;
	
	private String gameNo;
	
	private String winner;
	
	private int conPoints;
	
	public Game(){
		
	}
	
	public Game(Person person, String week, String gameNo, String winner, int conPoints){
		this();
		this.person = person;
		this.week = week;
		this.gameNo = gameNo;
		this.winner = winner;
		this.conPoints = conPoints;
	}

	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public String getWinner() {
		return winner;
	}

	public void setWinner(String winner) {
		this.winner = winner;
	}

	public int getConPoints() {
		return conPoints;
	}

	public void setConPoints(int conPoints) {
		this.conPoints = conPoints;
	}

	@Override
	public String toString() {
		return "NewGame [id=" + id + ", person=" + person + ", winner=" + winner + ", conPoints=" + conPoints
				+ "]";
	}

	
}
