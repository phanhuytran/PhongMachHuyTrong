package com.ndt.configs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan(basePackages = "com.ndt")
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin().loginPage("/taikhoan/login")
                .usernameParameter("username")
                .passwordParameter("password");
        http.formLogin()
                .defaultSuccessUrl("/")
                .failureUrl("/login?error");
        http.logout()
                .logoutSuccessUrl("/taikhoan/login");
        http.exceptionHandling()
                .accessDeniedPage("/login?accessDenied");
        http.authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("/admin").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/doctors").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/doctors/detail/**").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/doctors/**").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/employees").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/employees/detail/**").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/employees/**").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/patients").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/patients/details/**").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/patients/**").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/medicines").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/medicines/detail/**").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/medicines/**").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/prescription").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/prescription/detail/**").access("hasAnyRole('ROLE_ADMIN', 'ROLE_BACSI', 'ROLE_NHANVIEN')")
                .antMatchers("/prescription/**").access("hasRole('ROLE_ADMIN')");
        http.csrf().disable();
    }
}