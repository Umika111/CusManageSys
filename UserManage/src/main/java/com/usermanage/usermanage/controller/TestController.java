package com.usermanage.usermanage.controller;

import com.usermanage.usermanage.bean.Department;
import com.usermanage.usermanage.dao.DepartmentMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/test")
@Api(tags="测试类",value="测试类")
public class TestController {
    @Autowired
    private DepartmentMapper mapper;
    @GetMapping("hello")
    @ApiOperation(tags="测试类",value="测试方法helloword")
    public String helloworld(){
        return "helloword";
    }
    @GetMapping("list")
    public Object list(){
        List<Department> list= mapper.selectall(null);
        return list;
    }
}
