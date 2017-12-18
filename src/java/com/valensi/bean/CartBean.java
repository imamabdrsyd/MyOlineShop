/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.bean;

import com.valensi.entity.Tblproduct;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Acer
 */
public class CartBean {

    private Map<Integer, Tblproduct> carts;

    public CartBean(Map<Integer, Tblproduct> carts) {
        this.carts = carts;
    }

    public CartBean() {
        carts = new HashMap<>();
    }

    /**
     * @return the carts
     */
    public Map<Integer, Tblproduct> getCarts() {
        return carts;
    }

    /**
     * @param carts the carts to set
     */
    public void setCarts(Map<Integer, Tblproduct> carts) {
        this.carts = carts;
    }

}
