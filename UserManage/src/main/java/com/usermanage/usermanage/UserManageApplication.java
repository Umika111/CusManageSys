package com.usermanage.usermanage;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@MapperScan(basePackages = "com.usermanage.usermanage.dao")
@EnableSwagger2
public class UserManageApplication {

	public static void main(String[] args) {
		SpringApplication.run(UserManageApplication.class, args);
	}

}
