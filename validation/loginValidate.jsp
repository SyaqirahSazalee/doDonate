<html>
<head>
	<title>Email Validation</title>

</head>
<body>
	<form name="frm" method="post" action="#">

		<!--validation on email length not more than 30 letters in line-13 [malength="30"]-->
		<div class="mb-3">
		  <label for="formEmail" class="form-label">Email</label>
		  <br>
		  <input type="email" class="form-control" id="formEmail"  name ="email" maxlength="30" required>
		</div>

		<br>

		<!--validation on password as specified in (refer line-27 to line-34) in line-22 [pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[?!@#$%^&*]).{8,12}"]-->
		<div class="mb-3">
		  <label for="formPassword" class="form-label">Password</label>
		  <br>
		  <input type="password" class="form-control" id="formPassword"  name ="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[?!@#$%^&*]).{8,12}" required>
		</div>
			
		<br>

		<div id="message">
			<h3>Password must contain the following:</h3>
		  	<p id="letter" class="invalid">A <b>lowercase</b> letter</p>
		  	<p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
		 	<p id="number" class="invalid">A <b>number</b></p>
		 	<p id="number" class="invalid">A <b>special character</b></p>
		  	<p id="length" class="invalid">Minimum <b>8 to 12 characters</b></p>
		</div>

		<br>

		<div class="col-md-12 text-center">
			<input name="Submit" type="submit" class="btn-login" value="Log In" />
		</div>

	</form>
</body>
</html>