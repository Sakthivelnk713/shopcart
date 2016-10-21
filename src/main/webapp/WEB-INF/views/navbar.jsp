
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #000000;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
   
  
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 

    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    
    
      <ul class="nav navbar-nav">
       <li><a href="<c:url value="/" /> ">Home</a></li>
							 <li><a href="<c:url value="/about" /> ">About Us</a></li>
      </ul>
  <ul class="nav pull-right">
						
							   <li class="divider-vertical"></li>
							   <c:if test="${pageContext.request.userPrincipal.name != null}">
									<li><a href="<c:url value="/user/cart" />">Cart</a></li>
								
								<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
									 <li><a href="<c:url value="/admin/additems" />">View items</a></li>
									 <li><a href="<c:url value="/admin/user" />">View Customer</a></li>
								</c:if>
								<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
									<li><a href="<c:url value="/j_spring_security_logout" />">Sign Out</a></li>
									</c:if>
								 <c:if test="${pageContext.request.userPrincipal.name  == null}">
								 <li><a href="<c:url value="/register" />">Sign Up</a></li>
<li>
              <a   data-toggle="collapse" href="#nav-collapse2" aria-expanded="false" aria-controls="nav-collapse2">Sign in</a>
            </li></ul>
         
          <div class="collapse nav navbar-nav nav-collapse slide-down" id="nav-collapse2">
             <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post" class="navbar-form navbar-right form-inline" role="form">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                 <div class=" center" style="color: #ff0000;"></div>
                   <c:if test="${not empty msg}">
                <div  class="msg" style="color: #ff0000;"> ${msg} <br><br></div>
            </c:if>                <div class="form-group">
                <label class="sr-only" for="Email">User ID</label>
						  <input type="text" id="username" name="username" class="form-control" placeholder="Enter Your User ID"/>
              </div>
              <div class="form-group">
                <label class="sr-only" for="Password">Password</label>
						 <input type="password" id="password" name="password" class="form-control" placeholder="Enter Your Password"/>
              </div>
              <button type="submit" class="btn btn-success">Sign in</button>
                           <a href="<spring:url value="/" />" class="btn btn-danger margin-left25">Cancel</a>
              
               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
              
            </form>
          </div>
        </div><!-- /.navbar-collapse -->
      </div>
      
								</c:if>
								
								
							 </ul>
    </div>
  </div>
</nav><%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
