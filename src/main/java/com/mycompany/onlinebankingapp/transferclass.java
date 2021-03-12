package com.mycompany.onlinebankingapp;
public class transferclass {
String name;
int id;
double bal;

    public transferclass() {
    }

    public transferclass(String name, int id, double bal) {
        this.name = name;
        this.id = id;
        this.bal = bal;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getBal() {
        return bal;
    }

    public void setBal(double bal) {
        this.bal = bal;
    }

}
