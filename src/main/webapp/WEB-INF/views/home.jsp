<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import=" com.crudapp.model.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<meta charset="UTF-8">
<title>Home page</title>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome To My Product App</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col" colspan="2">Action</th>
						</tr>
					</thead>
					
					<tbody>
    <% List<Product> products = (List<Product>) request.getAttribute("product");
       for (Product product : products) { %>
    <tr>
        <th scope="row"><%= product.getId() %></th>
        <td><%= product.getName() %></td>
        <td><%= product.getDescription() %></td>
        <td class="font-weight-bold"><%= "Rs." + product.getPrice() %></td>
        <td>

            <!-- Delete Product Logic For home.jsp -->

            <form action="deleteProduct/<%= product.getId() %>" method="post" style="display: inline;">
                <input type="hidden" name="productId">
                <a href="deleteProduct/${product.id}"></a>
                <button type="submit" class="btn btn-danger btn-sm">
                    <i class="fas fa-trash"></i> Delete
                </button>
            </form>

            <!-- Update Product Logic for home.jsp -->

            <form action="update" method="get" style="display: inline;">
                <input type="hidden" name="productId" value="<%= product.getId() %>">
                <button type="submit" class="btn btn-primary btn-sm">
                    <i class="fas fa-edit"></i> Update
                </button>
            </form>
        </td>
    </tr>
    <% } %>
</tbody>
</table>
				<div class="container text-center">
					<a href="addproduct" class="btn btn-outline-success">Add
						Product</a>
						
				</div>
			</div>
		</div>
	</div>
</body>
</html>
