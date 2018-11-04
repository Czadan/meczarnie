package com.sda.task.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

    @RequestMapping("/start")
    public ModelAndView hello(ModelAndView modelAndView) {
        modelAndView.addObject("helloMessage", "Witam JSP");
        modelAndView.setViewName("hello");
        return modelAndView;
    }
}
