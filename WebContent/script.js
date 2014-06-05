function writeSave(){
	eval writeform = document.writeform;
	if(writeform.writerid.value==""){
	  alert("작성자를 입력하십시요.");
	  writeform.writerid.focus();
	  return false;
	}
	if(writeform.title.value==""){
	  alert("제목을 입력하십시요.");
	  writeform.title.focus();
	  return false;
	}
	
	if(writeform.content.value==""){
	  alert("내용을 입력하십시요.");
	  writeform.content.focus();
	  return false;
	}
        
	if(writeform.passwd.value==""){
	  alert(" 비밀번호를 입력하십시요.");
	  writeform.passwd.focus();
	  return false;
	}
 }    

function OpenPopup (c) {
	window.open(c,
	'window',
	'width=600,height=480,scrollbars=yes,status=yes');
}