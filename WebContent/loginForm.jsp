<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>提交验证码</title>
<script type="text/javascript">
	function refresh(){
		loginForm.imgValidate.src="validate.jsp?id="+Math.random();
	}
	function searchForm(){
		var k;
		var s=new Object();
		window.showModalDialog("inde2.jsp",s,"dialogWidth:320px;status:no;scroll:no;dialogHeight:270px");
	}
	
</script>
</head>
<body>
	<form action="Login" name="loginForm" method="post" id="searchForm" onsubmit="searchView()">
		<table align="center" cellpadding="5" bordercolor="blue" cellspacing="20" bgcolor="white" border="10" width="400"> 
			<tr align="left">
				<td>
					请你输入账号:<input type="text" name="account"/>
				</td>
			</tr>
			<tr align="left">
				<td>
					请你输入密码:<input type="password" name="psd"/>
				</td>
			</tr>
			<tr align="left">
				<td>
					请输入验证码:<input type="password" name="code" size="10">${codestring}
					<image src="validate.jsp" name="imgValidate" onclick="refresh()"><br>
				</td>
			</tr>
			<tr align="left">
				<td>
					<input type="submit" value="登录"><input type="button" value="注册" onclick="location='Register.jsp'" />
				</td>
			</tr>
			</table>
			<!--  请你输入密码:<input type="password" name="psd"/><br>
		请输入验证码:<input type="password" name="code" size="10"/>${codeErrorString}<br>
		<image src="validate.jsp" name="imgValidate" onclick="refresh()"><br>
		<input type="submit" value="登录">
		</table>-->
	</form>
</body>
</html>