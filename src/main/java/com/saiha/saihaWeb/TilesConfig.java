package com.saiha.saihaWeb;

/*
 * @Configuration: 빈 설정을 담당하는 클래스가 된다.
 * 이 클래스 안에서 @Bean 어노테이션이 동봉된 메소드를 선언하면,
 * 그 메소드를 통해 스프링 빈을 정의하고 생명주기를 설정하게 된다.
 * 자바 기반의 config가 싫다면 XML 쓰면 된다.
 * (Boot에선 보통 어노테이션 기반으로 하게됨.)
 */
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

@Configuration
public class TilesConfig {
    @Bean//소문자로 시작하는 메서드명이 bean id가 된다
    public UrlBasedViewResolver tilesViewResolver() {
        UrlBasedViewResolver tilesViewResolver = new UrlBasedViewResolver();
        tilesViewResolver.setViewClass(TilesView.class);
        return tilesViewResolver;
    }

    @Bean
    public TilesConfigurer tilesConfigurer() {
        TilesConfigurer tilesConfigurer = new TilesConfigurer();
        String[] defs = {"classpath*:/tiles-config.xml" };
        tilesConfigurer.setDefinitions(defs);
        return tilesConfigurer;
    }

}
