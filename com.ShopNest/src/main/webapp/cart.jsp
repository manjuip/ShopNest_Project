<%@page import="com.ShopNest.product.Cart"%>
<%@page import="com.ShopNest.product.Product"%>
<%@page import="com.ShopNest.dbHandler.DataFetcher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShopNest Cart</title>
		<link rel="stylesheet" href="styles.css">
</head>
<body>
<%	Cart c=(Cart)session.getAttribute("cart"); 
			List itemsList=c.getItems();
		%>
			
		
		
		<header>
			<h1>ShopNest Cart</h1>
			<nav>
			  <ul>
			    <li>
			    	 
			    </li>
			  </ul>
			</nav>
			<span>
			
			      <form action="home.jsp">
		            <input type="submit" value="Go Back">
		          </form>
			   	</span>

		</header>
		
	
		
		
		<main>
			<%
				for(int i=0; i<itemsList.size(); i++) {
					String p=((Product)(itemsList.get(i))).getPname();
			%>
			<section class="product">
				<h2><%=p%></h2>
				<p><%=((Product)(itemsList.get(i))).getPprice() %></p>
				<span class="price">Test</span>
			</section>
			<%
				  }                              
			%>
			
			
		</main>
		
		<br>
		<table>
				<tfoot>
		            <tr>
		                <td colspan="3">Total:</td>
		           
		                <td><h1><%= c.getTotal() %></h1></td>
		            </tr>
		        </tfoot>
 
		</table>
</body>
</html>