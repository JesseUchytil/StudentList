package studentlist;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="students")
public class Student {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String firstname;
	private String lastname;
	private String birthdate;//made a string for simplicity.
	private Gender gender;
	private String semestersattended;
	private String classyearid;

	public String getClassyearid() {
		return classyearid;
	}
	public void setClassyearid(String classyearid) {
		this.classyearid = classyearid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstName) {
		this.firstname = firstName;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastName) {
		this.lastname = lastName;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthDate) {
		this.birthdate = birthDate;
	}
	public Gender getGender() {
		return gender;
	}
	public void setGender(Gender gender) {
		this.gender = gender;
	}
	public String getSemestersattended() {
		return semestersattended;
	}
	public void setSemestersattended(String semestersAttended) {
		this.semestersattended = semestersAttended;
	}
}
