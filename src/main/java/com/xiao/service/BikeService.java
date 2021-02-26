package com.xiao.service;

import com.xiao.dto.JsonResult;
import com.xiao.dto.Page;
import com.xiao.pojo.Bike;
import com.xiao.pojo.Student;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Created by Ming on 2018/2/9.
 */
public interface BikeService {



    JsonResult add(MultipartFile bikeIcon, Bike bike, HttpServletRequest request,Integer bCount);

    JsonResult update(MultipartFile bikeIcon,Bike bike,HttpServletRequest request);

    Page<Bike> findAllToPage(Integer page, Integer rows);

    //当前bike d掉 和 更新该分类的数量
    JsonResult deleteById(String bids,String cids);

    Bike findById(Integer bid);
}
