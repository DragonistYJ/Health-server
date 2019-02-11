package com.Dragonist.Service;

import com.Dragonist.Bean.Menu;

import java.util.ArrayList;

public interface MenuService {
    public ArrayList<Menu> getMenus();

    public Menu getMenu(String name);
}
