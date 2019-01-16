/**
 * 게시글 삭제 가기 post url 
 */

function post_to_delete(path, method) {
	if(confirm('정말 삭제 하시겠습니까?')){
		var userId = document.getElementById("userId").value;
		var bbsNum = document.getElementById("bbsNum").value;
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
	    hiddenField2.setAttribute("name", "bbsNum");
	    hiddenField2.setAttribute("value",bbsNum);
	    form.appendChild(hiddenField2);
	    document.body.appendChild(form);
	    form.submit();
	}

	}