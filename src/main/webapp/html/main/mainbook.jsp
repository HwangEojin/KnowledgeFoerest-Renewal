<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="java.io.*, java.util.*"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>지식의 숲</title>
</head>

<body>
	<main>
		<div class="div-contents-wrapper">
			<!-- 📌 turn.js 책 추가 -->
			<div id="DIV-FLIPBOOK">
				<div class="div-hard cover page1">
					<img
						src="${pageContext.request.contextPath}/asset/img/main/book-cover.png"
						alt="책 표지" class="main-book-cover" />
				</div>

				<!-- 📌 책 내부 페이지 -->
				<div class="div-page page2">
					<div class="div-intro-wrapper">
						<div class="h1-intro">
							<h1>Introduce</h1>
						</div>
						<p class="p-intro-text">
							함께 성장하는 공간, 지식의 숲에 오신 것을 환영합니다. <br /> <br /> 혼자 하는 공부가 막막할 때,
							함께하면 더 즐겁고 의미 있어집니다. <br /> 지식의 숲에서는 스터디 모집과 자유로운 정보 공유를 통해 <br />
							서로 배우고 성장할 수 있습니다. <br /> <br /> 배움의 길, 이제 혼자가 아닌 함께 걸어가요. <br />
							지금 바로 지식의 숲에서 여러분의 목표를 향해 나아가 보세요!<br /> <br />
						</p>
					</div>

					<div class="div-new-study">
						<div class="new-study-title">
							<h4>신규 등록 스터디</h4>
						</div>
						<ul>
							<li>신규 등록 스터디 목록 1</li>
							<li>신규 등록 스터디 목록 2</li>
							<li>신규 등록 스터디 목록 3</li>
						</ul>
					</div>
				</div>

				<div class="div-page page3">
					<div class="main-div-banner">
						<div class="main-div-slide1">
							<img
								src="${pageContext.request.contextPath}/asset/img/main/bn01.gif"
								alt="이미지1" class="main-img-banner01 main-div-banneractive" />
						</div>
						<div class="main-div-slide2">
							<img
								src="${pageContext.request.contextPath}/asset/img/main/bn02.gif"
								alt="이미지2" class="main-img-banner02" />
						</div>
					</div>

					<div class="div-end-study">
						<div class="div-divider"></div>
						<h4>마감 임박 스터디</h4>
						<ul class="ul-studylist">
							<li>마감 임박 스터디 목록 1</li>
							<li>마감 임박 스터디 목록 2</li>
							<li>마감 임박 스터디 목록 3</li>
						</ul>
					</div>
					<jsp:include page="/html/main/next-button.jsp" />

				</div>

				<div class="div-page page4">Page 4</div>
				<div class="div-page page5">Page 5</div>
				<div class="div-page page6">Page 6</div>
				<div class="div-page page7">Page 7</div>
				<div class="div-page page8">Page 8</div>
				<div class="div-page page9">Page 9</div>
				<div class="div-page page10">Page 10</div>
				<div class="div-hard"></div>

			</div>

			<!-- 📌 메뉴바 & 로그인 모달 -->
			<jsp:include page="/html/main/book.jsp" />

		</div>
	</main>

</body>

</html>