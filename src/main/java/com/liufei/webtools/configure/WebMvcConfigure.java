package com.liufei.webtools.configure;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author:liufei
 * @create_time:2018/7/18
 */
//@Configuration
public class WebMvcConfigure implements WebMvcConfigurer {

  @Override
  public void addResourceHandlers(ResourceHandlerRegistry registry) {
    registry.addResourceHandler("/assets/**").addResourceLocations("/WEB-INF/assets/");
  }
}
