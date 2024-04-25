<%@page import="java.util.List"%>
<%@ page import=" com.crudapp.model.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ADD PRODUCT</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.container {
	max-width: 400px;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	margin-top: 0;
	text-align: center;
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}
/* Adjust height and width for product description field */
input[name="productDescription"] {
	height: 100px; /* Set desired height */
	width: 100%; /* Set full width */
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
	resize: vertical; /* Allow vertical resizing */
}

input[name="productDescription"]:focus {
	outline: none; /* Remove focus outline */
}
/* Align placeholder text to top */
::placeholder {
	text-align: top;
}

.btn-container {
	text-align: center;
}

button {
	padding: 10px 20px;
	background-color: #4CAF50;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div class="container">
    <h2>Change Product Details</h2>
    <form action="leoleo" method="get">
        <%
            String i = (String)request.getAttribute("id");
        %>

        <div class="form-group">
            <label for="id">Product ID:</label>
            <input type="text" id="id" name="id" required value="<%= i %>"
                   placeholder="Enter the product ID here">
        </div>

        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="name" required
                   placeholder="Enter the product name here">
        </div>
        <div class="form-group">
            <label for="productDescription">Product Description:</label>
            <input type="text" id="productDescription" name="description" required
                   placeholder="Enter the product description">
        </div>
        <div class="form-group">
            <label for="productPrice">Product Price:</label>
            <input type="number" id="productPrice" name="price" min="0" step="0.01"
                   required placeholder="Enter product price">
        </div>
        <div class="btn-container">
            <button type="submit">Update</button>
        </div>
    </form>
</div>
</body>
</html>
