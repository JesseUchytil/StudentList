package studentlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {
	@Autowired StudentDao dao;
	
	@RequestMapping(value = "/menu")
	public ModelAndView menu() {
		ModelAndView modelAndView = new ModelAndView( );
		
		modelAndView.setViewName("menu");
		return modelAndView;
	}

	@RequestMapping(value = "/form")
	public ModelAndView user( ){
		ModelAndView modelAndView = new ModelAndView( );
		modelAndView.setViewName("studentForm");
		modelAndView.addObject("student", new Student( ));
		return modelAndView;
	}
	
	@RequestMapping(value = "/result")
	public ModelAndView processUser(Student student){
		ModelAndView modelAndView = new ModelAndView();
		dao.insertStudent(student);
		modelAndView.setViewName("studentResult");
		modelAndView.addObject("s", student);
		return modelAndView;
	}

	@Bean
	public StudentDao dao() {
		StudentDao bean = new StudentDao();
		return bean;
	}
	
	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll( ){
		ModelAndView modelAndView = new ModelAndView();
		List<Student> allStudents = dao.getAllStudents();
		modelAndView.setViewName("viewAllStudents");
		modelAndView.addObject("all", allStudents);
		return modelAndView;
	}
	
	@RequestMapping(value = "/deleteAll")
	public ModelAndView deleteAll( ) {
		ModelAndView modelAndView = new ModelAndView();
		dao.removeAllStudents();
		modelAndView.setViewName("deleteAll");
		return modelAndView;
	}
	
	@RequestMapping(value = "/studentYearList")
	public ModelAndView studentYearList() {
		ModelAndView modelAndView = new ModelAndView();
		List<Student> allStudents = dao.getAllStudentsByYear();
		modelAndView.setViewName("viewStudentsByYear");
		modelAndView.addObject("all", allStudents);
		return modelAndView;
	}
	
	@RequestMapping(value = "/classyearList")
	public ModelAndView classyearList() {
		ModelAndView modelAndView = new ModelAndView();
		List<Classyear> allClassyears = dao.getAllClassyear();
		modelAndView.setViewName("viewAllClassyears");
		modelAndView.addObject("all", allClassyears);
		return modelAndView;
	}

}


