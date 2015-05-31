package co.com.udem.rumboteca.controller;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.com.udem.rumboteca.model.PageDataDTO;
import co.com.udem.rumboteca.service.pageservice.PageDataInterface;
import co.com.udem.rumboteca.service.pageservice.PageDataInterfaceImpl;
import co.com.udem.rumboteca.service.restclient.RestfulRumbotecaWSClient;

@Controller
@RequestMapping("/bonos")
public class BonosController {

	ObjectMapper mapper = new ObjectMapper();
	PageDataInterface pageDataService = new PageDataInterfaceImpl();
	RestfulRumbotecaWSClient restfulRumbotecaWSClient = new RestfulRumbotecaWSClient();

	@RequestMapping("/list")
	public ModelAndView List() throws JsonGenerationException,
			JsonMappingException, IOException {
		ModelAndView modelAndView = new ModelAndView();
		PageDataDTO pageDataDTO = pageDataService.getPageDataDTO();

		modelAndView.addObject("pageDataDTOList", pageDataDTO);
		//System.out.println(mapper.writeValueAsString(modelAndView));
		return modelAndView;
	}
	
//	@RequestMapping(value = "/addLogin", method = RequestMethod.POST)
//	  public String addLogin(@ModelAttribute("SpringWeb") Login login, ModelMap model) {
//	    model.addAttribute("user", login.getUser());
//	    model.addAttribute("clave", login.getClave());
//	    model.addAttribute("id", login.getSession());
//
//	    return "result";
//	  }
	@RequestMapping(value = "/getEventCountryID", method = RequestMethod.POST)
	public ModelAndView getEventCountryID() throws JsonGenerationException,
			JsonMappingException, IOException {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("EventCountryID", restfulRumbotecaWSClient.getEventByCountry());
		System.out.println(mapper.writeValueAsString(modelAndView));
		return modelAndView;
	}
		
}
