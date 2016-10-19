<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

			<html>

			<head>
				<meta charset="utf-8">
				<title>Welcome</title>
			</head>

			<body>
				<c:url value="/showMessage.html" var="messageUrl" />
				<a href="${messageUrl}">Click to enter (MVC request)</a>

				<br>
				<c:url value="/showMessageJson" var="messageUrlJson" />
				<a href="${messageUrlJson}">Click to test REST request</a>

				<br>
				<c:url value="/redirectWithRedirectPrefix.html" var="redirectUrlPrefix" />
				<a href="${redirectUrlPrefix}">Click to test REDIRECT with prefix request</a>

				<br>
				<c:url value="/redirect_http" var="redirectUrlHttp" />
				<a href="${redirectUrlHttp}">Click to test REDIRECT on server side to http://apod.nasa.gov/apod/astropix.html request (working, this is the right one)</a>

				<br>
				<c:url value="/redirect_req" var="redirectUrlReq" />
				<a href="${redirectUrlReq}">Click to test REDIRECT on server side to apod.nasa.gov/apod/astropix.html request (note no http:// in ulr)</a>

				<br>
				<c:url value="http://apod.nasa.gov/apod/astropix.html" var="redirectUrlClient" />
				<a href="${redirectUrlClient}">Click to test REDIRECT on client directly to http://apod.nasa.gov</a>

				<!-- This is done to show the reason of the usage of the tag c:url above: 
				it is used to encode the uri in its url form (it adds controller root (spring-mvc), encodes special chars)
				-->
				<br>
				<a href="/spring-mvc/redirect_http">Click to test REDIRECT on server side to http://apod.nasa.gov/apod/astropix.html request (working, this is the right one)</a>

				<br>
				<c:url value="/showMessagePolymer" var="polymerTestPage" />
				<a href="${polymerTestPage}">Click to test polymer page</a>

			</body>

			</html>
