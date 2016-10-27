package com.restwebchat.controller;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: theon
 * Date: 8/30/16
 * Time: 5:21 PM
 * To change this template use File | Settings | File Templates.
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class Data {

    private String current_page;
    private String per_page;
    private String total_entries;
    private List<Items> items;
//    private List<String> user;


    public List<Items> getItems() {
        return items;
    }

    public void setItems(List<Items> items) {
        this.items = items;
    }

    public String getCurrent_page() {
        return current_page;
    }


    public void setCurrent_page(String current_page) {
        this.current_page = current_page;
    }

    public String getPer_page() {
        return per_page;
    }

    public void setPer_page(String per_page) {
        this.per_page = per_page;
    }

    public String getTotal_entries() {
        return total_entries;
    }

    public void setTotal_entries(String total_entries) {
        this.total_entries = total_entries;
    }

}
