package org.spring.cloud.feign.consumer;

import org.spring.cloud.feigh.api.service.PersonService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;

/**
 * Person Client 应用程序 - 启动类
 */
@SpringBootApplication
@EnableEurekaClient
@EnableFeignClients(clients= {PersonService.class}) // 指定需要被Feign代理的客户端接口
public class PersonClientApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(PersonClientApplication.class, args);
	}
	
}
