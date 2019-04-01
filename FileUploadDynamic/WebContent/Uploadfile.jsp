<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body  bgcolor="red">
	<%
		String m = (String) request.getAttribute("msg");
		if (m != null) {
	%>
	<div class="alert alert-success">
	<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
     <strong><%=m%></strong>
</div>
	<%
		}
	%>

<div class="container">
<div class="col-sm-6">
<form action="Uploadproduct" method="post" enctype="multipart/form-data">
<div class="form-group"><h4>Choose Product</h4></label>
     <select class="form-control" name="category">
         <option value="small">small</option>
         <option value="medium">medium</option>
         <option value="large">large</option>
         <option value="xlarge">Extralarge</option>
     </select> 
 </div>
<div class="form-group"><label><h4>Product Name</h4></label>
<input type="text" class="form-control" name="pname" required /></div>
				
<div class="form-group"><label><h4>Price</h4></label> 
<input type="number" class="form-control" name="price" required /></div>
				
<div class="form-group"><label><h4>Description</h4>
<textarea class="form-control" rows="5"  name="desc"></textarea></div>
				
<div class="input-group">
<div class="input-group-prepend">
<span class="input-group-text" id="inputGroupFileAddon01">Upload</span></div>
<div class="custom-file"><label><h4>Uploadfile</h4>
<input type="file" class="custom-file-input" name="file"aria-describedby="inputGroupFileAddon01"></div>
</div>
 
 <button type="submit" class="btn btn-primary btn-md">Save</button>		
 </form>
</div>
</body>
</html>