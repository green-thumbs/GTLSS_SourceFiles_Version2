<%-- 
    Document   : confirmation.jsp
    Created on : Apr 24, 2019, 2:25:30 AM
    Author     : Kristina
--%>


<div id="singleColumn">

     <p id="confirmationText">
                    <strong>Your orderr has been successfully processed and will be delivered after confirmation phone call.</strong>
                    <br><br>
                    Please keep a note of your confirmation number:
                    <strong>${orderRecord.confirmationNumber}</strong>
                    <br>
                    If you have a question concerning your order, feel free to <a href="#">Contact us</a>
                    <br><br>
                    Thank you for ordering at Green Thumb Lawn Service.
                </p>
         


<div class="summaryColumn" >

    <table id="orderSummaryTable" class="detailsTable" >
        <tr class="header">
              <th colespan="3">Order Summary</th>
                        </tr>
        <tr class="tableHeading">
                            <td>Product</td>
                            <td>Quantity</td>
                            <td>Price</td>
                        </tr>
                        <c:forEach var="orderedProduct" items="${orderedProducts}" varStatus="iter">
                            <tr class="${((iter.index % 2) !=0) ? 'lightgreen' : 'white'}">
                                <td>${products[iter.index].name}</td>
                                <td class="quantityColumn">
                                    ${orderedProduct.quantity}
                                </td>
                                <td class="confirmationPriceColumn">
                                    ${products[iter.index].price * orderedProduct.quantity}
                                </td>
                            </tr>
                        </c:forEach>
                            <tr class="lightgreen"><td colspan="3" style="padding: 0 20px"><hr></td></tr>
                            <tr class="lightgreen">
                                <td colspan="2" id="totalCellLeft"><strong>Total:</strong></td>
                                <td id="totalCellRight"> ${orderRecord.amount}</td>
                            </tr>
                            <tr class="lightgreen"><td colspan="3" style="padding: 0 20px"><hr></td></tr>
                            <tr class="lightgreen">
                                <td colspan="3" id="dataProcessedRow"><strong>Date Processed:</strong>
                                    ${orderRecord.dateCreated}
                                </td>
                            </tr>
                    </table>
    
</div>

<div class="summaryColumn" >

    <table id="deliveryAddressTable" class="detailsTable">
        <tr class="header">
            <th colspan="3">Delivery Address</th>
        </tr>
         <tr>
                            <td colspan="3" class="lightgreen">
                                ${customer.name}
                                <br>
                                ${customer.address}
                                <br>
                                ${customer.zipcode}
                                <br>
                                ${customer.city}
                                <br>
                                <hr>
                                <strong>Email:</strong>${customer.email}
                                <br>
                                <strong>Phone:</strong>${customer.phone}
                            </td>

                    </tr>
    </table>
</div>
</div>
