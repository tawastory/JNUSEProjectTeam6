function writeSave(){
	eval writeform = document.writeform;
	if(writeform.writerid.value==""){
	  alert("�ۼ��ڸ� �Է��Ͻʽÿ�.");
	  writeform.writerid.focus();
	  return false;
	}
	if(writeform.title.value==""){
	  alert("������ �Է��Ͻʽÿ�.");
	  writeform.title.focus();
	  return false;
	}
	
	if(writeform.content.value==""){
	  alert("������ �Է��Ͻʽÿ�.");
	  writeform.content.focus();
	  return false;
	}
        
	if(writeform.passwd.value==""){
	  alert(" ��й�ȣ�� �Է��Ͻʽÿ�.");
	  writeform.passwd.focus();
	  return false;
	}
 }    

function OpenPopup (c) {
	window.open(c,
	'window',
	'width=600,height=480,scrollbars=yes,status=yes');
}