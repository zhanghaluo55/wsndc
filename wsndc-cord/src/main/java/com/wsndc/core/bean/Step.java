package com.wsndc.core.bean;

public class Step {
    private Integer id;

    private Integer recipeOrder;

    private String process;

    private String imagepath;

    private Integer rid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRecipeOrder() {
        return recipeOrder;
    }

    public void setRecipeOrder(Integer recipeOrder) {
        this.recipeOrder = recipeOrder;
    }

    public String getProcess() {
        return process;
    }

    public void setProcess(String process) {
        this.process = process == null ? null : process.trim();
    }

    public String getImagepath() {
        return imagepath;
    }

    public void setImagepath(String imagepath) {
        this.imagepath = imagepath == null ? null : imagepath.trim();
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    @Override
    public String toString() {
        return "Step{" +
                "id=" + id +
                ", recipeOrder=" + recipeOrder +
                ", process='" + process + '\'' +
                ", imagepath='" + imagepath + '\'' +
                ", rid=" + rid +
                '}';
    }
}