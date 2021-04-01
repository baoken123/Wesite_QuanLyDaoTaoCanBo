package com.javapointers.controllers;

import com.javapointers.models.CapNhatLopHocVienObject;
import com.javapointers.models.ILopHocVien;
import com.javapointers.models.ThemLopHocVienObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.UUID;

@Controller
public class LopHocVienController {

    @Autowired
    ILopHocVien lopHocVien;

    @RequestMapping(value="/hoc-vien", method = RequestMethod.GET)
    public String index(){
        return "lophocvien";
    }

    @RequestMapping(value="/them-hoc-vien", method = RequestMethod.POST)
    public String ThemLopHocVien(@RequestParam("tenLopHocVien") String tenLopHocVien, @RequestParam("soLuong") int soLuong, @RequestParam("giangVien") String giangVien, @RequestParam("maKhoaHoc")String maKhoaHoc){
        String maLopHocVien= UUID.randomUUID().toString();
        if(lopHocVien.ThemLopHocVien(new ThemLopHocVienObject(maLopHocVien, tenLopHocVien, soLuong, giangVien, maKhoaHoc))>1){
            return "SUCCESS";
        }
        else{
            return "FAIL";
        }
    }

    @RequestMapping(value="/cap-nhat-hoc-vien", method = RequestMethod.GET)
    public String CapNhatHocVien(){
        return "capnhathocvien";
    }

    @RequestMapping(value="/cap-nhat-hoc-vien", method = RequestMethod.PUT)
    public String CapNhatLopHocVien(@RequestParam("maLopHocVien") String maLopHocVien,@RequestParam("tenLopHocVien") String tenLopHocVien, @RequestParam("soLuong") int soLuong, @RequestParam("giangVien") String giangVien, @RequestParam("maKhoaHoc")String maKhoaHoc){
        if(lopHocVien.CapNhatLopHocVien(new CapNhatLopHocVienObject(maLopHocVien, tenLopHocVien, soLuong, giangVien, maKhoaHoc))>1){
            return "SUCCESS";
        }
        else{
            return "FAIL";
        }
    }

    @RequestMapping(value="/xoa-hoc-vien", method = RequestMethod.PUT)
    public String XoaLopHocVien(@RequestParam("maLopHocVien") String maLopHocVien){
        if(lopHocVien.XoaLopHocVien(maLopHocVien)>1){
            return "SUCCESS";
        }
        else{
            return "FAIL";
        }
    }
}
