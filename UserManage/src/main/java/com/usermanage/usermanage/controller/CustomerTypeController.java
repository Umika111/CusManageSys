package com.usermanage.usermanage.controller;

import com.usermanage.usermanage.bean.Customer_type;
import com.usermanage.usermanage.bean.ResultBean;
import com.usermanage.usermanage.dao.Customer_typeMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("customer_type")
@Api(value="客户类型",tags="客户类型")
public class CustomerTypeController {
    @Autowired
    private Customer_typeMapper mapper;
    @PostMapping("save")
    @ApiOperation(value="客户类型，保存",tags="客户类型")
    public Object save(@RequestBody Customer_type customertype){
        int rows=0;
        if(customertype.getCtypeId()!=null)
        {
            rows=mapper.updateByPrimaryKeySelective(customertype);
        }
        else {
            rows=mapper.insertSelective(customertype);
        }
        ResultBean bean=null;
        if(rows>=1)
        {
            bean=new ResultBean();
            bean.setObject(customertype);
            return bean;
        }
        else {
            bean=new ResultBean(ResultBean.ResultType.FAIL);
            return bean;
        }
    }

    @GetMapping("delete")
    @ApiOperation(value="客户类型，删除",tags="客户类型")
    public  Object delete(Integer id){
        int rows=mapper.deleteByPrimaryKey(id);
        ResultBean bean=null;
        if(rows>=1)
        {
            bean=new ResultBean();
            return bean;
        }
        else {
            bean=new ResultBean(ResultBean.ResultType.FAIL);
            return bean;
        }
    }

    @GetMapping("select")
    @ApiOperation(value="客户类型，查询",tags="客户类型")
    public  Object select(String name){
        ResultBean bean=null;
        try {
            List<Customer_type> list =mapper.selectall(name);
            bean=new ResultBean();
            bean.setObject(list);
        }
        catch (Exception e)
        {
            e.printStackTrace();
            bean=new ResultBean(ResultBean.ResultType.FAIL);
            bean.setMessage("查询客户类型异常，请联系管理员");
        }
        return bean;
    }
}
