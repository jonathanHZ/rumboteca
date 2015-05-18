package co.com.udem.rumboteca.model;

import java.io.Serializable;
import java.util.List;

/**
 * This dto has data associated to intial page
 * 
 * @author Milton
 */
public class PageDataDTO implements Serializable {

	/**
   * 
   */
	private static final long serialVersionUID = -3742431426408383129L;

	private int wallPage = 0;

	private List<AdvertisementDTO> advertisementDTOList;

	private List<EventDTO> eventDTOList;

	private List<PlaceDTO> placeDTOList;

	private List<WallDTO> wallDTOList;

	private List<ComboDTO> ComboDTOList;

	private List<CountryDTO> CountryDTOList;

	public int getWallPage() {
		return wallPage;
	}

	public void setWallPage(int wallPage) {
		this.wallPage = wallPage;
	}

	public List<AdvertisementDTO> getAdvertisementDTOList() {
		return advertisementDTOList;
	}

	public void setAdvertisementDTOList(List<AdvertisementDTO> advertisementDTOList) {
		this.advertisementDTOList = advertisementDTOList;
	}

	public List<EventDTO> getEventDTOList() {
		return eventDTOList;
	}

	public void setEventDTOList(List<EventDTO> eventDTOList) {
		this.eventDTOList = eventDTOList;
	}

	public List<PlaceDTO> getPlaceDTOList() {
		return placeDTOList;
	}

	public void setPlaceDTOList(List<PlaceDTO> placeDTOList) {
		this.placeDTOList = placeDTOList;
	}

	public List<WallDTO> getWallDTOList() {
		return wallDTOList;
	}

	public void setWallDTOList(List<WallDTO> wallDTOList) {
		this.wallDTOList = wallDTOList;
	}

	public List<ComboDTO> getComboDTOList() {
		return ComboDTOList;
	}

	public void setComboDTOList(List<ComboDTO> comboDTOList) {
		ComboDTOList = comboDTOList;
	}

	public List<CountryDTO> getCountryDTOList() {
		return CountryDTOList;
	}

	public void setCountryDTOList(List<CountryDTO> countryDTOList) {
		CountryDTOList = countryDTOList;
	}

	

}
