package com.usermanage.usermanage.dao;

import com.usermanage.usermanage.bean.GoodsCategory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsCategoryMapper {
    int deleteByPrimaryKey(Integer cateId);

    int insert(GoodsCategory record);

    int insertSelective(GoodsCategory record);

    GoodsCategory selectByPrimaryKey(Integer cateId);

    int updateByPrimaryKeySelective(GoodsCategory record);

    int updateByPrimaryKey(GoodsCategory record);

    List<GoodsCategory> selectall(@Param("name") String name);
}