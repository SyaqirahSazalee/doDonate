<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>  
<head>
<meta charset="UTF-8">
    
	<link href="/doDonate/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">	
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>Add New Campaign</title>
</head>
<script type="text/javascript">
	
	//validate campaign name should not exceed 100 characters
	function validateName()
	{
		var name = document.getElementById("formName");

		if(name.value.length <= 100)
		{
			return true;
		}
		else
		{
			alert("Campaign name should not more than 100 letters")
			return false;
		}
	}

	//validate the target amount only accept numbers and dot
	function validateTarget()
	{
		var target = document.getElementById("formTarget");
		var regex = /^[0-9]/;

		if(target.value.match(regex))
		{
			return true;
		}
		else
		{
			alert("Please insert a valid target amount")
			return false;
		}
	}

</script>
<body>
	
<div class="container-fluid">
    <div class="row flex-nowrap">
    <%@include file="../../common/charityCenterSideMenu.jspf" %>
          <div class="col py-3">
            
			     <div class ="col-md-8 offset-md-2">
				
					<form method ="post" action="/doDonate/addCampaignServlet" enctype="multipart/form-data">
					<fieldset class="form-group border p-5" >
					<legend class="w-auto mb-4"><b>Add New Campaign</b></legend>
						
						<div class="mb-3">
						  <label for="formName" class="form-label">Campaign Name</label>
						  <input type="text" class="form-control" id="formName"  name ="name" required>
						</div>
										
						<div class="mb-3">
							<label for="categoryList" class="form-label" >Campaign Category</label>						
								<select class="form-select" aria-label="categoryList" name="categoryList" required>
									<c:forEach items ="${categories}" var="category">
										<option value="${category.id}">${category.name}</option>
									</c:forEach>								  
								</select>
						</div>	
						
						<label for="formTarget" class="form-label">Campaign Target</label>
						<div class="input-group mb-3">	
						 <span class="input-group-text "> MYR </span>					  
						  <input type="text" class="form-control " id="formTarget"  name ="target" required>
						</div>	
						
						<!--maxlength 1000 characters only-->
						<div class="mb-3">
						  <label for="formProblem" class="form-label">Problem</label>						
						  <textarea class="form-control" id="formProblem" name ="problem" rows="5" maxlength="1000" required></textarea>
						</div>
						
						<!--maxlength 1000 characters only-->
						<div class="mb-3">
						  <label for="formSolution" class="form-label">Solution</label>
						  <textarea class="form-control" id="formSolution" name ="solution" rows="5" maxlength="1000" required></textarea>						 
						</div>
						
						<!--maxlength 1000 characters only-->
						<div class="mb-3">
						  <label for="formImpact" class="form-label">Impact</label>
						   <textarea class="form-control" id="formImpact" name ="impact" rows="5" maxlength="1000" required></textarea>	
						</div>
					
			          	<div class="mb-3">
			                <label for="date" class="col-form-label">Start Date</label>
			                    <div class="input-group date" id="datepicker">		                        
			                        <span class="input-group-append">
			                            <span class="input-group-text bg-white d-block">
			                                <i class="fa fa-calendar"></i>
			                            </span>
			                        </span>
			                        <input type="text" class="form-control" id ="createdAt"  name ="createdAt" required>
			                    </div>
               			 	</div>       
			              
               		 <div class="mb-3">
			                <label for="date" class="col-form-label">Due Date</label>
			                    <div class="input-group date" id="datepicker">		                        
			                        <span class="input-group-append">
			                            <span class="input-group-text bg-white d-block">
			                                <i class="fa fa-calendar"></i>
			                            </span>
			                        </span>
			                        <input type="text" class="form-control" id ="dueAt"  name ="dueAt" required>
			                    </div>
               			 	</div>
               			 
						<div class="mb-3">
						  <label for="formImage" class="form-label">Image</label>
							
						  <input class="form-control " type="file" id="formImage" name="image" required> 
						</div>
						
						<div class="col-md-12 text-center">
							<input name="Submit" type="submit" class="btn btn-success" value="Submit" onclick="validateName(); validateTarget();" /> 
						</div>			
						</fieldset>
			
					</form>
				</div>	
        </div>
    </div>
</div>
	<script>
		function setSelectedIndex(s, text) {
		
		    for ( var i = 0; i < s.options.length; i++ ) {
		        if ( s.options[i].text == text ) {
		            s.options[i].selected = true;
		            return;
		        }
		
		    }
		
		}
		
		setSelectedIndex(document.getElementById('categoryList'),"${categories[0].name}");		
	</script>
	<script type="text/javascript">
        
	
		$(function() {
            $('#datepicker').datepicker();
           
        });
		 $(function () {
	         $('#dueAt').datepicker({
	             format: "yyyy-mm-dd"
	         });
	     });
		 $(function () {
	         $('#createdAt').datepicker({
	             format: "yyyy-mm-dd"
	         });
	     });	
    </script>
    
	<script src="/doDonate/webjars/bootstrap/5.1.3/js/bootstrap.bundle.js"></script>	   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
   
</body>
</html>