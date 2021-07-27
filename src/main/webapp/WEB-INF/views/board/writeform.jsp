<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<style type="text/css">
h2 {
	text-align: center;
}

table {
	margin: auto;
	width: 450px;
}

.td_left {
	width: 150px;
	background: orange;
}

.td_right {
	width: 300px;
	background: skyblue;
}

#commandCell {
	text-align: center;
}
</style>
</head>
<body>
	<!-- 게시판 등록 -->
	
<body>

	<section id="./writeForm">
		<h2>게시판글등록</h2>
		<form action="./boardwrite" method="post"
			enctype="multipart/form-data" name="boardform">
			<table>
				<tr>
					<td class="td_left"><label for="BOARD_NAME">글쓴이</label></td>
					<td class="td_right"><input type="text" name="BOARD_NAME"
						id="BOARD_NAME" required="required" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_PASS">비밀번호</label></td>
					<td class="td_right"><input name="BOARD_PASS" type="password"
						id="BOARD_PASS" required="required" /></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_SUBJECT">제 목</label></td>
					<td class="td_right"><input name="BOARD_SUBJECT" type="text"
						id="BOARD_SUBJECT" required="required" /></td>
				</tr>
				
				<tr>
                    <td class="td_left"><label for="BOARD_GRADE">평 가</label></td>
                    <td class="td_right">
                        <div>
                            <label for="BOARD_GRADE"> 
                            <input type="radio" name="BOARD_GRADE" value="1" id="1">1점(불만족)
                            <input type="radio" name="BOARD_GRADE" value="2" id="2"> 2점
                            <input type="radio" name="BOARD_GRADE" value="3" id="3"> 3점
                            <input type="radio" name="BOARD_GRADE" value="4" id="4"> 4점
                            <input type="radio" name="BOARD_GRADE" value="5" id="5" checked> 5점(매우만족)
                        </div>
                    </td>
                </tr>

				<tr>
                    <td class="td_left"><label for="BOARD_POINT">포인트</label></td>
                    <td class="td_right">
                        <select name="BOARD_POINT" id="BOARD_POINT">
                            <option value="curi">알찬 커리큘럼</option>
                            <option value="pro">전문적 유익함</option>
                            <option value="fun">재미와 몰입</option>
                            <option value="kind">친절과 정성</option>
                            <option value="videoQal">높은 영상퀄리티</option>
                        </select>
                    </td>
                </tr>


				<tr>
					<td class="td_left"><label for="BOARD_CONTENT">내 용</label></td>
					<td><textarea id="BOARD_CONTENT" name="BOARD_CONTENT"
							cols="40" rows="15" required="required"></textarea></td>
				</tr>
				<tr>
					<td class="td_left"><label for="BOARD_FILE"> 파일 첨부 </label></td>
					<td class="td_right"><input name="upfile" type="file"
						id="BOARD_FILE" required="required" /></td>
				</tr>
			</table>
			<section id="commandCell">
				<input type="submit" value="등록">&nbsp;&nbsp; <input
					type="reset" value="다시쓰기" />
			</section>
		</form>
	</section>



    
</body>



	<!-- 게시판 등록 -->
</body>
</html>