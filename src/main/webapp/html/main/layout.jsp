<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.util.*" %>
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
        <div class="div-hard cover">
          <img src="${pageContext.request.contextPath}/asset/img/main/book-cover.png" alt="책 표지" class="main-book-cover" />
        </div>

        <!-- 📌 책 내부 페이지 -->
		<!-- 보이는 화면 기준으로 왼쪽 페이지 -->
        <div class="div-page">

			왼쪽 페이지임 ㅋㅋ        

        </div>
		<!-- 왼쪽 페이지 끝 -->
	
		<!-- 보이는 화면 기준으로 오른쪽 페이지 -->
        <div class="div-page">
          
          오른쪽 페이지임 ㅎㅎ
          
        </div>
		<!-- 오른쪽 페이지 끝 -->

        <!-- <div class="div-page">Page 3</div>
        <div class="div-page">Page 4</div>
        <div class="div-page">Page 5</div>
        <div class="div-page">Page 6</div>
        <div class="div-page">Page 7</div>
        <div class="div-page">Page 8</div> -->

        <div class="div-page empty-page"></div>
        <div class="div-hard"></div>
      </div>

      <!-- 📌 메뉴바 & 로그인 모달 -->
 		<jsp:include page="/html/main/book.jsp" />

    </div>
  </main>

</body>

</html>