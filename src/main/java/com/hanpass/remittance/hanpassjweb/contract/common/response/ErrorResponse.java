/**
 * 
 */
package com.hanpass.remittance.hanpassjweb.contract.common.response;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonAutoDetect
public class ErrorResponse {
	
	@JsonProperty(required = true, value = "id")
	private long id;
	
	@JsonProperty(required = true, value = "code")
	private String code;
	
	@JsonProperty(required = true, value = "description")
	private String description;

	@JsonInclude(Include.NON_EMPTY)
	@JsonProperty(required = false, value = "ex_message")
	private String exMessage;

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the exMessage
	 */
	public String getExMessage() {
		return exMessage;
	}

	/**
	 * @param exMessage the exMessage to set
	 */
	public void setExMessage(String exMessage) {
		this.exMessage = exMessage;
	}
	
}
