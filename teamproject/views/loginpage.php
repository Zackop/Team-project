
<html lang="en">
<head>
</head>

<?php /*just to make it work, indivudal style */
include "css.php";

if ($showLoginError == True){
	$errorMsg = "<div class = 'alert alert-danger'>";
	$errorMsg2 = "</div>";
	echo $errorMsg;
	echo $errorLoginMsg;
	echo $errorMsg2;
}

?>
	
	<body>
		<div id="logo">
			<img src="imgs/login/nct_logo.png" alt="logo" style="width:350px;height:174px;">
		</div>
		
		<div id="main_box" >
			<form class="login">
				<input type="text" name="name" placeholder="insert your first name" required class="form-control">
				<input type="password" name="password" placeholder="insert your password" required class="form-control">
				<label for="password"></label>
				<input type='hidden' name='action' value='loginUser'> 
				<input type="submit" value='Log in' class='btn btn-success'>
			</form>
		</div>
	</body>
</html>