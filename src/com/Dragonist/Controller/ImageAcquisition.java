package com.Dragonist.Controller;

import com.Dragonist.Bean.Menu;
import com.Dragonist.Bean.Nutrition;
import com.Dragonist.Service.MenuService;
import com.Dragonist.Service.NutritionService;
import com.google.gson.JsonObject;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Random;

@RequestMapping("/ImageAcquisition")
@Controller
public class ImageAcquisition {
    @RequestMapping("/broadcast")
    public void broadcast(HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        MenuService menuService = (MenuService) context.getBean("menuService");

        ArrayList<Menu> menus = menuService.getMenus();
        JsonObject object = new JsonObject();
        object.addProperty("p1", new Random().nextInt(menus.size()) + 1);
        object.addProperty("p2", new Random().nextInt(menus.size()) + 1);
        object.addProperty("p3", new Random().nextInt(menus.size()) + 1);
        object.addProperty("p4", new Random().nextInt(menus.size()) + 1);
        object.addProperty("p5", new Random().nextInt(menus.size()) + 1);
        object.addProperty("p6", new Random().nextInt(menus.size()) + 1);


        response.getOutputStream().write(object.toString().getBytes());
    }

    @RequestMapping("/menu")
    public void menu(HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        MenuService menuService = (MenuService) context.getBean("menuService");

        ArrayList<Menu> menus = menuService.getMenus();
        JsonObject object = new JsonObject();
        for (int i = 1; i <= 4; i++) {
            JsonObject object1 = new JsonObject();
            int x = new Random().nextInt(menus.size());
            object1.addProperty("name", menus.get(x).getName());
            object1.addProperty("description", menus.get(x).getDescription());
            object1.addProperty("image", menus.get(x).getId());
            object.add("obj" + i, object1);
        }

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }

    @RequestMapping("/nutrition")
    public void nutrition(HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        NutritionService nutritionService = (NutritionService) context.getBean("nutritionService");

        ArrayList<Nutrition> nutritions = nutritionService.getNutritions();
        JsonObject object = new JsonObject();
        for (int i = 1; i <= 3; i++) {
            JsonObject object1 = new JsonObject();
            int x = new Random().nextInt(nutritions.size());
            object1.addProperty("name", nutritions.get(x).getName());
            object1.addProperty("heat", nutritions.get(x).getHeat());
            object1.addProperty("protein", nutritions.get(x).getProtein());
            object1.addProperty("fat", nutritions.get(x).getFat());
            object1.addProperty("carbohydrate", nutritions.get(x).getCarbohydrate());
            object1.addProperty("cellulose", nutritions.get(x).getCellulose());
            object1.addProperty("image", nutritions.get(x).getId());
            object.add("obj" + i, object1);
        }

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }
}
