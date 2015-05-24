package co.com.udem.rumboteca.service.pageservice;

import java.util.ArrayList;
import java.util.List;

import co.com.udem.rumboteca.model.AdvertisementDTO;
import co.com.udem.rumboteca.model.ComboDTO;
import co.com.udem.rumboteca.model.CountryDTO;
import co.com.udem.rumboteca.model.EventDTO;
import co.com.udem.rumboteca.model.PageDataDTO;
import co.com.udem.rumboteca.model.PlaceDTO;
import co.com.udem.rumboteca.model.WallDTO;
import co.com.udem.rumboteca.model.WalletDTO;
import co.com.udem.rumboteca.service.RumbotecaFacade;
import co.com.udem.rumboteca.service.restclient.RestfulRumbotecaWSClient;

public class PageDataInterfaceImpl implements PageDataInterface {

	RumbotecaFacade rumbotecaFacade = new RumbotecaFacade();
	RestfulRumbotecaWSClient restfulRumbotecaWSClient = new RestfulRumbotecaWSClient();

	public PageDataDTO getPageDataDTO() {
		// TODO MOCKS
		PageDataDTO pageDataDTO = new PageDataDTO();
		pageDataDTO.setAdvertisementDTOList(getAdvertisementDTOList());
		pageDataDTO.setEventDTOList(getEventDTOList());
		pageDataDTO.setPlaceDTOList(getPlaceDTOList());
		pageDataDTO.setWallDTOList(getWallDTOList());
		pageDataDTO.setComboDTOList(getComboDTOList());
		pageDataDTO.setCountryDTOList(getContryDTOPage());
		return pageDataDTO;
	}

	public PageDataDTO getPageDataDTO(int page) {
		// TODO MOCKS
		PageDataDTO pageDataDTO = new PageDataDTO();
		pageDataDTO.setAdvertisementDTOList(getAdvertisementDTOList());
		pageDataDTO.setEventDTOList(getEventDTOList());
		pageDataDTO.setPlaceDTOList(getPlaceDTOList());
		pageDataDTO.setWallDTOList(getWallDTOPage(page));
		pageDataDTO.setComboDTOList(getComboDTOList());
		pageDataDTO.setCountryDTOList(getContryDTOPage());
		return pageDataDTO;
	}

	private List<AdvertisementDTO> getAdvertisementDTOList() {
		List<EventDTO> eventList = rumbotecaFacade.getEventByCity(1);
		List<AdvertisementDTO> advertisementDTOs = new ArrayList<AdvertisementDTO>();
		for (EventDTO eventDTO : eventList) {
			AdvertisementDTO advertisementDTO = new AdvertisementDTO();
			advertisementDTO.setDescription(eventDTO.getDescription());
			advertisementDTO.setPhoto(eventDTO.getPhoto());
			advertisementDTO.setTittle(eventDTO.getTittle());
			advertisementDTOs.add(advertisementDTO);
		}
		return advertisementDTOs;
	}

	private List<EventDTO> getEventDTOList() {
//		return rumbotecaFacade.getEventTopTen();
		return restfulRumbotecaWSClient.getEventTop();
	}

	private List<PlaceDTO> getPlaceDTOList() {
//		return rumbotecaFacade.getLocationTopTen();
		return restfulRumbotecaWSClient.getPlaceDTOTop();
	}

	private List<WallDTO> getWallDTOList() {
		return getWallDTOPage(1);
	}

	private List<ComboDTO> getComboDTOList() {
//		return rumbotecaFacade.getCombos();
		return restfulRumbotecaWSClient.getCombos();
	}

	private List<WallDTO> getWallDTOPage(int page) {
		List<WallDTO> wallDTOList = new ArrayList<WallDTO>();

		WallDTO wallDTO1 = new WallDTO();
		wallDTO1.setTittle("Metro");
		wallDTO1.setPhoto("../lib/resources/images/social1.jpg");
		wallDTO1.setDescription("En el metro");

		WallDTO wallDTO2 = new WallDTO();
		wallDTO2.setTittle("Sydney");
		wallDTO2.setPhoto("../lib/resources/images/social2.jpg");
		wallDTO2.setDescription("Teatro de Sydney");

		WallDTO wallDTO3 = new WallDTO();
		wallDTO3.setTittle("Baseball");
		wallDTO3.setPhoto("../lib/resources/images/social3.jpg");
		wallDTO3.setDescription("Cuadrangular");

		WallDTO wallDTO4 = new WallDTO();
		wallDTO4.setTittle("Eyes");
		wallDTO4.setPhoto("../lib/resources/images/social4.jpg");
		wallDTO4.setDescription("Mirando...");

		WallDTO wallDTO5 = new WallDTO();
		wallDTO5.setTittle("Surfing");
		wallDTO5.setPhoto("../lib/resources/images/social5.jpg");
		wallDTO5.setDescription("Montado en la tabla...");

		WallDTO wallDTO6 = new WallDTO();
		wallDTO6.setTittle("City");
		wallDTO6.setPhoto("../lib/resources/images/social6.jpg");
		wallDTO6.setDescription("Vista a la ciudad");

		WallDTO wallDTO7 = new WallDTO();
		wallDTO7.setTittle("Waterpolo");
		wallDTO7.setPhoto("../lib/resources/images/social7.jpg");
		wallDTO7.setDescription("Sumergido...");

		WallDTO wallDTO8 = new WallDTO();
		wallDTO8.setTittle("Cycling");
		wallDTO8.setPhoto("../lib/resources/images/social8.jpg");
		wallDTO8.setDescription("Le tour...");

		WallDTO wallDTO9 = new WallDTO();
		wallDTO9.setTittle("Socializando");
		wallDTO9.setPhoto("../lib/resources/images/social9.jpg");
		wallDTO9.setDescription("Reunidas");

		switch (page) {
		case 1:
			wallDTOList.add(wallDTO1);
			wallDTOList.add(wallDTO2);
			wallDTOList.add(wallDTO3);
			break;
		case 2:
			wallDTOList.add(wallDTO4);
			wallDTOList.add(wallDTO5);
			wallDTOList.add(wallDTO6);
			break;
		case 3:
			wallDTOList.add(wallDTO7);
			wallDTOList.add(wallDTO8);
			wallDTOList.add(wallDTO9);
			break;
		default:
			break;
		}

		return wallDTOList;
	}
	
	private List<CountryDTO> getContryDTOPage(){
		return rumbotecaFacade.getCountries();
	}

}
