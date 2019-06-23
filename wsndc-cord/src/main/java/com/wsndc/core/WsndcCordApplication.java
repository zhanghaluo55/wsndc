package com.wsndc.core;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@SpringBootApplication
public class WsndcCordApplication {

	public static void main(String[] args) {
		SpringApplication.run(WsndcCordApplication.class, args);
	}

}
