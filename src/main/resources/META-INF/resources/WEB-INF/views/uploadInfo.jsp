<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${uploadDTO.theFile.originalFilename}
<img src="static/images/upload/${PostDTO.theFile.originalFilename}" width="100" height="100" >
</body>
</html>