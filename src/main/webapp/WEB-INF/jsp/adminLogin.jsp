
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>K.O.S.R.S</title>
<!-- booot strap,css and java script files -->

<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

<link href="<c:url value="/resources/css/.css"/>" rel="stylesheet">


</head>
<body>
<!-- Header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-toggle"></span>
      </button>
      <a class="navbar-brand" href="#" style="color:#1E90FF;">Kyambogo Old Students Registration System</a>
 </div>
    <div class="navbar-collapse collapse">
   
    </div>
  </div><!-- /container -->
</div>
<!-- /Header -->

<!-- Main -->
<div class="container">
  
  <!-- upper section -->
  <div class="row">
	<div class="col-sm-3">
      <!-- left -->
       <hr>
      
     
      
      <hr>
      
  	</div><!-- /span-3 -->
    <div class="col-sm-9">
      	
      <!-- column 2 -->	
     
      
	   <div class="row">
            <!-- center left-->	
         	<div class="col-md-8">
			  
              <hr>
              
              <div class="panel panel-default" >
                  <div class="panel-heading">  <h4><b>Login</b></h4></div>
                  <div class="panel-body">
                    
                    <!-- -Form    -->
                     
                    <form:form id=""  action="login"   method="POST"  class="form-horizontal" modelAttribute="logindetails">
        <fieldset>
        <div class="form-group">
            <label class="col-lg-2 control-label" for="firstName">UserName</label>
            <div class="col-lg-10">
            <form:input path="username" class="form-control" placeholder="Enter user name" id="one" type="text"/>
            <h5 style="color: #ff0000;">${error}</h5> 
            </div>
          
        </div>
        <br>  
    <div class="form-group">
            <label class="col-lg-2 control-label" for="firstName">Password</label>
            <div class="col-lg-10">
            <form:input path="password" class="form-control" placeholder="password" id="one" type="password"/>
         <form:errors path="password" cssStyle="color: #ff0000;" />
         <h5 style="color: #ff0000;">${errorpassowrd}</h5> 
            </div>
          
        </div>
        <br>  

       

    

        <div class="modal-footer">
            <button class="btn btn-primary" type="submit" >Submit</button>
            <button class="btn btn-default" data-dismiss="modal" type="reset">Reset</button> 
        </div><!-- end modal-footer -->
        </fieldset>
    </form:form>
        <%
        String errorString = (String) request.getAttribute("error");
        if (errorString != null && errorString.trim().equals("true")) {
            out.println("<span class=\"errorblock\">Incorrect login name or password.please insert the correct ones");
        }
    %>
                     
                     
                     
                      <!--  -->
                    
                    
                    
                    </div>

                  </div><!--/panel-body-->
              </div><!--/panel-->                     
             
          	</div><!--/col-->
         
            <!--center-right-->
        	<!--/col-span-6-->
     
       </div><!--/row-->
  	</div><!--/col-span-9-->
      <h6 style=""><a class="pull-right" href="<c:url value="/"/>" >Back</a></h6>
      
  </div><!--/row-->
  <!-- /upper section -->
  
  <!-- lower section -->
<!--/row-->
  
</div><!--/container-->
<!-- /Main -->



<footer class="text-center">All rights Reserved&nbsp;&nbsp;<a href=""><strong>Kyambogo Convocation.</stong></a></footer>


<!-- /.modal -->




  
</body>
</html>