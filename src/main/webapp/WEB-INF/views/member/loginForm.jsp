<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/joinForm.css">
    <style type="text/css"></style>

</head>
<body>

<article class="join">
    <h3>인생을 바꾸는 교육,</h3> 
    <h3>국제공인 NLP코칭 사관학교</h3>
    <form>
    <div>
    <input type="text" id="id" placeholder="아이디를 입력하세요">
    </div>

    <div>
    <input type="text" id="password" placeholder="비밀번호를 입력하세요">
    </div>


    <div class="submit">
    <button>로그인</button>
    </div>

    </form>

</article>
    
</body>
</html>