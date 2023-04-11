<%@page import="com.ShopNest.product.Cart"%>
<%@page import="com.ShopNest.dbHandler.DataFetcher"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShopNest</title>
		<link rel="stylesheet" href="styles.css">
</head>
<body>
<%
			List prodList=DataFetcher.fetchProductsInfo();
			Cart c=new Cart();
			session.setAttribute("cart", c);
			
			//Cart c=(Cart)session.getAttribute("cart"); 
		%>	
		
		
		<header>
			<h1>ShopNest</h1>
			<nav>
			  <ul>
			    <li>
			    	 <a href="#" class="view-cart">
				        <i class="fas fa-shopping-cart"></i>
				        <span>
				        	<a href="cart.jsp">
				        	<button class="add-to-cart" >View Cart</button>
				        	</a>
				        	
				        </span>
				   
				      </a>
				     <a href="#" class="login">
				        <span>
				      
				        	<a href="login.jsp" >
				        	<button class="login">Logout</button>
				        	</a>
			    </li>
			  </ul>
			</nav>

		</header>
		
	
		
		<main>
			<%	String[] prodArr2=null;;
				for(int i=0; i<prodList.size(); i++) {
					String[] prodArr=((String)prodList.get(i)).split(":");  
					prodArr2=prodArr;
			%>
			<section class="product">
				<img src="prodImg/<%=prodArr[4]%>" alt="Product 1">
				<h2><%= prodArr[1] %></h2>
				<p><%= prodArr[2] %></p>
				<span class="price"><%= prodArr[3] %></span>
				<form method="post" action="add-to-cart">
		            <input type="hidden" name="productId" value="<%=
		            		Integer.parseInt(prodArr[0])
		            %>">
		            <input type="submit" value="Add to Cart">
		        </form>
				
			</section>
			<%
				}                              
			%>
			
			
		</main>
</body>
</html>