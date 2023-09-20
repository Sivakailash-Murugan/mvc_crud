package service;



import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;

import dao.studentdao;
import dto.student;

@Component
public class studentservice {

	@Autowired
	studentdao dao;
	public String save(student student, String dob, ModelMap map) {
		student.setTotal(student.getEnglishMarks()+student.getMathMarks()+student.getScienceMarks());
		double english=student.getEnglishMarks();
		double science=student.getScienceMarks();
		double maths=student.getMathMarks();
		
		double percentage=(english+science+maths)/3.0;
		String result="";
		if(english>=35&&maths>=35&&science>=35)
		{
			if(percentage>85)
			{
				result="Distinction";
			}
			else if(percentage>60)
			{
				result="First class";
			}
			else if(percentage>=35)
			{
				result="Second class";
			}
		}
		else
		{
			result="fail";
		}
		student.setPercentage(percentage);
		student.setResult(result);
		student.setDate(LocalDate.parse(dob));
		dao.save(student);
		map.put("msg","Data saved succesfully");
		return "Home";
	}
	
	 public String fetchall(ModelMap map) {
	        List<student> list=dao.fetchall();
	        if(list.isEmpty())
	        {
	        	map.put("fail","Data Not Found");
	        	return "home";
	        }
	        else{
	        	map.put("list",list);
	        	map.put("pass", "Data Found");
	        	return "fetch";
	        }
	    }

	public String fetch(int id, ModelMap map) {
	student student=dao.fetch(id);
	
	map.put("details", student);
		return "edit";
	}

	public String update(student student, String dob, ModelMap map) {
		student.setTotal(student.getEnglishMarks()+student.getMathMarks()+student.getScienceMarks());
		double english=student.getEnglishMarks();
		double science=student.getScienceMarks();
		double maths=student.getMathMarks();
		
		double percentage=(english+science+maths)/3;
		String result="";
		if(english>=35&&maths>=35&&science>=35)
		{
			if(percentage>85)
			{
				result="Distinction";
			}
			else if(percentage>60)
			{
				result="First class";
			}
			else if(percentage>=35)
			{
				result="Second class";
			}
		}
		else
		{
			result="fail";
		}
		student.setPercentage(percentage);
		student.setResult(result);
		student.setDate(LocalDate.parse(dob));
		dao.merge(student);
		map.put("msg","Data modified succesfully");
		List<student> list=dao.fetchall();
		map.put("list", list);
		return "fetch";
	
	}

	public String delete(int id, ModelMap map) {
		student student=dao.fetch(id);
		dao.remove(student);
		List<student> list=dao.fetchall();
		map.put("list", list);
		return "fetch";
		
	}
	
	
	
}
