<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link rel="stylesheet" href="joinForm.css">
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

			<div>
				<input type="text" id="name" placeholder="이름을 입력하세요">
			</div>

			<div>
				<label for="sex"> <input type="radio" name="sex"
					value="male" id="sex" checked>남자 <input type="radio"
					name="sex" value="female">여자 
			</div>


			<div>
				<input type="text" id="email" placeholder="이메일을 입력하세요">
			</div>

			<div>
				<input type="text" id="phone" placeholder="전화번호 입력하세요">
			</div>


			<div class="submit">
				<button>본인인증 및 회원가입</button>
			</div>

		</form>

	</article>

</body>
</html>