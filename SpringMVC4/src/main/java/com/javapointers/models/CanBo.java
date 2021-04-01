package com.javapointers.models;

import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.util.List;
import java.util.Map;

public class CanBo implements ICanBo{

    @Autowired
    @Resource(name = "dataSource")
    DataSource dataSource;

    @Override
    public int ThemCanBo(ThemCanBoObject model) {
        return 0;
    }

    @Override
    public int CapNhatCanBo(CapNhatCanBoObject model) {
        return 0;
    }

    @Override
    public int XoaKhoaHoc(String maCanBo) {
        return 0;
    }

    @Override
    public List<Map<String, Object>> LayDanhSachCanBo() {
        return null;
    }
}
