<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transefer Money</title>
    <link rel="stylesheet" href="css/transfer_money.css">

    <link rel="shortcut icon" type="image/png" href="images/logo1.jpg">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">

<script>
function myFunction() {
  alert("Transaction successfull!");
}
</script>

</head>
<body>
<h1 id="head">Transfer Money</h1>
    <div class="transact">
        <input type="submit" onclick="location.href ='/View_user.jsp'" name="submit" class="send-btn1" value="User Details">
        <input type="submit" onclick="location.href ='/transactionhistory.jsp'" name="submit" class="send-btn2" value="Transaction History">
    </div>
    <div >
   <form class="transact-form" action="/transact">
       <label  class="label1">Sender   :  </label>
       <input class="box" id="box2" type="text" name="sender"><br><br>
       
       <label for="users" class="label1">Receiver : </label>
       <select name="receiver" id="users" class="box">
       <option value="Select">Select</option>
        <option value="Prabhavathi">Prabhavathi</option>
        <option value="Maha">Maha</option>
        <option value="Riya">Riya</option>
        <option value="Subha">Subha</option>
        <option value="Keerthi">Keerthi</option>
        <option value="Janani">Janani</option>
        <option value="Gowtham">Gowtham</option>
        <option value="Ram">Ram</option>
        <option value="Gayathri">Gayathri</option>
        <option value="Vinay">Vinay</option>

       </select><br><br>

       <label class="label1">Amount : </label>
       <input name="amount" id="box1"class="box" type="text">
       
       <input onclick="myFunction()" type="submit" name="submit" class="btn" value="Submit">
   </form>
</div>





</body>
</html>