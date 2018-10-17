package studentlist;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class StudentDao {
EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("StudentList");
	
	public void insertStudent(Student studentToAdd){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(studentToAdd);
		em.getTransaction().commit();
		em.close();
			
	}

	public List<Student> getAllStudents() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select s from Student s";
		TypedQuery<Student> typedQuery = em.createQuery(q, Student.class);
		List<Student> all = typedQuery.getResultList();
		return all;
	}
	
	public void removeAllStudents() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		List<Student> list = getAllStudents();
		for(Student student : list) {
			student = em.merge(student);
			em.remove(student);
		}
		em.getTransaction().commit();
	}
}
