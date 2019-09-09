<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Finartz Odev</title>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	   	<script type="text/javascript" src='https://code.jquery.com/jquery-3.4.1.min.js'> </script>
	    
	    <script type="text/javascript" src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'> </script>
	    
	    
 <script th:inline="javascript">
/*<![CDATA[*/
	$(document).ready(function() {
					
		$('.delete').on('click', function() {
				var btn = $(this);
				var  url = btn.attr('data-url');
				
				var commit = $('#btnCommitDelete');
				commit.attr('href', url);
				
				var modal = $('#exampleModal');
				modal.modal();
			});
		});
/*]]>*/
</script>

	</head>
	<body>
	
	



<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">User Delete Configuration</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       Are you sure for deleting this user ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
        <a id="btnCommitDelete" href="${deleteUrl}" class="btn btn-danger" >Delete</a>
      </div>
    </div>
  </div>
</div>


		<div class="container">
			<h2 id="article_header" class="text-warning" align="center">Finartz Odev</h2>
	    	<div>&nbsp;</div>
	    	
	    	<!-- Div to add a new user to the mongo database -->
	    	<div id="add_new_user">
	    			<c:url var="addUrl" value="/user/add" /><a id="add" href="${addUrl}" class="btn btn-success">Add User</a>
	    	</div>
	    	
	    	<div>&nbsp;</div>
			
	    	<!-- Table to display the user list from the mongo database -->
	    	<table id="users_table" class="table">
	        	<thead>
	            	<tr align="center">
	            		<th>id</th><th>Tel Number</th><th>Name</th><th colspan="2"></th>
	            	</tr>
	        	</thead>
	        	<tbody>
	            	<c:forEach items="${users}" var="user">
	                	<tr align="center">
	                    	<td><c:out value="${user.id}" /></td>
	                    	<td><c:out value="${user.telnumber}" /></td>
	                    	<td><c:out value="${user.name}" /></td>
	                    	<td nowrap>
	                        	<c:url var="editUrl" value="/user/edit?id=${user.id}" /><a id="update" href="${editUrl}" class="btn btn-warning">Update</a>

	                        	
	               
        					<c:url var="deleteUrl" value="/user/delete?id=${user.id}" />
	                       <button id="btnDelete" type="button" class="btn btn-primary delete" data-url="${deleteUrl}">Delete</button>
	             	       <!--<button id="btnDelete" type="button" class="btn btn-primary" data-toggle="modal" data-url="${deleteUrl}" data-target="#exampleModal">Sil</button>-->
	                        	

	                    	</td>
	                	</tr>
	            	</c:forEach>
	        	</tbody>
	    	</table>
		</div>	    
		
		
		
		
	</body>
	
</html>