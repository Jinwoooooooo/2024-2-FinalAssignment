<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>고객센터</title>
    <link href="${path}/resources/css/board.css" rel="stylesheet"/> 	
</head>
<body>
<script>
	function goToRegister() {
	    location.href = '../board/register';
	}
</script>
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
    <h1>서비스 이용관련 문의사항을 해결해 드립니다.</h1>
    <div class="imgbox">
    	<img src="${path}/resources/images/ask.jpg">
    </div>
    <div class="table-container">
    <table class="container">
    <tr class="firstitem">
            	<td style= "width: 75px;">번호</td>
                <td style= "width: 400px;">제목</td>
                <td style= "text-align: left; width: 200px;">작성자</td>
                <td style= "width: 200px;">작성일</td>
                <td style= "width: 200px;">수정일</td>
            </tr>
		 <c:forEach var="board" items="${list}">
            <tr class="item">
            	<td style="width: 75px; font-size: 13px;"><c:out value='${board.bno}'/></td> <!-- 시작 행과 게시물 번호를 합산하여 표시 -->
                <td style="text-align: center; width: 400px;"><a class="move" href="<c:out value='${board.bno}'/>"><c:out value='${board.title}'/></a></td>
                <td style="text-align: left; width: 200px;"><c:out value='${board.writer}'/></td>
                <td style="width: 200px;"><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regDate}"/></td> <!-- 포맷된 작성일 표시 -->
            	<td style="width: 200px;"><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}"/></td>
            </tr>
		</c:forEach>      
                                
                            
	</table>
	    <div class="button-container">
        	<button id="write" onclick="goToRegister()">글쓰기</button>
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