package com.smarthealth.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class XDevicesController {
    @GetMapping("/")
    public String list(){
        return "xDevices";
    }
}
