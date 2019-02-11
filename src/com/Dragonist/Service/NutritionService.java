package com.Dragonist.Service;

import com.Dragonist.Bean.Nutrition;

import java.util.ArrayList;

public interface NutritionService {
    public ArrayList<Nutrition> getNutritions();

    public Nutrition getNutrition(String name);
}
