package com.xiao.web;

import com.xiao.dto.Total;
import com.xiao.service.TotalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Ming on 2018/2/13.
 */
@Controller
@RequestMapping("total")
public class TotalController {
    @Autowired
    private TotalService totalService;


    @RequestMapping("/totalManage")
    public String totalMange(Model model){
        Total totalBean = totalService.getTotalBean();
        model.addAttribute("total",totalBean);
        return "total";
    }



}
