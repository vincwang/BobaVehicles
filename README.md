# Boba Vehicles
## A class project for CMPSC 431W, Fall 2017
  <p>This is an eBay/Amazon-like project that provides a shopping platform. It supports buyer features such as **buying**, **selling**, **bidding** and **leave rating**. As sellers, you will be able to post **fixed-price vehicles** and **biddable vechicles**.</p>
## Team Members: 
  **Yuehui (Vincent) Wang:** Website Development, Database Design, Report Writing<br>
  **Zhouqian Jiang:** Database Design, Report Writing<br>
  **Chengwei Lin:** Database Design, Report Writing<br>
  **Yunqi Zhang:** Database Design, Report Writing<br>
  **Jiaxin Liang:** Database Design, Report Writing<br>
  **Dikan Chen:** Database Design, Report Writing<br>
  
## Project Details: 
**Website Home Page:** On the main page, people can view all of the vehicles actively listed on the website.
<br>Home Page
![Home Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/home%20page.png)

**Application Design:** As a web application, Boba is designed with the **MCV Architecture Method**. It has MySql Database that manages all of the data of users, vehicles and transactions. Node.js is used as the controller that defines the logic between backend and frontend. Express View Engine is used to deliver the contents to users.
<br>MVC Design
![App Design]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/Application%20Design.png)

**Database Design:** Relational Database that stores and manages information of users, vehicles and transactions.
<br>DB Schemas
![DB Design]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/database%20schema.png)

**Item Page:** Users will be able to see more detailed information about the vehicle after clicking in. Details like ratings, vehicle description, seller, and bidding history will be shown on item page.
<br>Item Page
![Item Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/item%20page.png)

**Login And Registration:** Users are being broken down to two categories - Sellers and Buyers.
<br>Login Page
![login Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/login.png)
<br>Login Validation
![login warning Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/login-warning.png)
<br>User Registration
![Registration Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/sign%20up%20page.png)

**Seller:** On seller acount page, seller can view the status of sold and un-sold vehicles. Seller can also set vehicles to be on-sale as Clearance items if wanted.
<br>Seller Account Page
![seller Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/profile%20page.png)

**Buyer:** On buyer account page, buyer can view the status of orders. Buyer can also leave ratings to previous orders.
<br>Buyer Account Page
![buyer Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/buyer%20order%20history.png)
<br>Buyer can leave rating
![buyer Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/rating.png)
