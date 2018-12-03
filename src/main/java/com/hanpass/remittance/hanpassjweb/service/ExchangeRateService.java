package com.hanpass.remittance.hanpassjweb.service;

import org.hibernate.service.spi.ServiceException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by sonwooyoung on 2018-11-12.
 */
public interface ExchangeRateService {

	public HashMap ExchangeRate()throws ServiceException;
}
