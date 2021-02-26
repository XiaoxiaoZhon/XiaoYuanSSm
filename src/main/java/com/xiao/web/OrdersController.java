package com.xiao.web;

import com.xiao.dto.JsonResult;
import com.xiao.dto.Page;
import com.xiao.pojo.Orders;
import com.xiao.pojo.Student;
import com.xiao.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Ming on 2018/2/13.
 */
@Controller
@RequestMapping("/orders")
public class OrdersController {


    @Autowired
    OrdersService ordersService;

    //跳转到租赁管理页面
    @RequestMapping("/ordersManage")
    public  String ordersMange(){
        return "orders";
    }

    //添加或修改订单
    @RequestMapping("/addOrUpdate")
    @ResponseBody
    public JsonResult addOrUpdate(Orders orders){
        if(orders.getOid() == null) return ordersService.add(orders);
            return ordersService.update(orders);
    }


    //点击修改按钮,加载订单表单
    @RequestMapping("/loadForm")
    @ResponseBody
    public Orders loadForm(Integer oid){
        return ordersService.findById(oid);
    }


    //显示所有的订单
    @RequestMapping("/showAll")
    @ResponseBody
    public Page<Orders> show(Integer page, Integer rows){
        return ordersService.findAllToPage(page,rows);
    }

    //删除订单
    @RequestMapping("/remove")
    @ResponseBody
    public JsonResult remove(Integer oid,Integer oBid,String oState){
        return ordersService.deleteById(oid,oBid,oState);
    }


}
