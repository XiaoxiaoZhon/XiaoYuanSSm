package com.xiao.dao;

import com.xiao.pojo.BikeCategory;

import java.util.List;

/**多表View
 * Created by Ming on 2018/2/14.
 */
public interface MultiTableMapper {

   List<BikeCategory> getBikeAndCategory();
   //...
}
