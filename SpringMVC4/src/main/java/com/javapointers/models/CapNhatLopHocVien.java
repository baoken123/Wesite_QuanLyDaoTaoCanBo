package com.javapointers.models;

public class CapNhatLopHocVien {
    public String MaLopHocVien;
    public String TenLopHocVien;
    public int SoLuong;
    public String GiangVien;
    public String MaKhoaHoc;


    public CapNhatLopHocVien(String maLopHocVien, String tenLopHocVien, int soLuong, String giangVien, String maKhoaHoc){
        this.MaLopHocVien=maLopHocVien;
        this.TenLopHocVien=tenLopHocVien;
        this.SoLuong=soLuong;
        this.GiangVien=giangVien;
        this.MaKhoaHoc=maKhoaHoc;
    }
}
