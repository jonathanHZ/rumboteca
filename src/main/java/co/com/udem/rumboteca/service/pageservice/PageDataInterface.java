package co.com.udem.rumboteca.service.pageservice;

import co.com.udem.rumboteca.model.PageDataDTO;

/**
 * Get page data from database
 * @author Milton
 */
public interface PageDataInterface {

  /**
   * Get page data
   * @return
   */
  public PageDataDTO getPageDataDTO();
  
  /**
   * Get page data for page number
   * @return
   */
  public PageDataDTO getPageDataDTO(int page);
}
