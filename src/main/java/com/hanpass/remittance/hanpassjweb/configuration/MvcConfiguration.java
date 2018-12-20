package com.hanpass.remittance.hanpassjweb.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfiguration implements WebMvcConfigurer
{

	@Autowired
	@Qualifier(value = "webInterceptor")
	private HandlerInterceptor interceptor;

	//환전페이지 access_token 발급을 위한 interceptor 추가
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(interceptor).addPathPatterns("/exchange");
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		//registry.addResourceHandler("/resources/**").addResourceLocations("classpath:/resources/");
		registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
		registry.addResourceHandler("/kr/static/**").addResourceLocations("classpath:/static/");
	}

	//초기 페이지 설정
	@Override
	public void addViewControllers(ViewControllerRegistry registry){
		registry.addViewController("/").setViewName("forward:kr/product");
	}





	/*public String requestAccessToken(String username, String password, String oauthaurl) {
		log.info("Request access token");
		String token = null;

		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);



		UriComponentsBuilder builder = UriComponentsBuilder.fromUriString(oauthaurl)
				.queryParam("grant_type", "password")
				.queryParam("username", username)
				.queryParam("password", password);

		URI myUri=builder.buildAndExpand().toUri();

		HttpEntity<?> request = new HttpEntity<>(headers);
		ResponseEntity<String> rs = restTemplate.exchange(myUri, HttpMethod.POST, request,String.class);
		JSONObject jsonObject = new JSONObject(rs.getBody());
		log.info(jsonObject.getString("access_token"));

		//get access_token from jsonObject here

		return token;

	}
*/



}