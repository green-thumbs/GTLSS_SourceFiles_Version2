<%--
    Document   : cart.jsp
    Created on : Apr 15, 2019, 12:07:35 AM
    Author     : juhis
--%>


                <div id="centerColumn">
                    <c:choose>
                        <c:when test="${car.numberOfItems>1}">
                            <p>Your shopping cart contains ${cart.numberOfItems}items.</p>
                        </c:when>
                        
                        <c:when test="${cart.numberOfItems ==1}">
                            <p>Your shopping cart contains ${cart.numberOfItems}item.</p>
                        </c:when>
                        <c:otherwise>
                            <p>Your shopping cart is empty.</p>
                        </c:otherwise>
                    </c:choose>

                

                <div id="actionBar">
<!--                    Clear cart widget-->
<c:if test="${!empty cart && cart.numberOfItems !=0}">
    <a href="viewCart?clear=true" class="bubble hMargin">clear cart</a>
</c:if>
<!--    continue shopping widget-->
<c:set var="value">
       <c:choose>
           <c:when test="${!empty selectedCategory}">
               category
           </c:when>
           <c:otherwise>
               index.jsp
           </c:otherwise>
    </c:choose>
</c:set>
         <a href="${value}" class="bubble hMargin">Continue shopping</a>
<!--         Checkout widget-->
<c:if test="${!empty cart && cart.numberOfItems !=0}">
    <a href="checkout" class="bubble hMargin">Proceed to checkout &#279f;</a>
</c:if>
    <div>
        <c:if test="${!empty cart && cart.numberOfItems !=0}">
            
        </c:if>
    </div>     
              
    <c:if test="${!empty cart && cart.numberOfItems !=0}">
        
        <h4 id ="subtotal"> subtotal: ${cart.subtotal}</h4>
        
                <table id="cartTable">

                    <c:forEach var="cartItem" items="${cart.items}" varStatus="iter"></c:forEach>
                            <form action="updateCart" method="post">
                                <input type="text"
                                       maxlength="2"
                                       size="2"
                                       value="1"
                                       name="quantity">
                                <input type="submit"
                                       name="submit"
                                       value="update button">
                            </form>
                        </td>
                    </tr>

                     <tr>
                        <td class="white">
                            <img src="#" alt="product image">
                        </td>
                        <td class="white">[ product name ]</td>
                        <td class="white">[ price ]</td>
                        <td class="white">

                            <form action="updateCart" method="post">
                                <input type="text"
                                       maxlength="2"
                                       size="2"
                                       value="1"
                                       name="quantity">
                                <input type="submit"
                                       name="submit"
                                       value="update button">
                            </form>
                        </td>
                    </tr>

                    <tr>
                        <td class="lightBlue">
                            <img src="#" alt="product image">
                        </td>
                        <td class="lightBlue">[ product name ]</td>
                        <td class="lightBlue">[ price ]</td>
                        <td class="lightBlue">

                            <form action="updateCart" method="post">
                                <input type="text"
                                       maxlength="2"
                                       size="2"
                                       value="1"
                                       name="quantity">
                                <input type="submit"
                                       name="submit"
                                       value="update button">
                            </form>
                        </td>
                    </tr>
                     <tr>
                        <td class="lightBlue">
                            <img src="#" alt="product image">
                        </td>
                        <td class="lightBlue">[ product name ]</td>
                        <td class="lightBlue">[ price ]</td>
                        <td class="lightBlue">

                            <form action="updateCart" method="post">
                                <input type="text"
                                       maxlength="2"
                                       size="2"
                                       value="1"
                                       name="quantity">
                                <input type="submit"
                                       name="submit"
                                       value="update button">
                            </form>
                        </td>
                    </tr>
</c:forEach>
                </table>
 </c:if>
            </div>


      <br>
      <br>
      <br>



