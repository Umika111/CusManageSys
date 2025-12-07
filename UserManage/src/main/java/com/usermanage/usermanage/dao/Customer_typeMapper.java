package com.usermanage.usermanage.dao;

import com.usermanage.usermanage.bean.Customer_type;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface Customer_typeMapper {
    int deleteByPrimaryKey(Integer ctypeId);

    int insert(Customer_type record);

    int insertSelective(Customer_type record);

    Customer_type selectByPrimaryKey(Integer ctypeId);

    int updateByPrimaryKeySelective(Customer_type record);

    int updateByPrimaryKey(Customer_type record);

    List<Customer_type> selectall(@Param("name") String name);
}