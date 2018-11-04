package com.sda.task.controller;

import com.sda.task.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TaskController {

    @Autowired
    private TaskService taskService;

    @RequestMapping("/")
    public ModelAndView taskList(ModelAndView modelAndView) {
        modelAndView.addObject("tasks", taskService.getTask());
        modelAndView.setViewName("taskList");
        return modelAndView;
    }

    @RequestMapping("/task")
    public ModelAndView taskDetails (ModelAndView modelAndView, @RequestParam("id") Long id){
        modelAndView.addObject("task", taskService.getTask(id));
        modelAndView.setViewName("taskDetails");
        return modelAndView;

    }

}
