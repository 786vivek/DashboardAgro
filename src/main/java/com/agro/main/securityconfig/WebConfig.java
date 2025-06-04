package com.agro.main.securityconfig;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.*;

@Configuration
public class WebConfig {

    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/**")
                       .allowedOrigins("http://localhost:3000")  // React origin.
                        //.allowedOrigins("http://localhost:8080")  // Spring Boot origin.
                        .allowedOrigins("http://localhost:8081")  // Production React native origin.
                        .allowedMethods("GET", "POST", "PUT", "DELETE")
                        .allowedHeaders("*");
            }
        };
    }
}
