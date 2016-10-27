package com.restwebchat.configuration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.request.RequestContextListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

/**
 * Created with IntelliJ IDEA.
 * User: theon
 * Date: 8/24/16
 * Time: 9:53 AM
 * To change this template use File | Settings | File Templates.
 */
public class CustomWebApplicationInitializer implements WebApplicationInitializer {


    @Override
    public void onStartup(ServletContext servletContext)
            throws ServletException {

        // javaconfig based spring context bootstrap
        final AnnotationConfigWebApplicationContext root = new AnnotationConfigWebApplicationContext();
        root.register(ApplicationConfiguration.class);
        servletContext.addListener(new ContextLoaderListener(root));


        // register destruction calllbacks properly with JSF
        servletContext.addListener(new RequestContextListener());
        // spring security filter
        // FilterRegistration.Dynamic securityFilter =
        // servletContext.addFilter("securityFilter", new
        // DelegatingFilterProxy(BeanIds.SPRING_SECURITY_FILTER_CHAIN));
        // securityFilter.addMappingForUrlPatterns(null, false, "/*");

        // Register and map the standard dispatcher servlet
        ServletRegistration.Dynamic dispatcher = servletContext.addServlet(
                "dispatcher", new DispatcherServlet(root));
        dispatcher.setLoadOnStartup(1);
//        dispatcher.addMapping("/*");
        dispatcher.addMapping("/RestWebChat/*");

//        dispatcher.addMapping("/*");

    }

//    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        registry.addResourceHandler("/WEB-INF/resources/**").addResourceLocations("/WEB-INF/resources/**");
//    }


}
