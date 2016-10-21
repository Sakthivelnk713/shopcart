<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/header.jsp"%>

<%@include file="/WEB-INF/views/navbar.jsp"%>

        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="usersDetail">
				   
				    <div class="span12 margin-top">
                   <div class="span12 center margin-bottom"> 
					<h3>Registration Form</h3>
					</div>
				   <center>
				  <div class="span6 no_margin_left">
						<legend>Your Personal Details</legend>
					  <div class="control-group">
						<label class="control-label">Name</label><form:errors path="userFullName" cssStyle="color: #ff0000"/>
						<div class="controls docs-input-sizes">
            				<form:input path="userFullName" id="fullname" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Email</label><span style="color: #ff0000">${emailMsg}</span>
						   <form:errors path="userEmail" cssStyle="color: #ff0000"/>
						<div class="controls docs-input-sizes">
						  <form:input path="userEmail" id="email" class="form-Control"/>
						</div>
					  </div>					  
					  <div class="control-group">
						<label class="control-label">Phone</label>
						<div class="controls docs-input-sizes">
						  <form:input path="userPhone" id="phone" class="form-Control"/>
						</div>
					  </div>
					<div class="control-group">
						<label class="control-label">Username</label><span style="color: #ff0000">${usernameMsg}</span><form:errors
               					 path="username" cssStyle="color: #ff0000"/>
						<div class="controls docs-input-sizes">
						  <form:input path="Username" id="username" class="form-Control"/>
						</div>
					  </div>
						<div class="control-group">
						<label class="control-label">Password</label><form:errors path="password" cssStyle="color: #ff0000"/>
						<div class="controls docs-input-sizes">
						  <form:password path="password" id="password" class="form-Control"/>
						</div>
					  </div>						  
				   </div>
					  <div class="span6">
					<legend>Billing Address </legend>
					  <div class="control-group">
						<label class="control-label">House Number</label>
						<div class="controls docs-input-sizes">
						  <form:input path="billingAddress.houseNumber" id="billingHouseNumber" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Address Line 1</label>
						<div class="controls docs-input-sizes">
						 <form:input path="billingAddress.addressLine1" id="billingAddressLine1" class="form-Control"/>
						</div>
					   </div>
					   <div class="control-group">
						<label class="control-label">Address Line 2</label>
						<div class="controls docs-input-sizes">
						 <form:input path="billingAddress.addressLine2" id="billingAddressLine2" class="form-Control"/>
						</div>
					   </div>					 
					   <div class="control-group">
						<label class="control-label">City</label>
						<div class="controls docs-input-sizes">
						  <form:input path="billingAddress.city" id="billingCity" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">State</label>
						<div class="controls docs-input-sizes">
						  <form:input path="billingAddress.state" id="billingState" class="form-Control"/>
						</div>
					  </div>					  
					  <div class="control-group">
						<label class="control-label">Country</label>
						<div class="controls docs-input-sizes">
							<form:input path="billingAddress.country" id="billingCountry" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Zipcode</label>
						<div class="controls docs-input-sizes">
							<form:input path="billingAddress.zipCode" id="billingZip" class="form-Control"/>
						</div>
					  </div>
					  </div>
					 
					  <div class="span12 center">
					  			<input type="submit" value="submit" class="btn btn-primary"  />
							  <a href="<c:url value="/" />" class="btn btn-danger margin-left25">Cancel</a>
								</div>
								</form:form>
</center>
        <%@include file="/WEB-INF/views/footer.jsp" %>
