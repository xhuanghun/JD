package com.JD.web.app;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginInController {

	Logger logger = Logger.getLogger(LoginInController.class);

	@RequestMapping(value = "/login_in")
	public Map<String, Object> loginIn() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", "李文浩");
		map.put("age", 23);
		logger.info("测试日志info");
		logger.debug("测试日志debug");
		logger.error("测试日志error");
		return map;
	}

}
