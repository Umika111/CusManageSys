package com.usermanage.usermanage.dao;

import com.usermanage.usermanage.bean.Department;
import com.usermanage.usermanage.bean.Linkman;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface LinkmanMapper {
    int deleteByPrimaryKey(Integer linkmanId);

    int insert(Linkman record);

    int insertSelective(Linkman record);

    Linkman selectByPrimaryKey(Integer linkmanId);

    int updateByPrimaryKeySelective(Linkman record);

    int updateByPrimaryKey(Linkman record);

    List<Linkman> selectall(Map map);
}