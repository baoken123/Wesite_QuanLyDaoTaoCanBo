package com.javapointers.models;

import java.util.List;

public interface ILopHocVien {
    public List LayDanhSachLopHocVien();
    public List LayDanhSachLopHocVienTheoKhoaHoc(String maKhoaHoc);
    public int ThemLopHocVien(TaoLopHocVien model);
    public int CapNhatLopHocVien(CapNhatLopHocVien model);
    public int XoaLopHocVien(String maLopHocVien);

}
