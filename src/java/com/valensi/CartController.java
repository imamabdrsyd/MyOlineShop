/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi;

import com.valensi.bean.CartBean;
import com.valensi.dao.ProductService;
import com.valensi.entity.Tblproduct;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author imam
 */
@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    ProductService ps;

    CartBean cart = new CartBean();
    double totalHargaDalamCart;
    int key = 1;

    @RequestMapping(value = "/add/{productID}")
    public String addCart(@PathVariable Integer productID, Model model, HttpSession totalHarga, HttpSession session) {
        try {
            Tblproduct prod = ps.findById(productID);
            totalHargaDalamCart = totalHargaDalamCart + prod.getHarga();

            cart.getCarts().put(key++, prod);
            int count = cart.getCarts().size();
//            System.out.println("tot: "+count);
            totalHarga.setAttribute("total", totalHargaDalamCart);
            model.addAttribute("cartok", count);
            session.setAttribute("cart", cart);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/product/all";
    }

    @RequestMapping(value = "/show")
    public String showCart(Model model, HttpSession session) {
        return "carts";
    }

    @RequestMapping(value = "/{productID}/{value}")
    public String removeCart(@PathVariable Integer productID, @PathVariable Integer value, HttpSession totalHarga, Model model, HttpSession session) {

        try {
            Tblproduct prod = ps.findById(productID);
            if (prod == null) {
                model.addAttribute("errMsg", "Belom ada barang yg dipilih");
                return "product";
            }
            totalHargaDalamCart = totalHargaDalamCart - prod.getHarga();
            cart.getCarts().remove(value, prod);
//            cart.getCarts().remove(ps);
            int count = cart.getCarts().size();
//            System.out.println("tot: "+count);
            totalHarga.setAttribute("total", totalHargaDalamCart);
            model.addAttribute("cartok", count);
            session.setAttribute("cart", cart);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "cartok";
    }
}
