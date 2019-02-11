package com.Dragonist.Service.Imp;

import com.Dragonist.Bean.Nutrition;
import com.Dragonist.DAO.NutritionMapper;
import com.Dragonist.Service.NutritionService;

import java.util.ArrayList;

public class NutritionImp implements NutritionService {
    private NutritionMapper nutritionMapper;

    public void setNutritionMapper(NutritionMapper nutritionMapper) {
        this.nutritionMapper = nutritionMapper;
    }

    @Override
    public ArrayList<Nutrition> getNutritions() {
        return nutritionMapper.getNutritions();
    }

    @Override
    public Nutrition getNutrition(String name) {
        return nutritionMapper.getNutrition(name);
    }
}
