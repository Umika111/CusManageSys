package com.usermanage.usermanage.controller;

import com.usermanage.usermanage.bean.Employ;
import com.usermanage.usermanage.bean.Linkman;
import com.usermanage.usermanage.bean.ResultBean;
import com.usermanage.usermanage.dao.EmployMapper;
import com.usermanage.usermanage.dao.LinkmanMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("linkman")
@Api(value="联系人",tags="联系人")
public class LinkmanController {
    @Autowired
    private LinkmanMapper mapper;

    @GetMapping("save")
    @ApiOperation(value = "联系人，保存", tags = "联系人")
    public Object save(Linkman linkman) {
        int rows = 0;
        if (Linkman.getLinkmanId() != null) {
            rows = mapper.updateByPrimaryKeySelective(linkman);
        } else {
            rows = mapper.insertSelective(linkman);
        }
        ResultBean bean = null;
        if (rows >= 1) {
            bean = new ResultBean();
            bean.setObject(linkman);
            return bean;
        } else {
            bean = new ResultBean(ResultBean.ResultType.FAIL);
            return bean;
        }
    }

    @GetMapping("delete")
    @ApiOperation(value = "联系人，删除", tags = "联系人")
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
    @ApiOperation(value = "联系人，查询", tags = "联系人")
    public Object select(String name,Integer cid) {
        ResultBean bean = null;
        try {
            Map map=new HashMap();
            map.put("name",name);
            map.put("cid",cid);

            List<Linkman> list = mapper.selectall(map);
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

