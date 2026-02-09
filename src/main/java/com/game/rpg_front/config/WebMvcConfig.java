package com.game.rpg_front.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    private final DevAutoLoginInterceptor devAutoLoginInterceptor;

    public WebMvcConfig(DevAutoLoginInterceptor devAutoLoginInterceptor) {
        this.devAutoLoginInterceptor = devAutoLoginInterceptor;
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(devAutoLoginInterceptor);
    }
}