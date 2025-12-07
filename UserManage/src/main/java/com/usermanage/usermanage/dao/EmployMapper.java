package com.usermanage.usermanage.dao;

import com.usermanage.usermanage.bean.Employ;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmployMapper {
    int deleteByPrimaryKey(Integer emId);

    int insert(Employ record);

    int insertSelective(Employ record);

    Employ selectByPrimaryKey(Integer emId);

    int updateByPrimaryKeySelective(Employ record);

    int updateByPrimaryKey(Employ record);

    List<Employ> selectall(@Param("name") String name);

    List<Employ> login(@Param("username") String username);
}