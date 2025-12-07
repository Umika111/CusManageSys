package com.usermanage.usermanage.dao;

import com.usermanage.usermanage.bean.buy;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface buyMapper {
    int deleteByPrimaryKey(Integer buyId);

    int insert(buy record);

    int insertSelective(buy record);

    buy selectByPrimaryKey(Integer buyId);

    int updateByPrimaryKeySelective(buy record);

    int updateByPrimaryKey(buy record);

    List<buy> selectall(Map map);
}