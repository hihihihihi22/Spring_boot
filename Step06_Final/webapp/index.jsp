<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<%-- navbar 포함 시키기 --%>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
	<div class="container">
		<c:choose>
			<c:when test="${not empty sessionScope.id }">
				<p>
					<a href="${pageContext.request.contextPath }/user/private/info.jsp">${id }</a> 님 로그인중...
					<a href="${pageContext.request.contextPath }/user/logout.jsp">로그아웃</a>
				</p>
			</c:when>
			<c:otherwise>
				<p>
					<a href="${pageContext.request.contextPath }/user/loginform.jsp">로그인</a>
					<a href="${pageContext.request.contextPath }/user/signup_form.jsp">회원가입</a>
				</p>
			</c:otherwise>
		</c:choose>
		<h1>인덱스 페이지 입니다</h1>
		<ul>
			<li><a href="${pageContext.request.contextPath }/file/list.jsp">자료실 목록보기</a></li>
			<li><a href="${pageContext.request.contextPath }/shop/buy.jsp?id=1&count=2">1번상품 2개 구매하기</a></li>
			<li><a href="${pageContext.request.contextPath }/shop/buy.jsp?id=5&count=3">5번상품 3개 구매하기</a></li>
			<li><a href="${pageContext.request.contextPath }/cafe/list.jsp">글목록보기</a></li>
		</ul>
	</div>
	
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>














