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

	private List<WalletDTO> walletDTOList;

	private List<CountryDTO> CountryDTOList;

	/**
	 * @return the wallPage
	 */
	public int getWallPage() {
		return wallPage;
	}

	/**
	 * @param wallPage
	 *            the wallPage to set
	 */
	public void setWallPage(int wallPage) {
		this.wallPage = wallPage;
	}

	/**
	 * @return the advertisementDTOList
	 */
	public List<AdvertisementDTO> getAdvertisementDTOList() {
		return advertisementDTOList;
	}

	/**
	 * @param advertisementDTOList
	 *            the advertisementDTOList to set
	 */
	public void setAdvertisementDTOList(
			List<AdvertisementDTO> advertisementDTOList) {
		this.advertisementDTOList = advertisementDTOList;
	}

	/**
	 * @return the eventDTOList
	 */
	public List<EventDTO> getEventDTOList() {
		return eventDTOList;
	}

	/**
	 * @param eventDTOList
	 *            the eventDTOList to set
	 */
	public void setEventDTOList(List<EventDTO> eventDTOList) {
		this.eventDTOList = eventDTOList;
	}

	/**
	 * @return the placeDTOList
	 */
	public List<PlaceDTO> getPlaceDTOList() {
		return placeDTOList;
	}

	/**
	 * @param placeDTOList
	 *            the placeDTOList to set
	 */
	public void setPlaceDTOList(List<PlaceDTO> placeDTOList) {
		this.placeDTOList = placeDTOList;
	}

	/**
	 * @return the wallDTOList
	 */
	public List<WallDTO> getWallDTOList() {
		return wallDTOList;
	}

	/**
	 * @param wallDTOList
	 *            the wallDTOList to set
	 */
	public void setWallDTOList(List<WallDTO> wallDTOList) {
		this.wallDTOList = wallDTOList;
	}

	/**
	 * @return the walletDTOList
	 */
	public List<WalletDTO> getWalletDTOList() {
		return walletDTOList;
	}

	/**
	 * @param walletDTOList
	 *            the walletDTOList to set
	 */
	public void setWalletDTOList(List<WalletDTO> walletDTOList) {
		this.walletDTOList = walletDTOList;
	}

	public List<CountryDTO> getCountryDTOList() {
		return CountryDTOList;
	}

	public void setCountryDTOList(List<CountryDTO> countryDTOList) {
		CountryDTOList = countryDTOList;
	}

}
