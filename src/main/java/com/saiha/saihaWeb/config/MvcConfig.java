package com.saiha.saihaWeb.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.http.CacheControl;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.concurrent.TimeUnit;

@Configuration
@Slf4j
@RequiredArgsConstructor
public class MvcConfig implements WebMvcConfigurer {

    private final ObjectMapper objectMapper;

    @Profile("etc")
    @Configuration
    public static class EtcMvcConfiguration implements WebMvcConfigurer {
        public void addResourceHandlers(ResourceHandlerRegistry registry) {
            CacheControl cacheControl = CacheControl.maxAge(10, TimeUnit.DAYS);

            registry.addResourceHandler("/fileImg/**")
                    .addResourceLocations("file:images/")
                    .setCacheControl(cacheControl);
        }
    }

    @Profile("prod")
    @Configuration
    public static class ProdMvcConfiguration implements WebMvcConfigurer {
        public void addResourceHandlers(ResourceHandlerRegistry registry) {
            CacheControl cacheControl = CacheControl.maxAge(10, TimeUnit.MINUTES);
            CacheControl cacheControl2 = CacheControl.maxAge(10, TimeUnit.DAYS);

            registry.addResourceHandler("/img/**")
                    .addResourceLocations("classpath:/static/img/")
                    .setCacheControl(cacheControl);

            registry.addResourceHandler("/css/**")
                    .addResourceLocations("classpath:/static/css/")
                    .setCacheControl(cacheControl);

            registry.addResourceHandler("/fonts/**")
                    .addResourceLocations("classpath:/static/fonts/")
                    .setCacheControl(cacheControl);

            registry.addResourceHandler("/js/**")
                    .addResourceLocations("classpath:/static/js/")
                    .setCacheControl(cacheControl);

            // 추후 서버 환경 고려 path 설정
            registry.addResourceHandler("/fileImg/**")
                    .addResourceLocations(" ")
                    .setCacheControl(cacheControl2);
        }
    }

}
