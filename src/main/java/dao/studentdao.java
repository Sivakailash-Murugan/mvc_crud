package dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dto.student;
@Component
public class studentdao {

	@Autowired
	EntityManager manager;
	
	
	public void save(student student) {
		manager.getTransaction().begin();
		manager.persist(student);
		manager.getTransaction().commit();
	}
	
	public List<student> fetchall()
	{
		return manager.createQuery("select x from student x").getResultList();
		
	}

	public dto.student fetch(int id) {
		
		return manager.find(student.class, id);
	}

	public void merge(student student) {
		manager.getTransaction().begin();
		manager.merge(student);
		manager.getTransaction().commit();
		
	}

	public void remove(student student) {
		manager.getTransaction().begin();
		manager.remove(student);
		manager.getTransaction().commit();
		
	}

	
}
