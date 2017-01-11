# Boba Vehicles
## A class project for CMPSC 431W, Fall 2017
  <p>This is an eBay/Amazon-like project that provides a shopping platform. It supports buyer features such as **buying**, **selling**, **bidding** and **leave rating**. As sellers, you will be able to post **fixed-price vehicles** and **biddable vechicles**.</p>
  <p>To view project report, click https://drive.google.com/file/d/0B5wIrUFGxCPrM19sbi03c041MFE/view?usp=sharing</p>
## Team Members and Tasks: 
1. Yuehui (Vincent) Wang:
  * Website Development, Database Design, Report Writing
2. Zhouqian Jiang:
  * Database Design, Report Writing
3. Chengwei Lin:
  * Database Design, Report Writing
4. Yunqi Zhang:
  * Database Design, Report Writing
5. Dikan Chen:
  * Database Design, Report Writing
  
## Project Details: 
**Website Home Page:** On the main page, people can view all of the vehicles actively listed on the website.
<br>__Home Page__
![Home Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/home%20page.png)

**Application Design:** As a web application, Boba is designed with the **MCV Architecture Method**. It has MySql Database that manages all of the data of users, vehicles and transactions. Node.js is used as the controller that defines the logic between backend and frontend. Express View Engine is used to deliver the contents to users.
<br>__MVC Design__
![App Design]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/Application%20Design.png)

**Database Design:** Relational Database that stores and manages information of users, vehicles and transactions.
<br>__DB Schemas__
![DB Design]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/database%20schema.png)

**Item Page:** Users will be able to see more detailed information about the vehicle after clicking in. Details like ratings, vehicle description, seller, and bidding history will be shown on item page.
<br>__Item Page__
![Item Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/item%20page.png)

**Login And Registration:** Users are being broken down to two categories - Sellers and Buyers.
<br>__Login Page__
![login Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/login.png)
<br>__Login Validation__
![login warning Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/login-warning.png)
<br>__User Registration__
![Registration Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/sign%20up%20page.png)

**Seller:** On seller acount page, seller can view the status of sold and un-sold vehicles. Seller can also set vehicles to be on-sale as Clearance items if wanted.
<br>__Seller Account Page__
![seller Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/profile%20page.png)

**Buyer:** On buyer account page, buyer can view the status of orders. Buyer can also leave ratings to previous orders.
<br>__Buyer Account Page__
![buyer Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/buyer%20order%20history.png)
<br>__Buyer can leave rating__
![buyer Page]
(https://github.com/vincwang/BobaVehicles/blob/master/pics/rating.png)
