package com.usermanage.usermanage.controller;

import com.usermanage.usermanage.bean.Employ;
import com.usermanage.usermanage.bean.ResultBean;
import com.usermanage.usermanage.dao.EmployMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("employ")
@Api(value="员工",tags="员工")
public class EmployController {
    @Autowired
    private EmployMapper mapper;


    @GetMapping("login")
    @ApiOperation(value = "员工，登录", tags = "员工")
    public Object login(String username) {
        ResultBean bean = null;
        try {
//            int rows = 0;
            List<Employ> list = mapper.login(username);
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

    @PostMapping("save")
    @ApiOperation(value = "员工，保存", tags = "员工")
    public Object save(@RequestBody Employ employ) {
        int rows = 0;
        if (employ.getEmId() != null) {
            rows = mapper.updateByPrimaryKeySelective(employ);
        } else {
            rows = mapper.insertSelective(employ);
        }
        ResultBean bean = null;
        if (rows >= 1) {
            bean = new ResultBean();
            bean.setObject(employ);
            return bean;
        } else {
            bean = new ResultBean(ResultBean.ResultType.FAIL);
            return bean;
        }
    }

    @GetMapping("delete")
    @ApiOperation(value = "员工，删除", tags = "员工")
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
    @ApiOperation(value = "员工，查询", tags = "员工")
    public Object select(String name) {
        ResultBean bean = null;
        try {
            List<Employ> list = mapper.selectall(name);
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


