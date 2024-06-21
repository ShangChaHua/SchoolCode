package com.pojo;

//author：XuLu
public class Good {

    private int id;  //物资id
    private String goodName;//物资名称
    private String quantity;//物资数量

    public Good() {
    }

    public Good(int id, String goodName, String quantity) {
        this.id = id;
        this.goodName = goodName;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Good{" +
                "id=" + id +
                ", goodName='" + goodName + '\'' +
                ", quantity='" + quantity + '\'' +
                '}';
    }
}
