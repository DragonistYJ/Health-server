package com.Dragonist.Controller;

import com.Dragonist.Bean.Menu;
import com.Dragonist.Service.MenuService;
import com.google.gson.JsonObject;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

@RequestMapping("/Recommend")
@Controller()
public class Recommend {
    @RequestMapping("/meal")
    public void meal(HttpServletResponse response) throws IOException {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        MenuService menuService = (MenuService) context.getBean("menuService");

        ArrayList<Menu> menus = menuService.getMenus();
        ArrayList<Integer> meals = getMeals(menus.size());

        JsonObject object = new JsonObject();
        for (int i = 1; i <= meals.size(); i++) {
            object.addProperty("m" + i, meals.get(i - 1) + 1);
            object.addProperty("n" + i, menus.get(meals.get(i - 1)).getName());
        }

        response.getOutputStream().write(object.toString().getBytes("UTF-8"));
    }

    private ArrayList<Integer> getMeals(int n) {
        ArrayList<Integer> exist = new ArrayList<>();

        Random random = new Random();
        while (exist.size() < 8) {
            int x = random.nextInt(n);
            if (exist.contains(x)) continue;
            else exist.add(x);
        }

        return exist;
    }
}
