package com.Dragonist.DAO;

import com.Dragonist.Bean.Nutrition;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

public interface NutritionMapper {
    @Select("select * from nutrition")
    public ArrayList<Nutrition> getNutritions();

    @Select("select * from nutrition where name = #{name}")
    public Nutrition getNutrition(String name);
}
