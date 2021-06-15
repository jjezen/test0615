<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
 <HEAD>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <TITLE> New Document </TITLE> 
 <script type="text/javascript">
  function check(){
	  if (document.frm.subject.value == ""){
		  alert("제목을 입력해주세요");
		  document.frm.subject.focus();
		  return;
	  }else if (document.frm.contents.value ==""){
		  alert("내용을 입력해주세요");
		  document.frm.contents.focus();
		  return;
	  }else if (document.frm.writer.value ==""){
		  alert("작성자를 입력해주세요");
		  document.frm.writer.focus();
		  return;
	  }
	  
	  alert("전송합니다");
	  document.frm.action ="<%=request.getContextPath()%>/board/boardWriteAction.do";
	  document.frm.method = "post";
	  document.frm.submit(); 
	  return;
  } 
 </script>
 </HEAD> 
 <BODY>
<h1>게시판 글쓰기</h1>
<hr></hr>
<form name="frm"> 
 <table border="1" style="text-align:left;width:800px;height:300px">
<tr>
<td>제목</td>
<td><input type="text" name="subject" size="30"></td>
</tr>
<tr>
<td>내용</td>
<td><textarea name="contents" rows="5" cols="33"></textarea>

</tr>
<tr>
<td>작성자</td>
<td><input type="text" name="writer" size="30"></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" name="password" size="30"></td>
</tr>
<tr>
<td></td>
<td>
<input type="button" value="확인" onclick="check();"> 
<input type="reset" value="다시작성"> 
</td>
</tr>
 </table>
 </form>
 </BODY>
</HTML>
