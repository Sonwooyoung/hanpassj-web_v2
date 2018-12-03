/**
 * 
 */
package com.hanpass.remittance.hanpassjweb.handler;

import com.hanpass.remittance.hanpassjweb.contract.common.response.ErrorResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

/**
 * 서비스, 프레임워크 예외발생시 이를 처리하는 사용자 지정 예외 핸들러 
 * 
 * @author sjahn
 *
 */
@SuppressWarnings("deprecation")
@ControllerAdvice
public class HanpassServiceExceptionHandler extends ResponseEntityExceptionHandler {

	private static final Logger logger = LoggerFactory.getLogger(HanpassServiceExceptionHandler.class);

	/**
	 * 서비스 예외 핸들러
	 * 
	 * @param ex
	 * @param request
	 * @return
	 */
	@ExceptionHandler(Exception.class)
	public ResponseEntity<Object> handleServiceException(Exception ex, WebRequest request) {
		ex.printStackTrace();
		ErrorResponse errorResponse = new ErrorResponse();
		errorResponse.setCode(HttpStatus.INTERNAL_SERVER_ERROR + "'");
		errorResponse.setDescription("Internal ser");
		errorResponse.setExMessage("Server internal error. Contact manager (" + ex.getMessage() + ")");
		errorResponse.setId(500L);
		
		HttpHeaders httpHeaders = new HttpHeaders();
		return handleExceptionInternal(ex, errorResponse, httpHeaders, HttpStatus.INTERNAL_SERVER_ERROR, request);
	}
	
	/**
	 * 서비스 예외 핸들러
	 * 
	 * @param ex
	 * @param request
	 * @return
	 */
	@ExceptionHandler(RuntimeException.class)
	public ResponseEntity<Object> handleRuntimeException(Exception ex, WebRequest request) {
		ex.printStackTrace();
		ErrorResponse errorResponse = new ErrorResponse();
		errorResponse.setCode(HttpStatus.INTERNAL_SERVER_ERROR + "'");
		errorResponse.setDescription("Internal ser");
		errorResponse.setExMessage("Server internal error. Contact manager (" + ex.getMessage() + ")");
		errorResponse.setId(500L);
		
		HttpHeaders httpHeaders = new HttpHeaders();
		return handleExceptionInternal(ex, errorResponse, httpHeaders, HttpStatus.INTERNAL_SERVER_ERROR, request);
	}
	
	
	
}
