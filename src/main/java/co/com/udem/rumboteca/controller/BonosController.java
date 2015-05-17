package co.com.udem.rumboteca.controller;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.com.udem.rumboteca.model.EventDTO;
import co.com.udem.rumboteca.model.PageDataDTO;
import co.com.udem.rumboteca.service.pageservice.PageDataInterface;
import co.com.udem.rumboteca.service.pageservice.PageDataInterfaceImpl;



@Controller
@RequestMapping("/bonos")
public class BonosController {
	
	ObjectMapper mapper = new ObjectMapper();
	PageDataInterface pageDataService = new PageDataInterfaceImpl();
	
	@RequestMapping("/list")
	public ModelAndView MoviesList() throws JsonGenerationException, JsonMappingException, IOException{
		ModelAndView modelAndView = new ModelAndView();
	    PageDataDTO pageDataDTO = pageDataService.getPageDataDTO();
	    
		modelAndView.addObject("pageDataDTOList", pageDataDTO);
		System.out.println(mapper.writeValueAsString(modelAndView));
		return modelAndView;
	}
}
