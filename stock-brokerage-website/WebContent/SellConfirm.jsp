<html>
<head>
  <title>Sell Stocks Confirmation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<script>
$(function(){
  $("#nav-placeholder").load("Nav.jsp");
});
</script>
<body class="body_bg">
<%
		HttpSession nsession = request.getSession(false);
		if (nsession != null) {
			String logged = (String) session.getAttribute("logged");
			if (logged == null) {
				String redirectURL = "https://localhost:8443/stock-brokerage-website/Login.jsp";
				response.sendRedirect(redirectURL);
			}
		} else {
			String redirectURL = "https://localhost:8443/stock-brokerage-website/Login.jsp";
			response.sendRedirect(redirectURL);
		}
	%>
<div id="nav-placeholder">

</div>
	<br>
 <div class="container">
         <h2>Confirmation</h2>
         <br>
   <form>
<div class="alert alert-success">
   <h4 class="alert-heading">Stock Sell Confirmation</h4>
    <p>The selected stocks have been sold to the interested party.</p>
  <p>You can view your available stocks under 'My Stocks' page.</p>
  <p>If you have allowed a Recurring Sell, the schedules are available in 'Sell Recurring Schedules' page</p>
  </div>
</form>
</div>
</body>
</html>