<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<div class="list_wrap">
	<h2>
			게시판 목록
	</h2>
	<div class="list_form">
		<div class="list_head">
			<ul>
				<li>
					
				</li>
			</ul>
		</div>
		<div class="list_body">
			<ul>
				<li>
				
				</li>
			</ul>
		</div>
	</div>
	<div class="list_btn">
		<button type="button" onclick="post_to_url('writeForm')" >글쓰기</button>
	</div>
</div>
<script type="text/javascript" >
	function post_to_url(path, method) {
		var userId = document.getElementById("login_id").value;
		var userNum = document.getElementById("login_Num").value;
	    method = method || "post";
	    var form = document.createElement("form");
	    form.setAttribute("method", method);
	    form.setAttribute("action", path);
	    var hiddenField1 = document.createElement("input");
	    hiddenField1.setAttribute("type", "hidden");
	    hiddenField1.setAttribute("name", "userId");
	    hiddenField1.setAttribute("value",userId);
	    form.appendChild(hiddenField1);
	    var hiddenField2 = document.createElement("input");
	    hiddenField2.setAttribute("type", "hidden");
	    hiddenField2.setAttribute("name", "userNum");
	    hiddenField2.setAttribute("value",userNum);
	    form.appendChild(hiddenField2);
	    document.body.appendChild(form);
	    form.submit();
	}
</script>
<%@ include file="/resources/common/_bottom.jsp"%>