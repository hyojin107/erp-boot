package com.ddit.erpboot.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.context.WebApplicationContext;

@RequiredArgsConstructor
@RequestMapping("/")
@Controller
public class LoginController {
    private static final long serialVersionUID = 1L;

    private final WebApplicationContext container;

    @GetMapping
    public String loginPage(Authentication auth) {
        if(auth!=null && auth.isAuthenticated())
            return "redirect:/main";
        else
            return "loginForm/login";
    }

}
