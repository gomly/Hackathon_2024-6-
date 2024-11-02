package org.example.studentbud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    @RequestMapping("/studentbud")  // Matching lowercase path
    public String greetWorld(Model model) {
        model.addAttribute("name", "World");
        return "greeting";
    }
}