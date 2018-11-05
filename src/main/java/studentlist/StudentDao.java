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
		Classyear classyear = new Classyear();
		classyear.setYear(studentToAdd.getClassyearid());
		if(findClassyearByYear(classyear).size() == 0) {
			em.persist(classyear);
		}
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
		em.close();
		return all;
	}
	
	public List<Student> getAllStudentsByYear() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select s from Student s order by s.classyearid";
		TypedQuery<Student> typedQuery = em.createQuery(q, Student.class);
		List<Student> all = typedQuery.getResultList();
		em.close();
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
		
		list.clear();
		List<Classyear>list2 = getAllClassyear();
		for(Classyear classyear : list2){
			classyear = em.merge(classyear);
			em.remove(classyear);
		}
		em.getTransaction().commit();
		em.close();
	}
	
	public List<Classyear> findClassyearByYear(Classyear classyear){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select c from Classyear c where c.year = " + classyear.getYear();
		TypedQuery<Classyear> typedQuery = em.createQuery(q, Classyear.class);
		List<Classyear> all = typedQuery.getResultList();
		em.close();
		return all;
	}
	
	public List<Classyear> getAllClassyear(){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select c from Classyear c";
		TypedQuery<Classyear> typedQuery = em.createQuery(q, Classyear.class);
		List<Classyear> all = typedQuery.getResultList();
		em.close();
		return all;
	}
	
}
