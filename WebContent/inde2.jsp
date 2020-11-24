<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<html> 
 <head > 
   <title>新建邮件夹输入框</title> 
   <SCRIPT type="text/javascript"> 
       function bconfirm(){ 
          opener.document.all['inboxname'].value=document.form1.inboxname.value; 
          opener.opensub(); 
          window.close(); 
       } 
      
      function bcancel(){ 
          window.close(); 
       } 
      function opensub(){ 
    	  document.form1.submit(); 
    	       }  
   </SCRIPT> 
 </head>                                 
  <body bgcolor=#66CD00> 
   <font size=5>请输入新邮件夹的名称：</font> 
   <form method="post" name="form1 action="> 
     <input type="text" name="inboxname" size="35"><p> 
     <input type="button" name="inputboxbt" value="确定" οnclick="bconfirm();"> 
     <input type="button" name="inputboxbs" value="取消" οnclick="bcancel();"> 
   </form> 
 </body> 
</html> 