<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MVC 게시판</title>
<style type="text/css">


@charset "UTF-8";
/*PEN STYLES*/
* {
  box-sizing: border-box;
}

body {
  background: #f1f1f1;
  margin: 2rem;
}

.blog-card {
  display: flex;
  flex-direction: column;
  margin: 1rem auto;
  box-shadow: 0 3px 7px -1px rgba(0, 0, 0, 0.1);
  margin-bottom: 1.6%;
  background: #fff;
  line-height: 1.4;
  font-family: sans-serif;
  border-radius: 5px;
  overflow: hidden;
  z-index: 0;
}
.blog-card a {
  color: inherit;
}
.blog-card a:hover {
  color: #5ad67d;
}
.blog-card:hover .photo {
  transform: scale(1.3) rotate(3deg);
}
.blog-card .meta {
  position: relative;
  z-index: 0;
  height: 200px;
}
.blog-card .photo {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background-size: cover;
  background-position: center;
  transition: transform 0.2s;
}
.blog-card .details,
.blog-card .details ul {
  margin: auto;
  padding: 0;
  list-style: none;
}
.blog-card .details {
  position: absolute;
  top: 0;
  bottom: 0;
  left: -100%;
  margin: auto;
  transition: left 0.2s;
  background: rgba(0, 0, 0, 0.6);
  color: #fff;
  padding: 10px;
  width: 100%;
  font-size: 0.9rem;
}
.blog-card .details a {
  -webkit-text-decoration: dotted underline;
  text-decoration: dotted underline;
}
.blog-card .details ul li {
  display: inline-block;
}
.blog-card .details .author:before {
  font-family: FontAwesome;
  margin-right: 10px;
  content: "";
}
.blog-card .details .date:before {
  font-family: FontAwesome;
  margin-right: 10px;
  content: "";
}
.blog-card .details .tags ul:before {
  font-family: FontAwesome;
  content: "";
  margin-right: 10px;
}
.blog-card .details .tags li {
  margin-right: 2px;
}
.blog-card .details .tags li:first-child {
  margin-left: -4px;
}
.blog-card .description {
  padding: 1rem;
  background: #fff;
  position: relative;
  z-index: 1;
}
.blog-card .description h1,
.blog-card .description h2 {
  font-family: Poppins, sans-serif;
}
.blog-card .description h1 {
  line-height: 1;
  margin: 0;
  font-size: 1.7rem;
}
.blog-card .description h2 {
  font-size: 1rem;
  font-weight: 300;
  text-transform: uppercase;
  color: #a2a2a2;
  margin-top: 5px;
}
.blog-card .description .read-more {
  text-align: right;
}
.blog-card .description .read-more a {
  color: #5ad67d;
  display: inline-block;
  position: relative;
}
.blog-card .description .read-more a:after {
  content: "";
  font-family: FontAwesome;
  margin-left: -10px;
  opacity: 0;
  vertical-align: middle;
  transition: margin 0.3s, opacity 0.3s;
}
.blog-card .description .read-more a:hover:after {
  margin-left: 5px;
  opacity: 1;
}
.blog-card p {
  position: relative;
  margin: 1rem 0 0;
}
.blog-card p:first-of-type {
  margin-top: 1.25rem;
}
.blog-card p:first-of-type:before {
  content: "";
  position: absolute;
  height: 5px;
  background: #5ad67d;
  width: 35px;
  top: -0.75rem;
  border-radius: 3px;
}
.blog-card:hover .details {
  left: 0%;
}
@media (min-width: 640px) {
  .blog-card {
    flex-direction: row;
    max-width: 700px;
  }
  .blog-card .meta {
    flex-basis: 40%;
    height: auto;
  }
  .blog-card .description {
    flex-basis: 60%;
  }
  .blog-card .description:before {
    transform: skewX(-3deg);
    content: "";
    background: #fff;
    width: 30px;
    position: absolute;
    left: -10px;
    top: 0;
    bottom: 0;
    z-index: -1;
  }
  .blog-card.alt {
    flex-direction: row-reverse;
  }
  .blog-card.alt .description:before {
    left: inherit;
    right: -10px;
    transform: skew(3deg);
  }
  .blog-card.alt .details {
    padding-left: 25px;
  }
}

