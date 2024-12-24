<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 확인</title>
<link href="${path}/resources/css/viewPost.css" rel="stylesheet"/> 
</head>
<body>
	<header>
	    <ul class="header-ul">
	                <li class="header-li"><span style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size: 14px;">iNergy</span></li>
	                <li class="header-li">계정</li>
	                <li class="header-li">주문 조회</li>
	                <li class="header-li">상품 관리</li>
	                <li class="header-li">로그인</li>
	                <li class="header-li" style="border-style: none;">고객센터</li>
	    </ul>
	</header>
 <div class="container">
        <p class="author">${board.writer}<span style="color: #6e6e73;">작성자</span></p>
        <h1 class="title">${board.title}</h1>
        <div class="content">
            ${board.content}
        </div>
        <p class="createdAt">게시일: ${board.regDate}</p>
        <div class="post-actions">
            <button>수정</button>
            <button>삭제</button>
        </div>
    </div>
    <footer>
        <div class="copyright">
            <p>Copyright © 2024 iNergy. ALL rights reserved.</p>
            <p>상호 : iNergy <span style="color: #00000050;">|</span> 대표자명 : 정진우</p>
            <p>연락처 : 010-1313-2424 <span style="color: #00000050;">|</span> 팩스 : 001-2525-3232 <span style="color: #00000050;">|</span> 이메일 : iNergy.gmail.com</p>
            <p>주소 : (47230) 부산광역시 부산진구 양지로 54 </p>
        </div>
    </footer>
</body>
</html>