package com.Dragonist.DAO;

import com.Dragonist.Bean.Food;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

public interface FoodMapper {
    @Select("select * from food where name = #{name}")
    public Food getFood(String name);

    @Select("select * from food where name like #{name}")
    public ArrayList<Food> searchFoodByName(String name);

    @Select("select * from food where description like #{description}")
    public ArrayList<Food> searchFoodByDescription(String description);

    @Select("select * from food where alias like #{alia}")
    public ArrayList<Food> searchFoodByAlia(String alia);
}
