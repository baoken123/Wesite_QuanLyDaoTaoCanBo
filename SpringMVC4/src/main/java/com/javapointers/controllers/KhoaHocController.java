package com.javapointers.controllers;

import com.javapointers.models.CapNhatKhoaHoc;
import com.javapointers.models.IKhoaHoc;
import com.javapointers.models.KhoaHoc;
import com.javapointers.models.TaoKhoaHoc;
import jdk.nashorn.internal.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class KhoaHocController {

    @Autowired
    IKhoaHoc khoaHoc;

    @RequestMapping(value="/khoa-hoc", method = RequestMethod.GET)
    public String KhoaHoc(Model model){
        List objListResult = khoaHoc.LayDanhSachKhoaHoc();
        model.addAttribute("ListObject", objListResult);
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
    public String ThemKhoaHoc(@RequestParam(value = "tenKhoaHoc") String tenKhoaHoc, @RequestParam(value = "thoiGianBatDau") String thoiGianBatDau, @RequestParam(value = "thoiGianKetThuc") String thoiGianKetThuc, @RequestParam(value = "diaDiem") String diaDiem, @RequestParam(value = "duToan") String duToan, HttpSession session, HttpServletResponse response, HttpServletRequest request){
        try {
            String maKhoaHoc = UUID.randomUUID().toString();

            String startDateString = "06/27/2007";
            DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
            Date thoiGianBatDauParse;
            thoiGianBatDauParse = df.parse(thoiGianBatDau);

            Date thoiGianKetThucParse;
            thoiGianKetThucParse = df.parse(thoiGianKetThuc);

            if (khoaHoc.TaoKhoaHoc(new TaoKhoaHoc(maKhoaHoc, tenKhoaHoc, thoiGianBatDauParse, thoiGianKetThucParse, diaDiem, Integer.parseInt(duToan))) > 0) {
                return "SUCCESS";
            } else {
                return "FAIL";
            }

        }catch(ParseException e){
            return "FAIL";
        }
    }

    @RequestMapping(value="/cap-nhat-khoa-hoc", method = RequestMethod.GET)
    public String CapNhatKhoaHoc(HttpSession session, HttpServletResponse response, HttpServletRequest request){
        return "capnhatkhoahoc";
    }

    @RequestMapping(value="/cap-nhat-khoa-hoc", method = RequestMethod.PUT)
    public String CapNhatKhoaHoc(@RequestParam(value = "maKhoaHoc") String maKhoaHoc,@RequestParam(value = "tenKhoaHoc") String tenKhoaHoc, @RequestParam(value = "thoiGianBatDau") String thoiGianBatDau, @RequestParam(value = "thoiGianKetThuc") String thoiGianKetThuc, @RequestParam(value = "diaDiem") String diaDiem, @RequestParam(value = "duToan") String duToan, HttpSession session, HttpServletResponse response, HttpServletRequest request){
        try {

            String startDateString = "06/27/2007";
            DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
            Date thoiGianBatDauParse;
            thoiGianBatDauParse = df.parse(thoiGianBatDau);

            Date thoiGianKetThucParse;
            thoiGianKetThucParse = df.parse(thoiGianKetThuc);

            if (khoaHoc.CapNhatKhoaHoc(new CapNhatKhoaHoc(maKhoaHoc, tenKhoaHoc, thoiGianBatDauParse, thoiGianKetThucParse, diaDiem, Integer.parseInt(duToan))) > 0) {
                return "SUCCESS";
            } else {
                return "FAIL";
            }

        }catch(ParseException e){
            return "FAIL";
        }
    }

    @RequestMapping(value="/xoa-khoa-hoc", method = RequestMethod.DELETE)
    public String CapNhatKhoaHoc(@RequestParam(value = "maKhoaHoc") String maKhoaHoc, HttpSession session, HttpServletResponse response, HttpServletRequest request){
        if (khoaHoc.XoaKhoaHoc(maKhoaHoc) > 0) {
            return "SUCCESS";
        } else {
            return "FAIL";
        }
    }
}
