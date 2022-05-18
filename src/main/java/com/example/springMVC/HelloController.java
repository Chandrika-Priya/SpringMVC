package com.example.springMVC;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HelloController {

    @RequestMapping("/showForm")
    public String showForm(){
        return "hello-form";
    }

    @RequestMapping("/processForm")
    public  String processForm(){
        return "helloworld";
    }

    @RequestMapping("/processFormV2")
    public String letsPrint(HttpServletRequest httpServletRequest, Model model){
        String name = httpServletRequest.getParameter("studentName");
        System.out.println(name);
        name = name.toUpperCase();
        String result = "Yo!" + name;
        model.addAttribute("message",result);
        return "helloworld";
    }

    @RequestMapping("/processFormV3")
    public String letsPrint(@RequestParam("studentName") String name,Model model){
        name = name.toUpperCase();
        String result = "Yo!" + name;
        model.addAttribute("message",result);
        return "helloworld";
    }
}
