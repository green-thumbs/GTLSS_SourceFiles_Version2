/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import entity.Product;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author Kristina
 */
public class ShoppingCart {

    List<ShoppingCartItem> items;
    int numberOfItems;
    double total;

    public ShoppingCart() {
        items = new ArrayList<ShoppingCartItem>();
        numberOfItems = 0;
        total = 0.0;
    }

    /**
     * Add in shopping cart item and increment quanitity.
     *
     * @param product
     */
    public synchronized void addItem(Product product) {
        boolean newItem = true;
        for (ShoppingCartItem scItem : items) {
            if (scItem.getProduct().getId().intValue() == product.getId().intValue()) {
                newItem = false;
                scItem.incrementQuantity();

            }
        }
        if (newItem) {
            ShoppingCartItem scItem = new ShoppingCartItem(product);
            items.add(scItem);
        }
        numberOfItems++;
        total += product.getPrice().doubleValue();
    }

    /**
     *
     * @param product
     * @param quantity
     */
    public synchronized void update(Product product, String quantity) {
        short qty = -1;

        qty = Short.parseShort(quantity);//get the new quanitity
        if (qty >= 0) {
            ShoppingCartItem item = null;
            for (ShoppingCartItem scItem : items) {
                if (scItem.getProduct().getId().intValue() == product.getId().intValue()) {//find the matched item
                    numberOfItems += (qty - scItem.getQuantity());//update total umberofitems
                    total += (qty - scItem.getQuantity() + product.getPrice().doubleValue());//update the total
                    if (qty > 0) {
                        scItem.setQuantity(qty);
                    } else {
                        item = scItem;
                        break;

                    }
                }
            }
            if (item != null) {
                items.remove(item);
            }
        }

    }

    public synchronized List<ShoppingCartItem> getItems() {
        return items;
    }

    public synchronized int getNumberOfItems() {
        return numberOfItems;
    }

    public synchronized double getTotal() {
        return total;
    }

    public synchronized double calculateTotal(String surcharge) {
        return total + Double.parseDouble(surcharge);
    }

    public synchronized void clear() {
        items.clear();
        //clear from the cart
        numberOfItems = 0;
        total = 0.0;

    }
}
