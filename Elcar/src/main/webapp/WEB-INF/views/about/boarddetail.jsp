<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
제목 : ${board.title }
<br>
지역 : ${board.location  }
<br>
작성자 : ${board.mem_id }
<br>
내용 : ${board.content }
<br>


<br>
<c:if test="${board.mem_id eq id}">
<input type="button" id="deletebtn" value="삭제"/>
<form action="modifyform" method="get" >
<input name="num" style="display:none" value="${board.num }">
<input type="submit" value="수정">
</form>
</c:if>

<!-- 삭제 -->
<div style="display:none">
<form action="delete" method="post" id="deletesub">
<input name="num" style="display:none" value="${board.num }">
<input type="submit" value="삭제">
</form>
</div>



</body>
<script>
$(document).ready(function(){
	 
    // 라디오버튼 클릭시 이벤트 발생
    $("#deletebtn").click(function(){
		if(confirm("삭제하시겟습니까?")){
			$("#deletesub").submit();

		} else{
		}
    });
  
    
});
</script>
</html>