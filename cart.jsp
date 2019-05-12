<%--
    Document   : cart.jsp
    Created on : May 11, 2019, 12:07:35 AM
    Author     : juhis
--%>


                <div id="singleColumn">
                    <c:choose>
                        <c:when test="${cart.numberOfItems > 1}">
                            <p>Your shopping cart contains ${cart.numberOfItems}items.</p>
                        </c:when>

                        <c:when test="${cart.numberOfItems == 1}">
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
    
        <c:if test="${!empty cart && cart.numberOfItems !=0}">

        </c:if>
    </div>

    <c:if test="${!empty cart && cart.numberOfItems !=0}">

        <h4 id ="subtotal"> subtotal: ${cart.subtotal}</h4>

                <table id="cartTable">
                    <tr class="header">
                        <th>product</th>
                        <th>name</th>
                        <th>price</th>
                        <th>quantity</th>

                    </tr>

                    <c:forEach var="cartItem" items="${cart.items}" varStatus="iter">
                        <c:set var="product" value= "${cartItem.product}"/>
                        <tr class="${((iter.index % 2) ==0) ? 'lightBlue': 'white'}">
                            <td>
                                <img src="${initParam.productImagePath}${product.name}.png" alt="${product.name}">
                            <td>${product.name}</td>
                            <td>
                                ${cartItem.total}

                                <br>
                                <span class="smallText"> (${product.price})</span>

                            </td>
                            <td>
                            <form action="updateCart" method="post">
                                <input type="hidden"
                                       maxlength="productId"
                                       value="${product.id}">
                                <input type="text"
                                       maxlength="2"
                                       size="2"
                                       value="${cartItem.qantity}"
                                       name="quantity"
                                       style="margin:5px">
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


     


