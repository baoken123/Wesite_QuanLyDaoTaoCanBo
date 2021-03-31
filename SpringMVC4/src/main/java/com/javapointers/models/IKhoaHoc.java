package com.javapointers.models;

import com.sun.security.ntlm.Server;

import java.util.List;

public interface IKhoaHoc {
    public int TaoKhoaHoc(TaoKhoaHoc model);
    public int CapNhatKhoaHoc(CapNhatKhoaHoc model);
    public int XoaKhoaHoc(String maKhoaHoc);
    public List LayDanhSachKhoaHoc();
    public List ChiTietKhoaHoc(String maKhoaHoc);
}
