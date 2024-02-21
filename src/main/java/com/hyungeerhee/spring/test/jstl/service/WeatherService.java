package com.hyungeerhee.spring.test.jstl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyungeerhee.spring.test.jstl.domain.Weather;
import com.hyungeerhee.spring.test.jstl.repository.WeatherHistoryRepository;

@Service
public class WeatherService {
	
	@Autowired
	private WeatherHistoryRepository weatherHistoryRepository;
	
	public List<Weather> getWeatherHistory() {
		List<Weather> weatherHistory = weatherHistoryRepository.selectWeatherHistory();
		
		return weatherHistory;
	}
	
	
	

}
