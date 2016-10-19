<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
 <head>
    <title>tool-app</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <c:url value="/tool-app/manifest.json" var="manifest" />
    <link rel="manifest" href="${manifest}">
    
    <c:url value="/tool-app/bower_components/webcomponentsjs/webcomponents-lite.js" var="webcomponentsjs" />
    <script src="${webcomponentsjs}"></script>
    
    
    <c:url value="/tool-app/src/tool-app-app/tool-app-app.html" var="toolappapp" />
	<link rel="import" href="${toolappapp}">
    
  </head>
  
  <body>
  
	<!-- TODO move $message as data bindings value for tool-app-app component -->
  	<h2>${message}</h2>
  	
    <tool-app-app></tool-app-app>
    
  </body>
  
</html>
