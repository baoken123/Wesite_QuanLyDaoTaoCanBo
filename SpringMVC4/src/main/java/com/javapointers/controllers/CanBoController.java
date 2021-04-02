package com.javapointers.controllers;

import com.javapointers.models.ICanBo;
import com.javapointers.models.IKhoaHoc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CanBoController {
    @Autowired
    ICanBo canBo;

    @RequestMapping(value="/can-bo", method = RequestMethod.GET)
    public String CanBo(){
        return "canbo";
    }

}
