package com.usermanage.usermanage.controller;

import com.usermanage.usermanage.bean.GoodsCategory;
import com.usermanage.usermanage.bean.ResultBean;
import com.usermanage.usermanage.dao.GoodsCategoryMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("goodsCategory")
@Api(value="商品种类",tags="商品种类")
public class
goodsCategoryController  {
    @Autowired
    private GoodsCategoryMapper mapper;

    @PostMapping("save")
    @ApiOperation(value = "商品种类，保存", tags = "商品种类")
    public Object save(@RequestBody GoodsCategory goodsCategory) {
        int rows = 0;
        if (goodsCategory.getCateId() != null) {
            rows = mapper.updateByPrimaryKeySelective(goodsCategory);
        } else {
            rows = mapper.insertSelective(goodsCategory);
        }
        ResultBean bean = null;
        if (rows >= 1) {
            bean = new ResultBean();
            bean.setObject(goodsCategory);
            return bean;
        } else {
            bean = new ResultBean(ResultBean.ResultType.FAIL);
            return bean;
        }
    }

    @GetMapping("delete")
    @ApiOperation(value = "商品种类，删除", tags = "商品种类")
    public Object delete(Integer id) {
        int rows = mapper.deleteByPrimaryKey(id);
        ResultBean bean = null;
        if (rows >= 1) {
            bean = new ResultBean();
            return bean;
        } else {
            bean = new ResultBean(ResultBean.ResultType.FAIL);
            return bean;
        }
    }

    @GetMapping("select")
    @ApiOperation(value = "商品种类，查询", tags = "商品种类")
    public Object select(String name) {
        ResultBean bean = null;
        try {
            List<GoodsCategory> list = mapper.selectall(name);
            bean = new ResultBean();
            bean.setObject(list);
        }
        catch(Exception e){
            e.printStackTrace();
            bean = new ResultBean(ResultBean.ResultType.FAIL);
            bean.setMessage("查询职员异常，请联系管理员");
        }
        return bean;
    }
}




