package com.javapointers.models;

import VSC.jdbc.JdbcTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.util.List;
import java.util.Map;

@Component
public class KhoaHoc implements IKhoaHoc {
    @Autowired
    @Resource(name = "dataSource")
    DataSource dataSource;

    @Override
    public ServerResult TaoKhoaHoc() {
        return null;
    }

    @Override
    public List<Map<String, Object>> LayDanhSachKhoaHoc() {
        String sql = "call LayDanhSachKhoaHoc#c";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        List<Map<String, Object>> result=jdbcTemplate.queryForList(sql, new Object[]{});
        return result;
    }

    @Override
    public List ChiTietKhoaHoc(String maKhoaHoc) {
        return null;
    }
}
