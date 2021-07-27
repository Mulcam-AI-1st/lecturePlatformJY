<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<link rel="icon" type="image/png" href="imgs/favicon.png" />
<link
  href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
  rel="stylesheet"
/>

<link rel="stylesheet" href="${contextPath}/resources/css/home.css">
<script src="${contextPath}/resources/js/home.js" defer></script>
<script
  src="https://kit.fontawesome.com/9eb162ac0d.js"
  crossorigin="anonymous"
></script>
</head>



<body>

    <!-- Home -->
    <section id="home">
      <div class="home__container">
        <!-- <h2 class="home__description">
         국제 NLP코칭 사관학교
        </h2>
        <h1 class="home__title">소책자 배포 이벤트<br /></h1> -->
        <button class="home__btn">나도 받아보기</button>
      </div>
    </section>

    <!-- Intro -->
    <section id="intro" class="section section__container">
      <h1>About me</h1>
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure possimus
        rem sequi? Nihil, est impedit dignissimos consequatur totam, odit
        deserunt doloremque laudantium similique corrupti, iusto optio rerum in
        deleniti officia.
      </p>
      <div class="about__majors">
        <div class="major">
          <div class="major__icon">
            <i class="fab fa-html5"></i>
          </div>
          <h2 class="major__title">Front-end</h2>
          <div class="major__description">
            HTML, CSS, JavaScript, TypeScript,
            <br />React, Vue, Web APIs
          </div>
        </div>
        <div class="major">
          <div class="major__icon">
            <i class="fas fa-mobile"></i>
          </div>
          <h2 class="major__title">Mobile</h2>
          <p class="major__description">
            Android, iOS, React Native, Flutter,
            <br />Java, Swift, Kotlin
          </p>
        </div>
        <div class="major">
          <div class="major__icon">
            <i class="fas fa-server"></i>
          </div>
          <h2 class="major__title">Back-end</h2>
          <p class="major__description">
            Java, JavaScript, Go, NodeJS,
            <br />Rest APIs, GraphGL
          </p>
        </div>
      </div>
    </section>


    <!-- lecture -->
    <section id="lecture" class="section">
     <div class="section__container">
      <h1>강의 리스트</h1>
      <h3>7월 인기 있는 강의</h3>
      <div class="work__categories">
        <button class="category__btn selected" data-filter="*">
          전체보기 <span class="category__count">8</span>
        </button>
        <button class="category__btn" data-filter="front-end">
          NLP자격과정 <span class="category__count">3</span>
        </button>
        <button class="category__btn" data-filter="back-end">
          심리/마인드 <span class="category__count">3</span>
        </button>
        <button class="category__btn" data-filter="mobile">
          성공학 <span class="category__count">2</span>
        </button>
      </div>

      <div class="work__projects">
        <a href="" class="project" target="blank" data-type="front-end">
          <img
            src="/fileview/homeBook.jpg"
            alt="Youtube"
            class="project__img"
          />
          <div class="project__description">
            <h3>국제공인 자격과정</h3>
            <span>NLP프랙티셔너</span>
          </div>
        </a>

        <a
          href="https://github.com/dream-ellie/responsive-nav-bar"
          class="project"
          data-type="front-end"
          target="blank"
        >
          <img
            class="project__img"
            src="imgs/lectures/타이틀2.jpg"
            alt="navbar"
          />
          <div class="project__description">
            <h3>국제공인 자격과정</h3>
            <span>NLP 마스터 프랙티셔너</span>
          </div>
        </a>

        <a
          href="https://github.com/dream-ellie/responsive-nav-bar"
          class="project"
          data-type="front-end"
          target="blank"
        >
          <img class="project__img" src="imgs/lectures/타이틀2.jpg" alt="navbar" />
          <div class="project__description">
            <h3>국제공인 자격과정</h3>
            <span>MBST 프랙티셔너</span>
          </div>
        </a>

        <a href="" class="project" data-type="back-end">
          <img class="project__img" src="imgs/lectures/1.JPG" alt="" />
          <div class="project__description">
            <h3>Project</h3>
            <span>Explanation</span>
          </div>
        </a>
        <a href="" class="project" data-type="back-end">
          <img class="project__img" src="imgs/lectures/2.JPG" alt="" />
          <div class="project__description">
            <h3>Project</h3>
            <span>Explanation</span>
          </div>
        </a>
        <a href="" class="project" data-type="mobile">
          <img class="project__img" src="imgs/lectures/3.JPG" alt="" />
          <div class="project__description">
            <h3>Project</h3>
            <span>Explanation</span>
          </div>
        </a>
        <a href="" class="project" data-type="mobile">
          <img class="project__img" src="imgs/lectures/4.JPG" alt="" />
          <div class="project__description">
            <h3>Project</h3>
            <span>Explanation</span>
          </div>
        </a>
        <a href="" class="project" data-type="mobile">
          <img class="project__img" src="imgs/lectures/1.JPG" alt="" />
          <div class="project__description">
            <h3>Project</h3>
            <span>Explanation</span>
          </div>
        </a>
      </div>
     </div>
    </section>

    <!-- Testimonials -->
    <section id="testimonials" class="section">
   <div class="section__container">
    <h1>추천사</h1>
    <h3>국제공인 자격과정을 수료한 리더들의 후기</h3>
    <div class="testimonials">
      <div class="testimonial">
        <img
          src="imgs/testimonial/임종복1.jpg"
          alt="People"
          class="testimonial__avatar"
        />
        <div class="testimonial__speech-bubble">
          <p>
            국제공인 NLP프랙티셔너 자격과정은 제 인생을 송두리째 바꿔 놓았습니다! 이 코스는 매우 디테일하게 설계되어 있고 이론 뿐만 아니라 실습 과정도 있습니다. 약간의 시간과 노력을 기울인다면  정말 파워풀한 결과를 삶 속에서 만들어 낼 것입니다. 
          </p>
          <p class="name"><a href="">임종복 교수</a> / 상명대학교 지도교수</p>
        </div>
      </div>
      <div class="testimonial">
        <div class="testimonial__speech-bubble">
          <p>
            루크 박사님의 강의는 매우 교육적이고, 명확하며, 가치 있는 강의입니다! 이 과정을 정말 즐겁게 수강했어요. 이론적인 기술 지식 뿐만 아니라 삶 속에 녹여내는 경험을 통해 흥미진진한 형식으로 풀어나갑니다. 정말 감사합니다^^
          </p>
          <p class="name"><a href="">김주회 교수</a> / 한국대학발명협회 IP전문교수</p>
        </div>
        <img
        src="imgs/testimonial/김주회교수님.jpg"
        alt="People"
        class="testimonial__avatar"
      />
      </div>
      <button class="testimonial__btn">수강생 후기 더보기</button>

    </div>
   </div>
    </section>


</body>
</html>