<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<link href="${path}/resources/css/newPost.css" rel="stylesheet"/> 
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
    <h1>문의사항을 작성해 주세요.</h1>
    <div class="imgbox">
    	<img src="${path}/resources/images/create-post-image.png">
    </div>
    <p class="comment">더 나은 질문이 더 나은 답변을 얻게 됩니다.</p>
    <p class="comment">커뮤니티에 올리는 질문에는 기기, 소프트웨어 및 문제에 대한 명확한 설명 등 자세한 정보가 포함되어야 합니다.</p>
    <form action="../board/register" method="post" class="createPost">
        <div class="container">
            <input type="text" id="title" name="title" placeholder="제목을 입력해 주세요." required>
            <input type="text" id="writer" name="writer" placeholder="이름을 입력해 주세요." required>
            <textarea id="content" name="content" placeholder="내용을 입력하세요." required></textarea>
            <button type="submit">등록</button>
        </div>
    </form>
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