
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
         <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C.O.S.R.S</title>
<!-- booot strap,css and java script files -->

<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

<link href="<c:url value="/resources/css/FormerStudentsView.css"/>" rel="stylesheet">


</head>
<body>
<!-- Header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-toggle"></span>
      </button>
          <a class="navbar-brand" href="#">Convocation Old Students Registration System</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> Admin <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            <li><a href="#">My Profile</a></li>
            <li><a href="#"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div><!-- /container -->
</div>
<!-- /Header -->

<!-- Main -->
<div class="container">
  
  <!-- upper section -->
  <div class="row">
	<div class="col-sm-2">
      <!-- left -->
     <a href="<c:url value="/StudentForm"/>" target=""><i class="glyphicon glyphicon-flash"></i>Home</a></h3>   
      <hr>
      
      <ul class="nav nav-stacked">
        
 <li><a href="<c:url value="/StudentForm"/>" target=""><i class="glyphicon glyphicon-plus"></i> Add Details</a></li>
        <li><a href="<c:url value="/FormerStudentDetailsView"/>" target=""><i class="glyphicon glyphicon-book"></i> View Details</a></li>
         <li><a href="<c:url value="/sendEmailView"/>" target=""><i class="glyphicon glyphicon-envelope"></i> Send Email</a></li>
       <li><a href="<c:url value="/downloadExcel"/>" target=""><i class="glyphicon glyphicon-download"></i>Down load Excel</a></li>
   
      </ul>
      
      <hr>
      
  	</div><!-- /span-3 -->
    <div class="col-sm-9">
      	
      <!-- column 2 -->	
     
      
	   <div class="row">
            <!-- center left-->	
         	<div class="col-md-12">
			  
              <hr>
              
              <div class="panel panel-default" >
                  <div class="panel-heading"> 
<div class="container">
	<div class="row">
	
        <div class="searchform text-center">
                <br/>
                <form:form method="POST"  action="deleteByRegno" commandName="studentsForm" >
                    <form:input path="regNo"/>
                    <input type="submit"/>
                </form:form>
            </div>
	</div>
</div> </div>
                  <div class="panel-body">
                    
                    <!-- -List of all former students-->
                  <form:form id="yourForm" action="deleteslectedstudents" method="POST" commandName="studentsForm" >    
                     

                       <br><br>
                     
                     
                                 <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                   
                        <th class="hidden-xs">ID</th>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                        <th>Course Studied </th>
                          <th>RegNo </th>
                      
                        <th>Image</th>
                       
                 
                        <th>Edit/DELETE</th>
                    </tr> 
                  </thead>
                  <tbody id="myTable">
      
                          <tr>
                         
                            <td>${studentsformbyregno.id}</td>
                            <td>${studentsformbyregno.fullName}</td>
                            <td>${studentsformbyregno.email}</td>
                            <td>${studentsformbyregno.phoneNumber}</td>
                            <td>${studentsformbyregno.courseStudied}</td>
                              <td>${studentsformbyregno.regNo}</td>
                            
                                  <td width="90px">   <img width="70" height="70" src="<c:url value='/resources/image/${studentsformbyregno.imageLink}'/>" alt="Photo of Youthful William" id="pic" align="right" />
                             <td align="center">
                              <a class="btn btn-default" href=""><em class="fa fa-pencil"></em></a>
                              <a class="btn btn-danger" href="deleteformerstudent/${studentsformbyregno.id}"><em class="fa fa-trash"></em></a>
                            </td>
                          </tr>
                 
                          
                        </tbody>
                </table>
                     
                          
    </form:form>
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                    
                    
                    </div>

                  </div><!--/panel-body-->
              </div><!--/panel-->                     
              
          	</div><!--/col-->
         
            <!--center-right-->
        	<!--/col-span-6-->
     
       </div><!--/row-->
  	</div><!--/col-span-9-->
    
  </div><!--/row-->
  <!-- /upper section -->
  
  <!-- lower section -->
<!--/row-->
  
</div><!--/container-->
<!-- /Main -->


<footer class="text-center">All rights Reserved&nbsp;&nbsp;<a href=""><strong>Kyambogo Convocation </strong></a></footer>


<!-- /.modal -->




  
</body>
</html>