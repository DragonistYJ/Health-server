package com.Dragonist.DAO;

import com.Dragonist.Bean.Menu;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

public interface MenuMapper {
    @Select("select * from menu")
    public ArrayList<Menu> getMenus();

    @Select("select * from menu where name = #{name}")
    public Menu getMenu(String name);
}
