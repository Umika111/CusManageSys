package com.usermanage.usermanage.controller;

import com.usermanage.usermanage.bean.Goods;
import com.usermanage.usermanage.bean.GoodsCategory;
import com.usermanage.usermanage.bean.ResultBean;
import com.usermanage.usermanage.dao.GoodsCategoryMapper;
import com.usermanage.usermanage.dao.GoodsMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("goods")
@Api(value = "商品",tags = "商品")


public class GoodsController{
    @Autowired
    private GoodsMapper mapper;

    @PostMapping("save")
    @ApiOperation(value = "商品，保存",tags = "商品")
    public  Object save(Goods goods){
        int rows=0;
        if(goods.getGoodsId()!=null){
            rows=mapper.updateByPrimaryKeySelective(goods);
        }else {
            rows = mapper.insertSelective(goods);
        }
        ResultBean bean=null;
        if(rows>=1){
            bean=new ResultBean();
            bean.setObject(goods);
            return  bean;
        }
        else {
            bean=new ResultBean(ResultBean.ResultType.FAIL);
            return  bean;
        }
    }


    @PostMapping("delete")
    @ApiOperation(value = "商品，删除",tags = "商品")
    public  Object delete(Integer id){
        int rows=mapper.deleteByPrimaryKey(id);
        ResultBean bean=null;
        if(rows>=1){
            bean=new ResultBean();
            return  bean;
        }
        else {
            bean=new ResultBean(ResultBean.ResultType.FAIL);
            return  bean;
        }
    }


    @GetMapping("select")
    @ApiOperation(value = "商品，查询",tags = "商品")
    public  Object select(String name){
        ResultBean bean=null;
        try{
            List<Goods> list= mapper.selectall(name);
            bean=new ResultBean();
            bean.setObject(list);
        }
        catch (Exception e){
            e.printStackTrace();
            bean=new ResultBean(ResultBean.ResultType.FAIL);
            bean.setMessage("查询部门异常");
        }


        return  bean;
    }
}