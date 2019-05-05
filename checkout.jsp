<%--
    Document   : checkout.jsp
    Created on : May 5, 2019, 12:21:14 AM
    Author     : juhis
--%>


        <div id="singleColumn">

                <h2>checkout</h2>

                <p>In order to purchase the items in your shopping cart, please provide s with the following information:</p>

                <form action="purchase" method="post">

                    <table id="checkoutTable">
                        <tr>
                            <td><label for="name">name:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="45"
                                       id="name"
                                       value="${param.name}">
                            </td>
                                
                        </tr>
                        <tr>
                            <td><label for="email"> email:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="45"
                                       id="email"
                                       name="email"
                                       value="${param.email}">
                            </td>
                        </tr>
                        <tr>
                        <td><label for="phone">phone:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="16"
                                       id="phone"
                                       name="phone"
                                       value="${param.phone}">
                            </td>
                    </tr>
                     <tr>
                        <td><label for="address">address:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="45"
                                       id="address"
                                       name="address"
                                       value="${param.address}">
                            </td>
                    </tr>
                     <tr>
                        <td><label for="city">phone:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="10"
                                       id="city"
                                       name="city"
                                       value="${param.city}">
                            </td>
                    </tr>
                     <tr>
                        <td><label for="zipecode">phone:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="5"
                                       id="zipcode"
                                       name="zipecode"
                                       value="${param.zipcode}">
                            </td>
                    </tr>
                     <tr>
                        <td><label for="credit_number">Credit card:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="16"
                                       id="credit_number"
                                       name="phone"
                                       value="${param.credit_number}">
                            </td>
                    </tr>
                     <tr>
                        <td><label for="expiratio_nnumber">Expiration number:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="5"
                                       maxlength="4"
                                       id="expiration_number"
                                       name=""
                                       value="${param.expiration_number}">
                            </td>
                    </tr>
                        <tr>
                            <td colspan="2">
                            <input type="submit" value="submit purchase">
                            </td>
                        </tr>

                    </table>

                </form>

                <div id="infoBox">

                    <div style="border: black solid 1px; height:100px; padding: 10px">
                        <ul>
                        <li>Delivery date will be confirmed by call from customer service.</li>
                    </ul>

                    </div>

                    <table id="priceBox">
                        <tr>
                            <td>subtotal:</td>
                            <td class="checkoutPriceColumn">
                                ${cart.subtotal}</td>

                        </tr>
                        <tr>
                            <td class="total">Total:</td>
                            <td class="total checkoutPriceColumn">
                                ${cart.total}
                            </td>
                        </tr>
                    </table>
                    </div>
                </div>
       
     
