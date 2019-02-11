package com.Dragonist.Bean;

public class Menu {
    private String name;
    private String method;
    private String food;
    private String description;
    private Integer id;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getFood() {
        return food;
    }

    public void setFood(String food) {
        this.food = food;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Menu(String name, String method, String food, String description, Integer id) {
        this.name = name;
        this.method = method;
        this.food = food;
        this.description = description;
        this.id = id;
    }
}
