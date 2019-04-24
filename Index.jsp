<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

    <%-- 
    Document   : index.jsp
    Created on : Apr 13, 2019, 5:37:53 PM
    Author     : juhis
--%>
<sql:query var="categories" dataSource="jdbc/projectlawnservice">
    SELECT * FROM category
</sql:query>
           <!=====homeslider=====>
                <div id="carousel-container">
                    <i class="fas fa-arrow-right" id="nexbtn"></i>
                    <i class="fas fa-arrow-left" id="prevbtn"></i>
                    <div id="carousel-slide">
                        <img src="img\mediummow.png" id="lastclone" alt="lawnpicback">
                        <img src="pic2.jpg" alt="lawnpic1">
                        <img src="pic3.jpg" alt="lawnpic2">
                        <img src="pic2.jpg" id="firstclone" alt="lawnpic1">
                                                  
                </div>
                    
                    </div>
                <div id="indexLeftColumn">
                    <div id="WelcomeText">
                        <p>Welcome text</p>
                        <!--test to access context parameters-->
                        categoryImagePath: ${initParam.categoryImagePath}
                        productImagePath: ${initParam.productImagePath}
                       
                    </div>
                </div>
                <div id="indexRightColumn">
                    <c:forEach var="category" items="${categories.rows}">
                        <div class="servicesandproductsbox">
                            <a href="category?${category.id}">
                                <span class="servicesandproductsLabelText">${category.name}</span>
                                <img scr="${initParam.categoryImagePath}${category.name}.png" alt="${category.name}">
                            </a>
                        </div>
                    </c:forEach>
                    
                    
                </div>
                               
               
                <script type="text/javascript" >
                    const carouselSlide=document. querySelector('.carousel-slide');
const carouselImages=document.querySelectorAll('.carousel-slide img')

//buttons
const prevbtn= document.querySelector('#prevbtn');
const nexbtn= document.querySelector('#nexbtn');
//counter
let counter=1;
const size= carouselImages[0].clientWidth;
carouselSlide.style.transform='translateX('+(-size*counter)+'px)';
//event listern
nexbtn.addEventListener('click',() =>{
    if(counter>=carouselImages.length-1)return;
    carouselSlide.style.transition="transform().4s ease-in-out";
    counter++;
    carouselSlide.style.transform='translateX('+(-size*counter)+'px)';
    
});
prevbtn.addEventListener('click',() =>{
     if(counter <=0)return;
    carouselSlide.style.transition="transform().4s ease-in-out";
    counter--;
    carouselSlide.style.transform='translateX('+(-size*counter)+'px)';
    
});
carouselSlide.addEventListener('transitionend',()=>{
              if (carouselImages[counter].id === 'lastclone'){
        carouselSlide.style.transition="none";
       counter=carouselImages.length - 2;
         carouselSlide.style.transform = 'translateX('+(-size*counter)+'px)';
    }
     if (carouselImages[counter].id === 'firstclone'){
        carouselSlide.style.transition="none";
       counter=carouselImages.length - counter;
         carouselSlide.style.transform = 'translateX('+(-size*counter)+'px)';
    }
});
                    
</script>
  <br>
      <br>
      <br>
      
      

