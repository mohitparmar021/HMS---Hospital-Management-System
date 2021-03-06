<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Doctor</title>
<link rel="stylesheet" type="text/css" href="assets/boots/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/CSS/update-doctor-data-style.css">
</head>
<body>
<div class="head">
       <div class="container">
       	   <p class="font-weight-normal text-light">Update Doctor </p>
       	   
       </div>
</div>

 <div class="container"> 
	<form action="UpdateDoctorDetail" method="post"> 
	<%
	try
	{
		  ResultSet rs=(ResultSet)request.getAttribute("doctordata");
	       while(rs.next())
	       {
	   %>
	    	<div class="row rowspace">
      	         <div class="col-xl-2">  
      	              <label for="r-id" class="text-label">Doctor Id</label>	  	      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" value="<%=rs.getString("did")%>" name="d-id" class="form-control">	 	
      	         </div>
      	          <div class="col-xl-2"> 
	  	           	
      	         </div>
	  	           	 
      	          <div class="col-xl-4">  
      	          <input type="submit" class="btn-sm bt-back" value="Update">
      	          <button class="btn-sm bt-back"><a href="Doctor-Home-Page.html">Home</a></button>	 
      	          <button class="btn-sm bt-back"><a href="Update-Doctor.html">Back</a></button>	 
      	         </div>
      	        
      	       
            </div>
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	             <label for="d-first-name" class="text-label">First Name</label> 	      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="d-first-name" value="<%=rs.getString("firstname")%>" class="form-textbox form-control">	 	
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	 <label for="d-last-name" class="text-label">Last Name</label>	
      	         </div>
      	          <div class="col-xl-4">  
      	            <input type="text" name="d-last-name" value="<%=rs.getString("lastname")%>" class="form-textbox form-control">
      	         </div>
      	       
            </div>
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="gender" class="text-label">Gender</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	   <%
      	             String gender=rs.getString("gender");   	            
      	             if(gender.equals("male"))
      	             {
      	          %>   
      	            	 <select class="form-control" name="gender" >
 	   	       	     	         <option>-Select-Please-</option>
 	   	       	     	         <option selected  value="male">Male</option>
 	   	       	     	         <option value="female">Female</option>
 	   	       	          </select>   
      	          <% 	 
      	             }
      	             else if(gender.equals("female"))
      	             {
      	            %>
      	                  <select class="form-control" name="gender">
 	   	       	     	         <option>-Select-Please-</option>
 	   	       	     	         <option  value="male">Male</option>
 	   	       	     	         <option selected value="female">Female</option>
 	   	       	          </select>   
      	            <%  
      	             }
      	             else
      	             {
      	            	 %>
     	                  <select class="form-control" name="gender">
	   	       	     	         <option selected>-Select-Please-</option>
	   	       	     	         <option  value="male">Male</option>
	   	       	     	         <option  value="female">Female</option>
	   	       	          </select>   
     	            <%   
      	             }
      	         %>
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	 <label for="d-blood-group" class="text-label">Blood Group</label>
      	         </div>
      	         <div class="col-xl-4">  
      	            <%
      	             String bloodgrp=rs.getString("bloodgroup");
      	             if(bloodgrp.equals("O+"))
      	             {
      	          %>  	 
      	            	 <select class="form-control" name="blood-grp">
      	     	               <option>-Select-Please-</option>
 	   	       	     	              <option value="O+" selected>O+</option>
 	   	       	     	              <option value="A+">A+</option>
 	   	       	     	              <option value="B+">B+</option>
 	   	       	     	              <option value="O-">O-</option>
 	   	       	     	              <option value="A-">A-</option>
 	   	       	     	              <option value="B-">B-</option>
 	   	       	     	              <option value="AB+">AB+</option>
 	   	       	     	              <option value="AB-">AB-</option>
      	                </select>
      	         <%      
      	             }
      	             else if(bloodgrp.equals("A+"))
      	             {
      	            	 %>  	 
      	            	 <select class="form-control" name=blood-grp>
      	     	              <option>-Select-Please-</option>
      	     	                      <option value="O+" >O+</option>
 	   	       	     	              <option value="A+" selected>A+</option>
 	   	       	     	              <option value="B+">B+</option>
 	   	       	     	              <option value="O-">O-</option>
 	   	       	     	              <option value="A-">A-</option>
 	   	       	     	              <option value="B-">B-</option>
 	   	       	     	              <option value="AB+">AB+</option>
 	   	       	     	              <option value="AB-">AB-</option>
      	                </select>
      	         <%      
      	             }
      	           else if(bloodgrp.equals("B+"))
    	             {
    	            	 %>  	 
    	            	 <select class="form-control" name="blood-grp">
    	     	              <option>-Select-Please-</option>
    	     	              <option value="O+" >O+</option>
 	   	       	     	              <option value="A+" >A+</option>
 	   	       	     	              <option value="B+" selected>B+</option>
 	   	       	     	              <option value="O-">O-</option>
 	   	       	     	              <option value="A-">A-</option>
 	   	       	     	              <option value="B-">B-</option>
 	   	       	     	              <option value="AB+">AB+</option>
 	   	       	     	              <option value="AB-">AB-</option>
    	                </select>
    	         <%      
    	             }
      	         else if(bloodgrp.equals("O-"))
  	             {
  	            	 %>  	 
  	            	 <select class="form-control" name="blood-grp">
  	     	              <option>-Select-Please-</option>
  	     	                          <option value="A+" >A+</option>
 	   	       	     	              <option value="B+" >B+</option>
 	   	       	     	              <option value="O-" selected>O-</option>
 	   	       	     	              <option value="A-">A-</option>
 	   	       	     	              <option value="B-">B-</option>
 	   	       	     	              <option value="AB+">AB+</option>
 	   	       	     	              <option value="AB-">AB-</option>
  	                </select>
  	         <%      
  	             }
      	       else if(bloodgrp.equals("A-"))
	             {
	            	 %>  	 
	            	 <select class="form-control" name="blood-grp">
	     	              <option>-Select-Please-</option>
	     	                         <option value="A+" >A+</option>
 	   	       	     	              <option value="B+" >B+</option>
 	   	       	     	              <option value="O-" >O-</option>
 	   	       	     	              <option value="A-" selected>A-</option>
 	   	       	     	              <option value="B-">B-</option>
 	   	       	     	              <option value="AB+">AB+</option>
 	   	       	     	              <option value="AB-">AB-</option>
	                </select>
	         <%      
	             }
      	     else if(bloodgrp.equals("B-"))
	             {
	            	 %>  	 
	            	 <select class="form-control" name="blood-grp">
	     	              <option>-Select-Please-</option>
	     	                          <option value="A+" >A+</option>
 	   	       	     	              <option value="B+" >B+</option>
 	   	       	     	              <option value="O-" >O-</option>
 	   	       	     	              <option value="A-" >A-</option>
 	   	       	     	              <option value="B-" selected>B-</option>
 	   	       	     	              <option value="AB+">AB+</option>
 	   	       	     	              <option value="AB-">AB-</option>
	                </select>
	         <%      
	             }
      	   else if(bloodgrp.equals("AB+"))
             {
            	 %>  	 
            	 <select class="form-control" name="blood-grp">
     	              <option>-Select-Please-</option>
     	                              <option value="A+" >A+</option>
 	   	       	     	              <option value="B+" >B+</option>
 	   	       	     	              <option value="O-" >O-</option>
 	   	       	     	              <option value="A-" >A-</option>
 	   	       	     	              <option value="B-" >B-</option>
 	   	       	     	              <option value="AB+" selected >AB+</option>
 	   	       	     	              <option value="AB-">AB-</option>
                </select>
         <%      
             }
      	 else if(bloodgrp.equals("AB-"))
           {
          	 %>  	 
          	 <select class="form-control" name="blood-grp">
   	                                  <option value="A+" >A+</option>
 	   	       	     	              <option value="B+" >B+</option>
 	   	       	     	              <option value="O-" >O-</option>
 	   	       	     	              <option value="A-" >A-</option>
 	   	       	     	              <option value="B-" >B-</option>
 	   	       	     	              <option value="AB+"  >AB+</option>
 	   	       	     	              <option value="AB-" selected>AB-</option>
              </select>
       <%      
           }
      	 else
         {
        	 %>  	 
        	 <select class="form-control" name="blood-grp">
      	     	                      <option value="" selected>-Select-Please-</option>
 	   	       	     	              <option value="O+" >O+</option>
 	   	       	     	              <option value="A+">A+</option>
 	   	       	     	              <option value="B+">B+</option>
 	   	       	     	              <option value="O-">O-</option>
 	   	       	     	              <option value="A-">A-</option>
 	   	       	     	              <option value="B-">B-</option>
 	   	       	     	              <option value="AB+">AB+</option>
 	   	       	     	              <option value="AB-">AB-</option>
      	    </select>
     <%      
         }
        %>
       </div>
   </div>    
            <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="d-dob" class="text-label">D.O.B</label>      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="date" name="d-dob" value="<%=rs.getString("dob")%>" class="form-textbox form-control">	
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	<label for="d-date-of-joining" class="text-label">Date of Joining</label>  
      	         </div>
      	          <div class="col-xl-4">  
      	          <input type="date" name="d-date-of-joining" value="<%=rs.getString("dateofjoining")%>" class="form-textbox form-control">	
      	         </div>
      	       
            </div>
            
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="d-specialization" class="text-label">Specialization</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="d-specialization" value="<%=rs.getString("specialization")%>" class="form-textbox form-control">
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	  <label for="d-marital-status" class="text-label">Marital Status</label>
      	         </div>
      	          <div class="col-xl-4">  
      	              <%
      	               String maritalstatus=rs.getString("maritalstatus");
      	                 if(maritalstatus.equals("yes"))
      	                 {
      	             %> 	
      	                  <select class="form-control" name="marital-status">
 	   	       	     	              <option>-Select-Please-</option>
 	   	       	     	              <option value="yes" selected>Yes</option>
 	   	       	     	              <option value="no">No</option>
 	   	       	          </select>
      	              <%
      	                 }
      	                 else if(maritalstatus.equals("no"))
      	                 {
      	               %> 	
        	                  <select class="form-control" name="marital-status">
   	   	       	     	              <option>-Select-Please-</option>
   	   	       	     	              <option value="yes">Yes</option>
   	   	       	     	              <option value="no" selected >No</option>
   	   	       	          </select>
        	              <%
      	                 } 
      	                 else
      	                 {
      	                	  %> 	
        	                  <select class="form-control" name="marital-status">
   	   	       	     	              <option selected>-Select-Please-</option>
   	   	       	     	              <option value="yes">Yes</option>
   	   	       	     	              <option value="no"  >No</option>
   	   	       	          </select>
        	              <%
      	                 }
      	            %>
      	         </div>
      	       
            </div>
              <div class="row rowspace">
      	         <div class="col-xl-2">  
      	           <label for="d-mobile" class="text-label">Mobile</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="d-mobile" value="<%=rs.getString("mobile")%>" class="form-textbox form-control">
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	  <label for="d-address" class="text-label">Address</label>    	
      	         </div>
      	          <div class="col-xl-4">  
      	             <input type="text" name="d-address" value="<%=rs.getString("address")%>" class="form-textbox form-control">
      	         </div>
      	       
            </div>   
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	           <label for="d-email" class="text-label">Email</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="email" name="d-email" value="<%=rs.getString("email")%>" class="form-textbox form-control">
      	         </div>
	            <div class="col-xl-2"> 
	  	           	  <label for="d-qualification" class="text-label">Qualification</label>    	
      	         </div>
      	          <div class="col-xl-4">  
      	             <input type="text" name="d-qualification" value="<%=rs.getString("qualification")%>" class="form-textbox form-control">
      	         </div>
            </div>        
	   <%	   
	       }	  
	}
	catch(Exception e)
	{
		
	}
	%>        
	</form>

</div>
</body>
</html>