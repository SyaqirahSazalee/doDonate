<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>  
<head>
<meta charset="UTF-8">
<link href="/doDonate/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<title>Add New Good</title>
</head>
<script type="text/javascript">
	
	function validateName()
	{
		var name = document.getElementById("formName");

		if(name.value.length <= 100)
		{
			return true;
		}
		else
		{
			alert("Good name should not more than 100 letters")
			return false;
		}
	}

	function validatePostage()
	{
		var postage = document.getElementById("formPostage");
		var regex = /^[0-9]/;

		if(postage.value.match(regex))
		{
			return true;
		}
		else
		{
			alert("Please insert a valid postage amount")
			return false;
		}
	}

	function validateDescription()
	{
		var description = document.getElementById("formDescription");

		if(description.value.length <= 1000)
		{
			return true;
		}
		else
		{
			alert("Description should not more than 1000 letters")
			return false;
		}
	}

</script>
<body>
	
<div class="container-fluid">
    <div class="row flex-nowrap">
    <%@include file="../../common/donorCenterSideMenu.jspf" %>
          <div class="col py-3">
            
			     <div class ="col-md-8 offset-md-2">
				
					<form method ="post" action="/doDonate/addGoodServlet" enctype="multipart/form-data">
					<fieldset class="form-group border p-5" >
					<legend class="w-auto mb-4"><b>Add New Good</b></legend>
						
						<div class="mb-3">
						  <label for="formName" class="form-label">Name</label>
						  <input type="text" class="form-control" id="formName"  name ="name" required>
						</div>

						<div class="mb-3">
							<label for="conditionList" class="form-label" >Condition</label>
								<select class="form-select" aria-label="conditionList" name ="conditionList">
								  <option value="Brand New" selected>Brand New</option>
								  <option value="Like New">Like New</option>
								  <option value="Well Used">Well Used</option>
								  <option value="Heavily Used">Heavily Used</option>
								</select>
						</div>
						
						<div class="mb-3">
							<label for="categoryList" class="form-label" >Category</label>
								<select class="form-select" aria-label="categoryList" name="categoryList">
								  <option value="1" selected>Women Fashion</option>
								  <option value="2">Men Fashion</option>
								  <option value="3">Kids</option>
								  <option value="4">Home & Living</option>
								  <option value="5">Hobbies & Games</option>
								  <option value="6">Others</option>
								</select>
						</div>
						
						<div class="mb-3">
						  <label for="formQuantity" class="form-label">Quantity</label>
						  <input type="number" class="form-control" id="formQuantity"  name ="quantity" min="1" required>
						</div>
						
						<div class="mb-3">
						  <label for="formPostage" class="form-label">Postage</label>
						  <input type="text" class="form-control" id="formPostage"  name ="postage" required>
						</div>
						
						<div class="mb-3">
						  <label for="formDescription" class="form-label">Description</label>
						  <input type="text" class="form-control" id="formDescription"  name ="description" required>
						</div>
						
						<div class="mb-3">
						  <label for="formImage" class="form-label">Image</label>
						  <input class="form-control" type="file" id="formImage" name="image" multiple>
						</div>
						
						<div class="col-md-12 text-center">
							<input name="Submit" type="submit" class="btn btn-success" value="Submit" onclick="validateName(); validatePostage(); validateDescription()" /> 
						</div>			
						</fieldset>
			
					</form>
				</div>	
        </div>
    </div>
</div>
    <script src="/doDonate/webjars/bootstrap/5.1.3/js/bootstrap.bundle.js"></script>	
</body>
</html>