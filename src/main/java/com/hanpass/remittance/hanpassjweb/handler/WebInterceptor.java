package com.hanpass.remittance.hanpassjweb.handler;

import org.apache.tomcat.util.codec.binary.Base64;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *  Created by sonwooyoung on 2018-08-27.
 *
 *  discription : exchange 초기 접속시 accessToken 을 발급받는다.
 */
@Component
public class WebInterceptor extends HandlerInterceptorAdapter {

	@Value("${at.username}")
	private String userName;
	@Value("${at.password}")
	private String passWord;
	@Value("${at.RequestUrl}")
	private String RequestUrl;
	@Value("${at.body}")
	private String body;

	@Autowired
	RestTemplate restTemplate;

	private Logger logger = LoggerFactory.getLogger(WebInterceptor.class);

	// 컨트롤러에서 맵핑하기 전에 access_token 을 발급 받는다.
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler){
		logger.info("================ Before Method");
		logger.info("Request access token");
		System.out.println(request.getSession(true));
		//if(request.getSession(true)) {

			final String username = userName;
			final String password = passWord;
			HttpHeaders header = getHttpHeader(username, password);
			// request url
			String access_token_url = RequestUrl;
			// create request body
			String input = body;
			HttpEntity<String> entityrequest = new HttpEntity<String>(input, header);
			ResponseEntity<String> token = restTemplate.exchange(access_token_url, HttpMethod.POST, entityrequest, String.class);
			try {
				JSONObject jsonObject = new JSONObject(token.getBody());
				HttpSession session = request.getSession(true);

				session.setAttribute("access_token", jsonObject.getString("access_token"));
				session.setAttribute("token_type", jsonObject.getString("token_type"));
				session.setAttribute("expires_in", jsonObject.getString("expires_in"));
				session.setMaxInactiveInterval(Integer.parseInt(jsonObject.getString("expires_in")));
				session.setAttribute("scope", jsonObject.getString("scope"));
				session.setAttribute("admin_name", jsonObject.getString("admin_name"));

				logger.info(jsonObject.getString("access_token"));

			} catch (JSONException e) {
				e.printStackTrace();
			}
		//}

		return true;
	}

	//추가 handler 를 위한 내용
	/*@Override
	public void postHandle( HttpServletRequest request,
	                        HttpServletResponse response,
	                        Object handler,
	                        ModelAndView modelAndView) {
		logger.info("================ Method Executed");
	}*/

	/*@Override
	public void afterCompletion(HttpServletRequest request,
	                            HttpServletResponse response,
	                            Object handler,
	                            Exception ex) {
		logger.info("================ Method Completed");
	}*/

	public HttpHeaders getHttpHeader(String username, String password){
		HttpHeaders headers = new HttpHeaders();
		String credentials = username + ":" + password;
		byte[] plainCredsBytes = credentials.getBytes();
		byte[] base64CredsBytes = Base64.encodeBase64(plainCredsBytes);
		String base64Creds = new String(base64CredsBytes);
		headers.set("Content-Type","application/x-www-form-urlencoded");
		headers.set("Authorization", "Basic "+ base64Creds);

		return headers;
	}
}
