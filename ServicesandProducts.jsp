<%-- 
    Document   : ServicesandProducts
    Created on : Apr 20, 2019, 12:35:21 AM
    Author     : Kristina
--%>

<div id="categoryLeftColumn">
    <div class="categoryButton" id="selectedCategory">
        <span class="categoryText"></span>
    </div>
    <a href="#" class="categoryButton">
        <span class="categoryText">Services</span>
    </a>

    <a href="#" class="categoryButton">
        <span class="categoryText">Products</span>
    </a>
</div>

<div id="categoryRightColumn">
    <p id="categoryTitle">[ selected category ]</p>

    <table id="productTable">
        <tr>
            <td class="lightBlue">
                <img src="#" alt="product image">
            </td>
            <td class="lightBlue">
                [ product name ]
                <br>
                <span class="smallText">[ product description ]</span>
            </td>
            <td class="lightBlue">[ price ]</td>
            <td class="lightBlue">
                <form action="#" method="post">
                    <input type="submit" value="purchase button">
                </form>
            </td>
        </tr>

        <tr>
            <td class="white">
                <img src="#" alt="product image">
            </td>
            <td class="white">
                [ product name ]
                <br>
                <span class="smallText">[ product description ]</span>
            </td>
            <td class="white">[ price ]</td>
            <td class="white">
                <form action="#" method="post">
                    <input type="submit" value="purchase button">
                </form>
            </td>
        </tr>

        </tr>
    </table>
</div>
