<%-- 
    Document   : ContactUs.jsp
    Created on : Apr 26, 2019, 12:24:52 AM
    Author     : mtrimpin
--%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">                        
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

          <div id="indexLeftColumn">
                    <div id="WelcomeText">
                        <form action="action_page.php">

    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your first name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name..">

    <label for="state">State</label>
    <select id="state" name="state">
      <option value="maryland">Maryland</option>
      <option value="virginia">Virginia</option>
      <option value="dc">District of Columbia</option>

    </select>

    <label for="subject">Subject</label>
    <textarea id="subject" name="subject" placeholder="Leave us a comment!" style="height:200px"></textarea>

    <input type="submit" value="Submit">

  </form>
                    </div>
                  </div>
                  <div id="indexRightColumn">
                    <div id="WelcomeText">
                        <p>Maps and address of business</p>
                    </div>
                  </div>
      <br>
      <br>
      <br>
      
