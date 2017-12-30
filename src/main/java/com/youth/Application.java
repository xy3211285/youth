package com.youth;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@EnableAutoConfiguration
@ComponentScan(basePackages = "com.youth")
@Configuration
@MapperScan("com.youth.dao")
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class);
    }

}
