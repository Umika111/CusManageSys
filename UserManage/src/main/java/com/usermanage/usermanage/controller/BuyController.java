package com.usermanage.usermanage.controller;

import com.usermanage.usermanage.bean.ResultBean;
import com.usermanage.usermanage.bean.buy;
import com.usermanage.usermanage.dao.buyMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RestController
@RequestMapping("buy")
@Api(value="购买记录",tags="购买记录")
public class BuyController {
    @Autowired
    private buyMapper mapper;

    @PostMapping("save")
    @ApiOperation(value="购买记录，保存",tags="购买记录")
    public Object save(@RequestBody buy b){
        int rows=0;
        if(b.getBuyId()!=null)
        {
            rows=mapper.updateByPrimaryKeySelective(b);
        }
        else {
            rows=mapper.insertSelective(b);
        }
        ResultBean bean=null;
        if(rows>=1)
        {
            bean=new ResultBean();
            bean.setObject(b);
            return bean;
        }
        else {
            bean=new ResultBean(ResultBean.ResultType.FAIL);
            return bean;
        }
    }

    @GetMapping("delete")
    @ApiOperation(value="购买记录，删除",tags="购买记录")
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
    @ApiOperation(value="购买记录，查询",tags="购买记录")
    public  Object select(String bid,Integer gid,Integer cid){
        ResultBean bean=null;
        try {
            Map map=new HashMap();
            map.put("bid",bid);
            map.put("gid",gid);
            map.put("cid",cid);

            List<buy> list =mapper.selectall(map);
            bean=new ResultBean();
            bean.setObject(list);
        }
        catch (Exception e)
        {
            e.printStackTrace();
            bean=new ResultBean(ResultBean.ResultType.FAIL);
            bean.setMessage("查询购买记录异常，请联系管理员");
        }
        return bean;
    }
}
