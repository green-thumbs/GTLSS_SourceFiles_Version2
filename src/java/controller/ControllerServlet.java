/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import Cart.ShoppingCart;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.util.Collection;
import javax.ejb.EJB;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.CategoryFacade;
import session.ProductFacade;

@WebServlet(name = "ControllerServlet",
        loadOnStartup=1,
        urlPatterns = {"/category",
                 "/addToCart",
                   "/viewCart",
                    "/updateCart",
                    "/checkout,                    
                    "/purchase"})
public class ControllerServlet extends HttpServlet {
        private String surcharge;
        @EJB
        private CategoryFacade categoryFacade;
        @EJB
        private ProductFacade productFacade;
        public void init(ServletConfig servletConfig) throws ServletException{
         super.init(servletConfig);
        surcharge= servletConfig.getServletContext().getInitParameter("deliverySurcharge");
        //store category list in servlet
        getServletContext().setAttribute("categories",categoryFacade.findAll());
}
   
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userPath = request.getServletPath();
        HttpSession session= request.getSession();
        Category selectedCategory;
        Collection<Product> categoryProducts;    

        // if category page is requested
        if (userPath.equals("/category")) {
            //get category from request
            String categoryId=request.getQueryString();
            if(categoryId !=null){
                selectedCategory = categoryFacade.find(Integer.parseInt(categoryId));
                session.setAttribute("selectedCategory",selectedCategory);
                //get products table
                categoryProducts = selectedCategory.getProductCollection();
                //caegory product in request scope
                session.setAttribute("categoryProducts", categoryProducts);
            }
        // if cart page is requested
        } else if (userPath.equals("/viewCart")) {
            // TODO: Implement cart page request

            userPath = "/cart";
        }
        // if checkout page is requested
         else if (userPath.equals("/checkout")) {
            // TODO: Implement checkout page request

        }    
        // use RequestDispatcher to forward request internally
        String url = "/WEB-INF/view" + userPath + ".jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }        
    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userPath = request.getServletPath();
        HttpSession session=request.getSession();
        ShoppingCart cart= (ShoppingCart) session.getAttribute("cart");    

        // if addToCart action is called
        if (userPath.equals("/addToCart")) {
           //if user item is adding to cart for first time
           //create cart object and attach it to user's session
           if(cart == null){
               cart = new ShoppingCart();
               session.setAttribute("cart",cart);
           }
          //user input from request
           String productId = request.getParameter("productId");
           if(productId.isEmpty()){
               Product product = productFacade.find(Integer.parseInt(productId));
               cart.addItem(product);
           }
           userPath="/category";
           //if purchase action is called
         }else if (userPath.equals("/updateCart")){
           String productId = request.getParameter("productId");
           String quantity = request.getParameter("quanitity");

           Product product = productFacade.find(Integer.parseInt(productId));
           cart.update(product,quantity);


           userPath="/cart";


    }else if (userPath.equals("/purchase")){
        //todo implement purchase action

        userPath="/confirmation";
    }
        //use Requestdispatcher to forward request internally
        String url = "/WEB-INF/view" + userPath + ".jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
