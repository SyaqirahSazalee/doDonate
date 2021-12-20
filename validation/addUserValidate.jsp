<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
  
<!DOCTYPE html>
<html>
<head>
	<link href="/doDonate/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
	<title>doDonate - Sign Up [Normal]</title>
	
	<script type="text/javascript">

		//validate name not more than 100 letters
		function validateName()
		{
			var name = document.getElementById("formName");

			if(name.value.length <= 100)
			{
				return true;
			}
			else
			{
				alert("Name should not more than 100 letters")
				return false;
			}
		}

		//validate IC must 12 characters only
		function validateIC()
		{
			var ic = document.getElementById("formIC");

			if(ic.value.length == 12)
			{
				return true;
			}
			else
			{
				alert("Please enter a valid IC")
				return false;
			}
		}

		//validate phone number and 10-12 characters only
		function validatePhoneNumber() 
		{
		    var phone = document.getElementById('formPhone');

		    var regEx = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;

		    if(phone.value.match(regEx))
		    {
		      	return true;
		    }
		   	else
		    {
		     	alert("Please enter a valid phone number");
		     	return false;
		    }

		    if(phone.value.length >= 10 || phone.value.length <= 12)
		    {
		      	return true;
		    }
		    else
		    {
		    	alert("Please enter a valid phone number");
		     	return false;
		    }
		}

		//validate email not more than 30 letters/characters
		function validateEmail()
		{
			var email = document.getElementById("formEmail")

			if(email.value.length <= 30)
			{
				return true;
			}
			else
			{
				alert("Please enter a valid email")
				return false;
			}
		}

		//validate street not more than 250 letters/characters
		function validateStreet()
		{
			var street = document.getElementById("formStreet");

			if(street.value.length <= 250)
			{
				return true;
			}
			else
			{
				alert("Please enter a valid street")
				return false;
			}
		}

		//validate postcode only 5 characters
		function validatePostcode()
		{
			var postcode = document.getElementById("formPostcode");

			if(postcode.value.length == 5)
			{
				return true;
			}
			else
			{
				alert("Please enter a valid postcode")
				return false;
			}
		}

		//validate city not more than 50 letters/characters
		function validateCity()
		{
			var city = document.getElementById("formCity");

			if(city.value.length <= 50)
			{
				return true;
			}
			else
			{
				alert("Please enter a valid city")
				return false;
			}
		}

		//validate state not more than 20 letters/characters
		function validateState()
		{
			var state = document.getElementById("formState");

			if(state.value.length <= 20)
			{
				return true;
			}
			else
			{
				alert("Please enter a valid state")
				return false;
			}
		}

		//validate confirmed password must match with first password entered
		function validateConfirmPassword()
		{
			var password1 = document.getElementById("formPassword1").value;
			var password2= document.getElementById("formPassword2").value;
			console.log(password1, password2);

			if(password1.length != 0)
			{
				if(password1 == password2)
				{
					return true;
				}
				else
				{
					alert("Password do not match")
					return false;
				}

			}
		}

	</script>

</head>

<body>

	<% //TODO validate input  %>
	<div class ="col-md-6 offset-md-3">
		<br><br>
		<h1>Sign Up<small> [Normal User]</small></h1>
		<form method ="post" action="/doDonate/addUserServlet">

			<br>

			<div class="mb-3">
			  <label for="formName" class="form-label">Name</label>
			  <input type="text" class="form-control" id="formName" name ="name" required>
			</div>

			<br>

			<div class="mb-3">
			  <label for="formIC" class="form-label">Identity Number</label>
			  <input type="text" class="form-control" id="formIC"  name ="ic" required>
			</div>

			<br>

			<div class="mb-3">
			  <label for="formPhone" class="form-label">Phone Number</label>
			  <input type="text" class="form-control" id="formPhone"  name ="phone" required>
			</div>

			<br>

			<div class="mb-3">
			  <label for="formEmail" class="form-label">Email</label>
			  <input type="email" class="form-control" id="formEmail"  name ="email" required>
			</div>

			<br>

			<div class="mb-3">
			  <label for="formStreet" class="form-label">Street</label>
			  <input type="text" class="form-control" id="formStreet"  name ="street" required>
			</div>

			<br>

			<div class="mb-3">
			  <label for="formPostcode" class="form-label">Postcode</label>
			  <input type="text" class="form-control" id="formPostcode"  name ="postcode" required>
			</div>

			<br>

			<div class="mb-3">
			  <label for="formCity" class="form-label">City</label>
			  <input type="text" class="form-control" id="formCity"  name ="city" required>
			</div>

			<br>

			<div class="mb-3">
			  <label for="formState" class="form-label">State</label>
			  <input type="text" class="form-control" id="formState"  name ="state" required>
			</div>

			<br>

			<div class="mb-3">
			  <label for="formPassword1" class="form-label">Password</label>
			  <input type="password" class="form-control" id="formPassword1"  name ="password1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[?!@#$%^&*]).{8,12}" required>
			</div>

			<br>

			<div class="mb-3">
			  <label for="formPassword2" class="form-label">Confirmed Password</label>
			  <input type="password" class="form-control" id="formPassword2" name="password2" >
			</div>
			
			<br>

			<div class="mb-4">
				<input name="Submit" type="submit" class="btn-signup" value="Submit" onclick="validateName(); validateIC(); validatePhoneNumber(); validateEmail(); validateStreet(); validatePostcode(); validateCity(); validateState(); validateConfirmPassword()"> 
			
				<a href ="/doDonate/jsp/charity/addCharity.jsp" >Sign Up as Charity?</a>
			</div>

		</form>
			
		<br><br>
	</div>	

	<script src="/doDonate/webjars/bootstrap/5.1.3/js/bootstrap.bundle.js"></script>
</body>
</html>