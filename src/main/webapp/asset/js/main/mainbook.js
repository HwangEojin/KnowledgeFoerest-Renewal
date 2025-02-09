document.addEventListener("DOMContentLoaded", () => {
  const slides = document.querySelectorAll(".main-div-banner img");
  let currentIndex = 0;

  function showSlide(index) {
    slides.forEach((slide, i) => {
      slide.classList.remove("main-div-banneractive");
      if (i === index) {
        slide.classList.add("main-div-banneractive");
      }
    });
  }

  showSlide(currentIndex);

  setInterval(() => {
    currentIndex = (currentIndex + 1) % slides.length;
    showSlide(currentIndex);
  }, 3500);
});

/**
 * @feature 로그아웃 된 상태에서 스터디 항목을 클릭했을때, 로그인 페이지로 이동시킵니다.
 * @see   goPage();
 * @author 강후현
 * @since 20250114
 *  매개변수는 없고, 항목을 클릭했을때 실행되는 함수
 */

// 스터디 글 클릭시 로그인 여부 확인 후 링크 이동
function notLogin() {
  alert("로그인 후 이용바랍니다.");
  location.href = "./../login/login.html";
}

/**
 * @feature 로그인 된 상태에서 스터디 항목을 클릭했을때, 그 상세 항목으로 이동합니다.
 * @see   notLogin();
 * @author 강후현
 * @since 20250114
 * @param {string} param - 상세 페이지 id
 */

function goPage(param) {
  location.href = "./../study/studylist-detail.html"; //<----이 링크는 추후 변경될 수 있습니다.
}

$(document).ready(function () {
  console.log("turn.js 실행됨!"); // 실행 확인용

  let totalPages = $("#DIV-FLIPBOOK").children(".div-page").length; // 실제 콘텐츠 페이지 개수 계산

  // turn.js 초기화
  $("#DIV-FLIPBOOK").turn({
    autoCenter: true,
    pages: totalPages, // 정확한 페이지 수 설정
    when: {
      turning: function (event, page, view) {
        if (page === 1 || page === totalPages) {
          //책이 덮였을 때 -> 메뉴 이름 숨김 (포스트잇만 유지)
          $(".main-nav-menuwrap").removeClass("open");
          $(".li-menu").css("transform", `translateX(-100px)`);
        } else {
          // 책이 펼쳐졌을 때 -> 메뉴 이름 표시
          $(".main-nav-menuwrap").addClass("open");
          $(".li-menu").css("transform", `translateX(0px)`);
        }
       
      },
    },

  });

  $(".page1").on("click", function () {
    const currentPage = $("#DIV-FLIPBOOK").turn("page");
    const totalPages = $("#DIV-FLIPBOOK").turn("pages");
    if (currentPage < totalPages) {
      console.log("표지 클릭됨!");
      $("#DIV-FLIPBOOK").turn("next");
    }
  });
});


document.addEventListener("DOMContentLoaded", () => {
    const loginModal = document.getElementById("loginModal"); // 로그인 모달
    const joinModal = document.getElementById("joinModal"); // 회원가입 모달
    const openLoginBtn = document.getElementById("openLoginModal"); // 로그인 버튼
    const openJoinFromLogin = document.getElementById("openJoinFromLogin"); // 로그인 모달 내부의 "회원가입" 버튼
    const closeLoginBtn = document.getElementById("closeLoginModal"); // 로그인 닫기 버튼
    const closeJoinBtn = document.getElementById("closeJoinModal"); // 회원가입 닫기 버튼

    // ✅ 로그인 버튼 클릭 시 로그인 모달 열기
    openLoginBtn.addEventListener("click", (event) => {
        event.preventDefault();
        loginModal.style.display = "flex";
    });

    // ✅ 로그인 모달 내부의 "회원가입" 버튼 클릭 시 회원가입 모달 열기
    openJoinFromLogin.addEventListener("click", (event) => {
        event.preventDefault();
        loginModal.style.display = "none"; // 로그인 모달 닫기
        joinModal.style.display = "flex"; // 회원가입 모달 열기
    });

    // ✅ 로그인 모달 닫기 버튼 클릭 시 닫기
    closeLoginBtn.addEventListener("click", () => {
        loginModal.style.display = "none";
    });

    // ✅ 회원가입 모달 닫기 버튼 클릭 시 닫기
    closeJoinBtn.addEventListener("click", () => {
        joinModal.style.display = "none";
    });

    // ✅ 모달 바깥을 클릭하면 닫기
    window.addEventListener("click", (event) => {
        if (event.target === loginModal) {
            loginModal.style.display = "none";
        } else if (event.target === joinModal) {
            joinModal.style.display = "none";
        }
    });
});
