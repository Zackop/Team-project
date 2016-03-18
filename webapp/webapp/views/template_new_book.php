<div id="container7">
	<?php 
		if ($showInsertBookError == True || $showInsertBookError2 == True){
			$errorMsg = "<div class = 'alert alert-danger'>";
			$errorMsg2 = "</div>";
			echo $errorMsg;
			echo $errorInsertBookMsg;	
			echo $errorMsg2;
		}
	?>
</div>

<form action="index.php" method="post">
	<h1>New Book</h1>
	
	<div class="form-group">
		<label>Book Name:</label> 
		<input type="text" name="book_name" placeholder="enter book name" required class="form-control">
	</div>
	
	<div class="form-group">
		<label>Book Author: </label> 
		<input type="text" name="book_auth" placeholder="enter book author" required class="form-control">
	</div>
	
	<div class="form-group">
		<label>Book Category:</label> 
		<input type="text" name="book_categ" placeholder="enter book category" required class="form-control">
	</div>
	
	<div class="form-group">
		<label>Date Published:</label> 
		<input type="date" name="book_date" required placeholder="enter publish date" required class="form-control">
	</div>
	
	<input type='hidden' name='action' value='insertBook'> 
	<input type="submit" value='Insert' class='btn btn-success'>
</form>