.title {
  text-align: center;
}

.pageInfo {
	display: flex;
	justify-content: center;
}


</style>
</head>

<body>
	<!-- 게시판 리스트 -->

	<h2 class=title> <수강생 후기> <a href="writeform">▶후기쓰러가기</a></h2>
		
	<c:choose>
	<c:when test="${articleList!=null && pageInfo.listCount>0 }">
		<section id="listForm">
<!-- 		<table>
			<tr id="tr_top">
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>날짜</td>
				<td>조회수</td>
			</tr> -->
			
			<c:forEach var="article" items="${articleList }"> <!-- 선택된 10개 글 리스트 -->

    <div class="blog-card">
        <div class="meta">
         <!--  <div class="photo" style="background-image: url(https://storage.googleapis.com/chydlx/codepen/blog-cards/image-1.jpg)"></div> -->
          <div class="photo"> </div> <img src="/fileview/${file.originalFilename }"/> </div>
          <ul class="details">
            <li class="author"><a href="#">${article.BOARD_NAME }</a></li>
            <li class="date">${article.BOARD_DATE}</li>
            <li class="tags">
              <ul>
                <li><a href="#">${article.BOARD_GRADE}점</a></li>
                <li><a href="#">${article.BOARD_READCOUNT} views</a></li>
                <li><a href="#">${article.BOARD_POINT}</a></li>
              </ul>
            </li>
          </ul>
        </div>
        <div class="description">
          <h1>${article.BOARD_SUBJECT} </h1>
          <h2>국제공인 자격과정 NLP프랙티셔너 </h2>
          <p> ${article.BOARD_CONTENT }</p>
          <p class="read-more">
            <a href="./boarddetail?board_num=${article.BOARD_NUM}&page=${pageInfo.page}">Read More</a>
          </p>
        </div>
      </div>
			
<%-- 				<tr>
				<td>${article.BOARD_NUM }</td>
				<td>
				<c:choose> 
					<c:when test="${article.BOARD_RE_LEV!=0}">
						<c:forEach var="i" begin="0" end="${article.BOARD_RE_LEV*2}">
							&nbsp;
						</c:forEach>
						▶
					</c:when>
					<c:otherwise>▶</c:otherwise>
				</c:choose>
				<a href="./boarddetail?board_num=${article.BOARD_NUM}&page=${pageInfo.page}">
					${article.BOARD_SUBJECT} 
				</a>
				</td>
				<td>${article.BOARD_NAME }</td>
				<td>${article.BOARD_DATE }</td>
				<td>${article.BOARD_READCOUNT }</td>
				</tr> --%>
			</c:forEach>
		</table>
		</section>
		
		
		
		<section id="pageList">
			<div class=pageInfo>
			<c:choose>
				<c:when test="${pageInfo.page<=1}">
					[이전]&nbsp; 
				</c:when>
				<c:otherwise>
					<a href="boardlist?page=${pageInfo.page-1}">[이전]</a>&nbsp;
				</c:otherwise>
			</c:choose>
			<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
				<c:choose>
					<c:when test="${pageInfo.page==i }">[${i }]</c:when>
					<c:otherwise>
						<a href="boardlist?page=${i}">[${i }]</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${pageInfo.page>=pageInfo.maxPage }">
					[다음]
				</c:when>
				<c:otherwise>
					<a href="boardlist?page=${pageInfo.page+1}">[다음]</a>
				</c:otherwise>
			</c:choose>
		</div>
		</section>
	</c:when>	
	<c:otherwise>
		<section id="emptyArea">등록된 글이 없습니다.</section>
	</c:otherwise>
	</c:choose>
</body>
</html>