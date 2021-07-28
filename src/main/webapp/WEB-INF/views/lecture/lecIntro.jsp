<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/lecIntro.css">
    <title>Youtube Mobile</title>
    <script src="https://kit.fontawesome.com/e16276995a.js" crossorigin="anonymous"></script>
</head>
<body>
    <!-- header -->
    <header>
        <div class="logo">
            <i class="fab fa-youtube"></i>
            <span class="title">Youtube</span>
        </div>
        <div class="icons">
            <i class="fas fa-search"></i>
            <i class="fas fa-ellipsis-v"></i>
        </div>

    </header>

    <!-- section_player -->
    <section class="player">
        <video controls src="video/Justin Bieber - Off My Face.mp4"></video>
    </section>


        <div class="infoAndUpNext">
            <!--section_video info -->
            <section class="info">
                <!--metadata -->        
                <div class="metadata">
                    <ul class="hashtags">
                        <li>#NLP</li>
                        <li>#성공학</li>
                        <li>#변화심리학</li>
                    </ul>

                    <div class="titleAndButton">
                        <span class="title">1-1 국제공인 NLP프랙티셔너 자격과정에 오신 여러분 환영합니다! 이 강의를 통해 배우게 될 것을 간략히 소개해 드리겠습니다.</span>
                        <button class="moreBtn">
                            <i class="fas fa-caret-down"></i>
                        </button>
                    </div>
                        
                    <span class=views>14,358 views 1week ago</span>

                </div>
                <!-- action -->
                <div class="actions">
                    <li><button>
                        <i class="active-y fas fa-star"></i>
                        <span>추천</span>
                    </button></li>
                    <li><button>
                        <i class="active-b fas fa-thumbs-up"></i>
                        <span>좋아요</span>
                    </button></li>
                    <li><button>
                        <i class="fas fa-share"></i>
                        <span>공유하기</span>
                    </button></li>
                    <li><button>
                        <i class="fas fa-plus"></i>
                        <span>저장하기</span>
                    </button></li>
                    <li><button>
                        <i class="fab fa-font-awesome-flag"></i>
                        <span>문의하기</span>
                    </button></li>
                </div>
                <!-- channel -->
                <div class="channel">
                    <div class="metadata">
                        <img src="image/선생님.jpg" alt=""/>
                        <div class="info">
                            <span class="tName">루크리 박사</span>
                            <span class="tNic">NLP 변화심리학 트레이너</span>
                        </div>            
                    </div>
                    <div class="subscribe">
                        <button>팔로우</button>
                    </div>
                </div>
            </section>
        <!--section_video upNext -->    
        <section class="upNext">
            <span class="title">다음강의 리스트</span>
            <ul>
                <li class="item">
                    <div class="img"><img src="image/3부.jpg" alt=""></div>
                    <div class="imgInfo">
                        <span class="vtitle">1-2 NLP 커뮤니케이션 모델 </span>
                        <span class="cName">국제공인 NLP코칭 사관학교</span>
                        <span class="views">13,256 views</span>
                    </div>
                    <button class="moreBtn">
                        <i class="fas fa-ellipsis-v"></i>
                    </button>
                </li>
                <li class="item">
                    <div class="img"><img src="image/3부.jpg" alt=""></div>
                    <div class="imgInfo">
                        <span class="vtitle">1-3 메트리스 세상에 오신 여러분 환영합니다 </span>
                        <span class="cName">국제공인 NLP코칭 사관학교</span>
                        <span class="views">14,658 views</span>
                    </div>
                    <button class="moreBtn">
                        <i class="fas fa-ellipsis-v"></i>
                    </button>
                </li>
                <li class="item">
                    <div class="img"><img src="image/3부.jpg" alt=""></div>
                    <div class="imgInfo">
                        <span class="vtitle">1-4 NLP란 무엇인가 </span>
                        <span class="cName">국제공인 NLP코칭 사관학교</span>
                        <span class="views">21,682 views</span>
                    </div>
                    <button class="moreBtn">
                        <i class="fas fa-ellipsis-v"></i>
                    </button>
                </li>
                <li class="item">
                    <div class="img"><img src="image/3부.jpg" alt=""></div>
                    <div class="imgInfo">
                        <span class="vtitle">1-5 원인과 결과 방정식 </span>
                        <span class="cName">국제공인 NLP코칭 사관학교</span>
                        <span class="views">18,556 views</span>
                    </div>
                    <button class="moreBtn">
                        <i class="fas fa-ellipsis-v"></i>
                    </button>
                </li>
                <li class="item">
                    <div class="img"><img src="image/3부.jpg" alt=""></div>
                    <div class="imgInfo">
                        <span class="vtitle">1-6 지각은 투영이다 </span>
                        <span class="cName">국제공인 NLP코칭 사관학교</span>
                        <span class="views">21,548 views</span>
                    </div>
                    <button class="moreBtn">
                        <i class="fas fa-ellipsis-v"></i>
                    </button>
                </li>
            </ul>



        </section>
        </div>
    
</body>
</html>