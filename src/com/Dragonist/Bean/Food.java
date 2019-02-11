package com.Dragonist.Bean;

public class Food {
    private String name;
    private String description;
    private String effect;
    private String value;
    private String classification;
    private String classification2;
    private String alias;
    private Integer id;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEffect() {
        return effect;
    }

    public void setEffect(String effect) {
        this.effect = effect;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getClassification() {
        return classification;
    }

    public void setClassification(String classification) {
        this.classification = classification;
    }

    public String getClassification2() {
        return classification2;
    }

    public void setClassification2(String classification2) {
        this.classification2 = classification2;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Food(String name, String description, String effect, String value, String classification, String classification2, String alias, Integer id) {
        this.name = name;
        this.description = description;
        this.effect = effect;
        this.value = value;
        this.classification = classification;
        this.classification2 = classification2;
        this.alias = alias;
        this.id = id;
    }
}
