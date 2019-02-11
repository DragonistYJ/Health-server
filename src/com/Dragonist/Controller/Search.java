package com.Dragonist.Controller;

import com.Dragonist.Bean.Food;
import com.Dragonist.Service.FoodService;
import com.google.gson.JsonObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@RequestMapping("/Search")
@Controller
public class Search {
    @Autowired
    HttpServletRequest request;

    @RequestMapping("/search")
    public void search(@RequestParam("value")String value, HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        FoodService foodService = (FoodService) context.getBean("foodService");

        ArrayList<Food> foods = foodService.searchFoodByName("%"+value+"%");
        ArrayList<Food> foods1 = foodService.searchFoodByAlia("%"+value+"%");
        for (Food food : foods1) {
            if (!foods.contains(food)) foods.add(food);
        }
        foods1 = foodService.searchFoodByDescription("%"+value+"%");
        for (Food food : foods1) {
            if (!foods.contains(food)) foods.add(food);
        }

        JsonObject object = new JsonObject();
        for (int i = 0; i < foods.size(); i++) {
            JsonObject object1 = new JsonObject();
            object1.addProperty("name", foods.get(i).getName());
            object1.addProperty("id", foods.get(i).getId());
            object.add(i + "", object1);
        }

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }
}
