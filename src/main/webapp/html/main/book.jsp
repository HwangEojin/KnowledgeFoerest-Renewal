<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- jQuery 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- turn.js 로드 -->
<script src="${pageContext.request.contextPath}/asset/js/main/turn.js"></script>
<script
	src="${pageContext.request.contextPath}/asset/js/main/mainbook.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/asset/css/main/mainbook.css" />

<!-- 📌 메뉴바 -->
<div class="menu-wrapper">
	<nav class="main-nav-menuwrap">
		<ul class="main-nav-ul">
			<li class="li-menu"><a href="#" id="openLoginModal">로그인</a>
				<div class="div-postit"></div></li>
			<li class="li-menu"><a
				href="${pageContext.request.contextPath}/login/join.jsp">회원가입</a>
				<div class="div-postit"></div></li>
			<li class="li-menu"><a
				href="${pageContext.request.contextPath}/study/studylist.jsp">스터디
					모집</a>
				<div class="div-postit"></div></li>
			<li class="li-menu"><a
				href="${pageContext.request.contextPath}/board/boardlist.jsp">자유게시판</a>
				<div class="div-postit"></div></li>
			<li class="li-menu"><a
				href="${pageContext.request.contextPath}/notice/noticelist.jsp">공지</a>
				<div class="div-postit"></div></li>
		</ul>
	</nav>
</div>

<!-- ✅ 로그인 모달 -->
<div class="modal" id="loginModal">
	<div class="modal-content">
		<h2>로그인</h2>
		<form action="${pageContext.request.contextPath}/login/login.jsp"
			method="post">
			<input type="text" name="userId" placeholder="아이디"><br /> <br />
			<input type="password" name="userPw" placeholder="비밀번호"><br />
			<br />
			<button type="submit">로그인</button>
			<button type="button" class="close-btn" id="closeLoginModal">닫기</button>
		</form>
	</div>
</div>