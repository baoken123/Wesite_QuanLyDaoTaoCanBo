package com.javapointers.models;

import com.sun.security.ntlm.Server;

import java.util.List;

public interface IKhoaHoc {
    public ServerResult TaoKhoaHoc();
    public List LayDanhSachKhoaHoc();
    public List ChiTietKhoaHoc(String maKhoaHoc);
}
