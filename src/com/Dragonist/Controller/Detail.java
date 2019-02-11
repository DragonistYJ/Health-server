package com.Dragonist.Controller;

import com.Dragonist.Bean.Food;
import com.Dragonist.Bean.Menu;
import com.Dragonist.Bean.Nutrition;
import com.Dragonist.Service.FoodService;
import com.Dragonist.Service.MenuService;
import com.Dragonist.Service.NutritionService;
import com.google.gson.JsonObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

@RequestMapping("/Detail")
@Controller
public class Detail {
    @Autowired
    private HttpServletRequest request;

    @RequestMapping("/food")
    public void food(HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");

        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        NutritionService nutritionService = (NutritionService) context.getBean("nutritionService");
        FoodService foodService = (FoodService) context.getBean("foodService");

        com.Dragonist.Bean.Food food = foodService.getFood(name);
        Nutrition nutrition = nutritionService.getNutrition(name);

        JsonObject object = new JsonObject();
        object.addProperty("name",name);
        object.addProperty("description",food.getDescription());
        object.addProperty("effect",food.getEffect());
        object.addProperty("value",food.getValue());
        object.addProperty("alias",food.getAlias());
        object.addProperty("classification",food.getClassification());
        object.addProperty("classification2",food.getClassification2());
        object.addProperty("id",food.getId());
        object.addProperty("n1",nutrition.getHeat());
        object.addProperty("n2",nutrition.getProtein());
        object.addProperty("n3",nutrition.getFat());
        object.addProperty("n4",nutrition.getCarbohydrate());
        object.addProperty("n5",nutrition.getCellulose());
        object.addProperty("n6",nutrition.getVA());
        object.addProperty("n7",nutrition.getVC());
        object.addProperty("n8",nutrition.getVE());
        object.addProperty("n9",nutrition.getCarotene());
        object.addProperty("n10",nutrition.getThiamine());
        object.addProperty("n11",nutrition.getRiboflavin());
        object.addProperty("n12",nutrition.getNiacin());
        object.addProperty("n13",nutrition.getCholesterol());
        object.addProperty("n14",nutrition.getMg());
        object.addProperty("n15",nutrition.getCa());
        object.addProperty("n16",nutrition.getFe());
        object.addProperty("n17",nutrition.getZn());
        object.addProperty("n18",nutrition.getCu());
        object.addProperty("n19",nutrition.getMn());
        object.addProperty("n20",nutrition.getK());
        object.addProperty("n21",nutrition.getP());
        object.addProperty("n22",nutrition.getNa());
        object.addProperty("n23",nutrition.getSe());

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }

    @RequestMapping("/menu")
    public void menu(HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        MenuService menuService = (MenuService) context.getBean("menuService");

        Menu menu = menuService.getMenu(name);
        JsonObject object = new JsonObject();
        object.addProperty("name",name);
        object.addProperty("description",menu.getDescription());
        object.addProperty("method",menu.getMethod());
        object.addProperty("food",menu.getFood());
        object.addProperty("id",menu.getId());

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }
}
