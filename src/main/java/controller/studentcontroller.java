package controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import dto.student;
import service.studentservice;

@Controller
public class studentcontroller {
	
@Autowired
studentservice service;
	
@RequestMapping("/")
	public String loadHome(){
	
	return "Home";
}
@GetMapping("/insert")
public String loadInsert(){

return "Insert";
}
@PostMapping("/insert")
public String insert(student student,@RequestParam String dob,ModelMap map){
	return service.save(student,dob,map);
	
}
@GetMapping("fetchall")
public String fetchall(ModelMap map)
{
	return service.fetchall(map);
	}
@GetMapping("update")
public String fetch(ModelMap map,int id)
{
	return service.fetch(id,map);
}
@PostMapping("/updateStudent")
public String update(student student,@RequestParam String dob,ModelMap map){
	return service.update(student,dob,map);
	
}
@GetMapping("delete")
public String delete(ModelMap map,int id)
{
	return service.delete(id,map);
}
}
