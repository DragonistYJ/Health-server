package com.Dragonist.Service.Imp;

import com.Dragonist.Bean.Food;
import com.Dragonist.DAO.FoodMapper;
import com.Dragonist.Service.FoodService;

import java.util.ArrayList;

public class FoodImp implements FoodService {
    private FoodMapper foodMapper;

    public void setFoodMapper(FoodMapper foodMapper) {
        this.foodMapper = foodMapper;
    }

    @Override
    public Food getFood(String name) {
        return foodMapper.getFood(name);
    }

    @Override
    public ArrayList<Food> searchFoodByName(String name) {
        return foodMapper.searchFoodByName(name);
    }

    @Override
    public ArrayList<Food> searchFoodByDescription(String description) {
        return foodMapper.searchFoodByDescription(description);
    }

    @Override
    public ArrayList<Food> searchFoodByAlia(String alia) {
        return foodMapper.searchFoodByAlia(alia);
    }
}
