/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javapointers.controllers;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javapointers.models.Account;
import com.javapointers.models.IUser;
import com.javapointers.session.ISessionFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @author Tuan
 */
@Controller
public class NguoiDungController {

    @Autowired
    ISessionFilter SessionFilter;

    @Autowired
    IUser User;

    public static boolean isLocalHost;

    @RequestMapping(value = "/")
    public String Index(ModelMap mm, HttpSession session) {
        if (SessionFilter.checkSession(session)) {
            return "khoahoc";
        }
        return "dangnhap";
    }

    @RequestMapping(value = "/dang-nhap", produces = "text/html; charset=utf-8", method = RequestMethod.POST)
    public @ResponseBody
    String Login(@RequestParam(value = "tenDangNhap") String tenDangNhap, @RequestParam(value = "matKhau") String matKhau, HttpSession session, HttpServletResponse response, HttpServletRequest request) {
        Account objUser = new Account();
        objUser.ganTenDangNhap(tenDangNhap);
        objUser.ganMatKhau(tienich.tienich.encodePass(matKhau).trim());
        if (objUser != null) {
            List<Map<String, Object>> list = User.dangNhap(objUser);
            if (!list.isEmpty()) {
                return "SUCCESS";
            }
        }
        //session.setAttribute("Sess_Err", "loi_dangnhap");
        return "FAIL";
    }

    @RequestMapping(value = "/dang-xuat")
    public String logout(HttpSession session) {
        session.invalidate();
        return "/";
    }
}
