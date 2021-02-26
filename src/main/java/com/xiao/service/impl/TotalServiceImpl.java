package com.xiao.service.impl;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import com.xiao.dao.OrdersMapper;
import com.xiao.dao.StudentMapper;
import com.xiao.dao.MultiTableMapper;
import com.xiao.dto.Total;
import com.xiao.enums.BikeStateEnum;
import com.xiao.enums.OrdersStateEnum;
import com.xiao.pojo.*;
import com.xiao.service.TotalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Ming on 2018/2/13.
 */
@Service
public class TotalServiceImpl implements TotalService {

    @Autowired
    private OrdersMapper ordersMapper;

    @Autowired
    private StudentMapper studentMapper;

    @Autowired
    private MultiTableMapper multiTableMapper;


    @Override
    public Total getTotalBean() {
        Total total = new Total();
        int inStoreBikeCount = 0;
        int beakdownBikeCount = 0;
        int repairBikeCount = 0;
        float beakdownMoney = 0;

        List<BikeCategory> bikeCategory = multiTableMapper.getBikeAndCategory();
        for (BikeCategory bc : bikeCategory) {
            if(!BikeStateEnum.BORROWED.getState().equals(bc.getbState()))
                inStoreBikeCount ++;
            if(BikeStateEnum.BREAKDOWN.getState().equals(bc.getbState())) {
                beakdownBikeCount++;
                beakdownMoney += bc.getcPrice();
            }
            if(BikeStateEnum.REPAIR.getState().equals(bc.getbState()))
                repairBikeCount ++;
        }

        total.setTotalBikeCount(bikeCategory.size());
        total.setInStoreBikeCount(inStoreBikeCount);
        total.setBeakdownBikeCount(beakdownBikeCount);
        total.setRepairBikeCount(repairBikeCount);
        total.setBeakdownMoney(beakdownMoney);

        int rentCount = 0;
        float haveCash = 0;
        float profitMoney = 0;
        List<Orders> orders = ordersMapper.selectByExample(new OrdersExample());
        for (Orders order : orders) {
            if(OrdersStateEnum.NOT_RETURN.getState().equals(order.getoState())) {
                rentCount++;
                haveCash += order.getoCash();
            }
            if(!OrdersStateEnum.NOT_RETURN.getState().equals(order.getoState())){
                profitMoney += order.getoRealRent() + order.getoCash();
            }
        }

        total.setBorrowedCount(orders.size());
        //租金流水
        total.setRentCount(rentCount);
        total.setHaveCash(haveCash);
        total.setProfitMoney(profitMoney - beakdownMoney);

        total.setTotalStudentCount(studentMapper.countByExample(new StudentExample()));


        return total;
    }
}
