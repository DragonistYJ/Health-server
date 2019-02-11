package com.Dragonist.Service.Imp;

import com.Dragonist.Bean.Menu;
import com.Dragonist.DAO.MenuMapper;
import com.Dragonist.Service.MenuService;

import java.util.ArrayList;

public class MenuImp implements MenuService {
    private MenuMapper menuMapper;

    public void setMenuMapper(MenuMapper menuMapper) {
        this.menuMapper = menuMapper;
    }

    @Override
    public ArrayList<Menu> getMenus() {
        return menuMapper.getMenus();
    }

    @Override
    public Menu getMenu(String name) {
        return menuMapper.getMenu(name);
    }
}
