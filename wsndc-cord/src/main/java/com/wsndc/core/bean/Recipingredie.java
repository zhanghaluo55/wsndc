package com.wsndc.core.bean;

public class Recipingredie {
    private Integer id;

    private Integer rid;

    private Integer iid;

    private String dosis;

    private Recipe recipe;

    private Ingredie ingredie;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getIid() {
        return iid;
    }

    public void setIid(Integer iid) {
        this.iid = iid;
    }

    public String getDosis() {
        return dosis;
    }

    public void setDosis(String dosis) {
        this.dosis = dosis == null ? null : dosis.trim();
    }

    public Recipe getRecipe() {
        return recipe;
    }

    public void setRecipe(Recipe recipe) {
        this.recipe = recipe;
    }

    public Ingredie getIngredie() {
        return ingredie;
    }

    public void setIngredie(Ingredie ingredie) {
        this.ingredie = ingredie;
    }
}