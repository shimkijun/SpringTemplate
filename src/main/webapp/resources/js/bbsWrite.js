/**
 * 게시글 작성하러 가기 post url 
 */

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