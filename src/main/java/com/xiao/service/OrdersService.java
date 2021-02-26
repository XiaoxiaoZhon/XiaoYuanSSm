package com.xiao.service;

import com.xiao.dto.JsonResult;
import com.xiao.dto.Page;
import com.xiao.pojo.Orders;

/**
 * Created by Ming on 2018/2/9.
 */
public interface OrdersService {

    JsonResult add(Orders orders);

    Page<Orders> findAllToPage(Integer page, Integer rows);

    Orders findById(Integer oid);

    //归还单车
    JsonResult update(Orders orders);

    JsonResult deleteById(Integer oid,Integer oBid,String oState);
}
