package com.wsndc.core.bean;

public class Recipe {
    private Integer id;

    private String rname;

    private String videpath;

    private String imagepath;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname == null ? null : rname.trim();
    }

    public String getVidepath() {
        return videpath;
    }

    public void setVidepath(String videpath) {
        this.videpath = videpath == null ? null : videpath.trim();
    }

    public String getImagepath() {
        return imagepath;
    }

    public void setImagepath(String imagepath) {
        this.imagepath = imagepath == null ? null : imagepath.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    @Override
    public String toString() {
        return "Recipe{" +
                "id=" + id +
                ", rname='" + rname + '\'' +
                ", videpath='" + videpath + '\'' +
                ", imagepath='" + imagepath + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}