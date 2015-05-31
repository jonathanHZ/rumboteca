package co.com.udem.rumboteca.service.restclient;

import java.lang.reflect.Type;
import java.util.List;

import javax.ws.rs.core.MediaType;

import co.com.udem.rumboteca.model.CityDTO;
import co.com.udem.rumboteca.model.ComboDTO;
import co.com.udem.rumboteca.model.CountryDTO;
import co.com.udem.rumboteca.model.EventDTO;
import co.com.udem.rumboteca.model.PlaceDTO;
import co.com.udem.rumboteca.persistence.entity.Country;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;



public class RestfulRumbotecaWSClient {
	
	Gson gson = new Gson();
	Client client = Client.create();
	WebResource webResource = null;
	ClientResponse response = null;
	
	public List<EventDTO> getEventTop(){
		try {
			String url = "http://localhost:8080/rumboteca_restful/rest/Api/getEventTop";
            webResource = client.resource(url);
            response = webResource.accept("application/json").get(ClientResponse.class);

            if (response.getStatus() != 200)
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());

            String output = response.getEntity(String.class);
            
            Type listType= new TypeToken<List<EventDTO>>() {}.getType();
            List<EventDTO> eventDTOs = gson.fromJson(output, listType);
            
            return eventDTOs;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	public List<EventDTO> getEventByCity(){
		try {
			String url = "http://localhost:8080/rumboteca_restful/rest/Api/getEventCity/1";
            webResource = client.resource(url);
            response = webResource.accept("application/json").get(ClientResponse.class);

            if (response.getStatus() != 200)
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());

            String output = response.getEntity(String.class);
            
            Type listType= new TypeToken<List<EventDTO>>() {}.getType();
            List<EventDTO> eventDTOs = gson.fromJson(output, listType);
            
            return eventDTOs;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	public List<EventDTO> getEventByState(){
		try {
			String url = "http://localhost:8080/rumboteca_restful/rest/Api/getEventState/1";
            webResource = client.resource(url);
            response = webResource.accept("application/json").get(ClientResponse.class);

            if (response.getStatus() != 200)
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());

            String output = response.getEntity(String.class);
            
            Type listType= new TypeToken<List<EventDTO>>() {}.getType();
            List<EventDTO> eventDTOs = gson.fromJson(output, listType);
            
            for (EventDTO eventDTO : eventDTOs) {
				System.out.println(eventDTO.getTittle());
			}
            return eventDTOs;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	public List<EventDTO> getEventByCountry(){
		try {
			String url = "http://localhost:8080/rumboteca_restful/rest/Api/getEventCountry/1";
            webResource = client.resource(url);
            response = webResource.accept("application/json").get(ClientResponse.class);

            if (response.getStatus() != 200)
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());

            String output = response.getEntity(String.class);
            
            Type listType= new TypeToken<List<EventDTO>>() {}.getType();
            List<EventDTO> eventDTOs = gson.fromJson(output, listType);
            
            return eventDTOs;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	public List<ComboDTO> getCombos(){
		try {
			String url = "http://localhost:8080/rumboteca_restful/rest/Api/getCombos";
            webResource = client.resource(url);
            response = webResource.accept("application/json").get(ClientResponse.class);

            if (response.getStatus() != 200)
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());

            String output = response.getEntity(String.class);
            
            Type listType= new TypeToken<List<ComboDTO>>() {}.getType();
            List<ComboDTO> comboDTOs = gson.fromJson(output, listType);
            
            return comboDTOs;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	public List<PlaceDTO> getPlaceDTOByCity(){
		try {
			String url = "http://localhost:8080/rumboteca_restful/rest/Api/getPlaceCity/1";
            webResource = client.resource(url);
            response = webResource.accept("application/json").get(ClientResponse.class);

            if (response.getStatus() != 200)
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());

            String output = response.getEntity(String.class);
            
            Type listType= new TypeToken<List<PlaceDTO>>() {}.getType();
            List<PlaceDTO> placeDTOs = gson.fromJson(output, listType);
            
            return placeDTOs;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	public List<PlaceDTO> getPlaceDTOByState(){
		try {
			String url = "http://localhost:8080/rumboteca_restful/rest/Api/getPlaceState/1";
            webResource = client.resource(url);
            response = webResource.accept("application/json").get(ClientResponse.class);

            if (response.getStatus() != 200)
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());

            String output = response.getEntity(String.class);
            
            Type listType= new TypeToken<List<PlaceDTO>>() {}.getType();
            List<PlaceDTO> placeDTOs = gson.fromJson(output, listType);
            
            return placeDTOs;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	public List<PlaceDTO> getPlaceDTOByCountry(){
		try {
			String url = "http://localhost:8080/rumboteca_restful/rest/Api/getPlaceCountry/1";
            webResource = client.resource(url);
            response = webResource.accept("application/json").get(ClientResponse.class);

            if (response.getStatus() != 200)
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());

            String output = response.getEntity(String.class);
            
            Type listType= new TypeToken<List<PlaceDTO>>() {}.getType();
            List<PlaceDTO> placeDTOs = gson.fromJson(output, listType);
                      
            return placeDTOs;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	public List<PlaceDTO> getPlaceDTOTop(){
		try {
			String url = "http://localhost:8080/rumboteca_restful/rest/Api/getPlaceTop";
            webResource = client.resource(url);
            response = webResource.accept("application/json").get(ClientResponse.class);

            if (response.getStatus() != 200)
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());

            String output = response.getEntity(String.class);
            
            Type listType= new TypeToken<List<PlaceDTO>>() {}.getType();
            List<PlaceDTO> placeDTOs = gson.fromJson(output, listType);
            
            return placeDTOs;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	public List<CityDTO> getCityDTO(){
		try {
			String url = "http://localhost:8080/rumboteca_restful/rest/Api/getCity";
            webResource = client.resource(url);
            response = webResource.accept("application/json").get(ClientResponse.class);

            if (response.getStatus() != 200)
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());

            String output = response.getEntity(String.class);
            
            Type listType= new TypeToken<List<CityDTO>>() {}.getType();
            List<CityDTO> CityDTOs = gson.fromJson(output, listType);
            
            return CityDTOs;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	public List<CountryDTO> getCountryDTO(){
		try {
			String url = "http://localhost:8080/rumboteca_restful/rest/Api/getCountry";
            webResource = client.resource(url);
            response = webResource.accept("application/json").get(ClientResponse.class);

            if (response.getStatus() != 200)
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());

            String output = response.getEntity(String.class);
            
            Type listType= new TypeToken<List<CountryDTO>>() {}.getType();
            List<CountryDTO> CountryDTOs = gson.fromJson(output, listType);
            
            return CountryDTOs;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
}
