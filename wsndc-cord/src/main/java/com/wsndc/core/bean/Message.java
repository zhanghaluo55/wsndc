package com.wsndc.core.bean;

/**
 * Created by Rainer on 2019/6/3.
 */
public class Message {
    //0表示成功;-1表示失败
    private int status;
    //向前端返回的内容
    private String massage;
    public Message(){

    }
    public Message(int status, String massage) {
        super();
        this.status = status;
        this.massage = massage;
    }
    //get/set方法


    public int getStatus() {
        return status;
    }

    public String getMessage() {
        return massage;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setMassage(String massage) {
        this.massage = massage;
    }
}
