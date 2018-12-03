package com.hanpass.remittance.hanpassjweb.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.http.client.ClientHttpRequestFactory;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class RestTemplateConfig{

	/*@Bean
	public ClientHttpRequestFactory clientHttpRequestFactory() {
		int timeout = 5000;
		HttpComponentsClientHttpRequestFactory clientHttpRequestFactory = new HttpComponentsClientHttpRequestFactory();
		clientHttpRequestFactory.setConnectTimeout(timeout);
		clientHttpRequestFactory.setConnectionRequestTimeout(timeout);
		clientHttpRequestFactory.setReadTimeout(timeout);
		return clientHttpRequestFactory;
	}*/

	@Bean
	public RestTemplate restTemplate() {

		return new RestTemplate();
	}



}
