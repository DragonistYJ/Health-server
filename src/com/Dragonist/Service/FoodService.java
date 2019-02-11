package com.Dragonist.Service;

import com.Dragonist.Bean.Food;

import java.util.ArrayList;

public interface FoodService {
    public Food getFood(String name);

    public ArrayList<Food> searchFoodByName(String name);

    public ArrayList<Food> searchFoodByDescription(String description);

    public ArrayList<Food> searchFoodByAlia(String alia);
}
