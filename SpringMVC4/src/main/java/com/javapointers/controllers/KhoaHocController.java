package com.javapointers.controllers;

import com.javapointers.models.IKhoaHoc;
import com.javapointers.models.KhoaHoc;
import jdk.nashorn.internal.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class KhoaHocController {

    @Autowired
    private IKhoaHoc khoaHoc;

    @RequestMapping(value="/khoa-hoc", method = RequestMethod.GET)
    public String KhoaHoc(){
        return "khoahoc";
    }

    @RequestMapping(value="/danh-sach-khoa-hoc", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public @ResponseBody
    List DanhSachKhoaHoc(){
        List objListResult = khoaHoc.LayDanhSachKhoaHoc();
        return objListResult;
    }

    @RequestMapping(value="/them-khoa-hoc", method = RequestMethod.GET)
    public String ThemKhoaHoc(HttpSession session, HttpServletResponse response, HttpServletRequest request){
        return "themkhoahoc";
    }

    @RequestMapping(value="/them-khoa-hoc", method = RequestMethod.POST)
    public String ThemKhoaHoc(@RequestParam(value = "tenKhoaHoc") String tenKhoaHoc, @RequestParam(value = "thoiGianBatDau") String thoiGianBatDau, @RequestParam(value = "thoiGianKetThuc") String thiGianKeThuc, @RequestParam(value = "diaDiem") String diaDiem, @RequestParam(value = "duToan") String duToan, HttpSession session, HttpServletResponse response, HttpServletRequest request){
        return "themkhoahoc";
    }

    @RequestMapping(value="/cap-nhat-khoa-hoc", method = RequestMethod.GET)
    public String CapNhatKhoaHoc(HttpSession session, HttpServletResponse response, HttpServletRequest request){
        return "capnhatkhoahoc";
    }

    @RequestMapping(value="/cap-nhat-khoa-hoc", method = RequestMethod.PUT)
    public String CapNhatKhoaHoc(@RequestParam(value = "maKhoaHoc") String maKhoaHoc,@RequestParam(value = "tenKhoaHoc") String tenKhoaHoc, @RequestParam(value = "thoiGianBatDau") String thoiGianBatDau, @RequestParam(value = "thoiGianKetThuc") String thiGianKeThuc, @RequestParam(value = "diaDiem") String diaDiem, @RequestParam(value = "duToan") String duToan, HttpSession session, HttpServletResponse response, HttpServletRequest request){
        return "SUCCESSED";
    }

    @RequestMapping(value="/xoa-khoa-hoc", method = RequestMethod.DELETE)
    public String CapNhatKhoaHoc(@RequestParam(value = "maKhoaHoc") String maKhoaHoc, HttpSession session, HttpServletResponse response, HttpServletRequest request){
        return "SUCCESSED";
    }
}
