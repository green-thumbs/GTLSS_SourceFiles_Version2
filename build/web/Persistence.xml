/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Cart;
import java.util.ArrayList;
import entity.Product;

/**
 *
 * @author juhi sattar
 */
public class ShoppingCartItem {
    Product product;
    Short quantity;

    public ShoppingCartItem(Product product){
        this.product=product;
        quantity=1;
    }
    public Product getProduct() {
        return product;
    }

    public Short getQuantity() {
        return quantity;
    }

    public void setQuantity(Short quantity) {
        this.quantity = quantity;
    }

     public void incrementQuantity(){
         quantity++;
     }
     public void decrementQuantity(){
         quantity--;
     }
     public double getTotal(){
         double amount=0;
         amount = (this.getQuantity()* product.getPrice().doubleValue());
         return amount;
     }
}
