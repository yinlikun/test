<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
	element.style {
    display: block;
}
style.css?v=1.0.7:663
.mo-head-info .mo-pops-info {
    position: absolute;
    top: 80px;
    right: 0;
    width: 100%;
}
(index):47
.mo-back-white {
    background: #ffffff !important;
    color: #333333 !important;
}
@media (min-width: 768px)
style.css?v=1.0.7:796
.mo-pops-info {
    max-width: 320px;
}
style.css?v=1.0.7:645
.mo-anim-upbit {
    animation-name: mo-anim-upbit;
    animation-duration: .3s;
    animation-fill-mode: both;
}
@media (min-width: 768px)
style.css?v=1.0.7:496
.mo-bsmd-shadow {
    box-shadow: 0 0.0625rem 0.25rem rgba(0, 0, 0, 0.1);
}
style.css?v=1.0.7:296
.mo-fsxs-14px {
    font-size: .875rem !important;
}
style.css?v=1.0.7:259
.mo-cols-hide {
    display: none;
}
style.css?v=1.0.7:217
* {
    font-weight: 400;
    margin: 0;
    padding: 0;
    outline: 0;
    font-family: Helvetica, Arial, Microsoft Yahei, sans-serif;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
user agent stylesheet
div {
    display: block;
}
Inherited from div.mo-cols-case
style.css?v=1.0.7:217
* {
    font-weight: 400;
    margin: 0;
    padding: 0;
    outline: 0;
    font-family: Helvetica, Arial, Microsoft Yahei, sans-serif;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
Inherited from div.mo-head-info.mo-back-white.mo-cols-minw.mo-bsmd-shadow.mo-part-fixs
(index):47
.mo-back-white {
    background: #ffffff !important;
    color: #333333 !important;
}
style.css?v=1.0.7:217
* {
    font-weight: 400;
    margin: 0;
    padding: 0;
    outline: 0;
    font-family: Helvetica, Arial, Microsoft Yahei, sans-serif;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
Inherited from body.mo-cols-body.mo-cols-minw.mo-back-muted.mo-body-backs.mo-ptxs-80px.mo-part-potn.mo-pbxs-50px.mo-pbsm-0px
(index):51
.mo-back-muted {
    background-color: #f6f6f6 !important;
    color: #666666 !important;
}
style.css?v=1.0.7:257
.mo-cols-body {
    font-size: 1rem;
    background-position: 0px 0px;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
}
style.css?v=1.0.7:217
* {
    font-weight: 400;
    margin: 0;
    padding: 0;
    outline: 0;
    font-family: Helvetica, Arial, Microsoft Yahei, sans-serif;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
Inherited from html
style.css?v=1.0.7:217
* {
    font-weight: 400;
    margin: 0;
    padding: 0;
    outline: 0;
    font-family: Helvetica, Arial, Microsoft Yahei, sans-serif;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
@keyframes mo-anim-upbit
style.css?v=1.0.7:646
0% {
    transform: translate3d(0, 1.875rem, 0);
    opacity: .3;
}

style.css?v=1.0.7:647
100% {
    transform: translate3d(0, 0, 0);
    opacity: 1;
</style>

</head>
<body>
	<div class="mo-pops-info mo-pops-logins mo-fsxs-14px mo-back-white mo-bsmd-shadow mo-cols-hide mo-java-ceal mo-anim-upbit" style="display: block;">
	<div class="mo-pnxs-15px mo-ptmd-5px mo-lhxs-40px mo-cols-rows">
		<span class="mo-cols-info mo-cols-xs9">用户登录</span>
		<a class="mo-coxs-right mo-cols-info mo-cols-xs3" href="javascript:;">关闭</a>
	</div>
	<form class="mo-pops-form mo-cols-rows mo-pnxs-15px mo-lhxs-40px mo-java-event" autocomplete="off" action="/user/login.html" data-jump="/user/index.html">
	<div class="mo-cols-rows mo-mtxs-5px">
		<span class="mo-form-name">账号</span>
		<input class="mo-form-text mo-bord-muted mo-cols-info mo-cols-xs12" type="text" name="user_name" placeholder="账号/邮箱/手机号" maxlength="16">
	</div>
	<div class="mo-cols-rows mo-mtxs-5px">
		<span class="mo-form-name">密码</span>
		<input class="mo-form-text mo-bord-muted mo-cols-info mo-cols-xs12" type="password" name="user_pwd" placeholder="输入密码" maxlength="20">
	</div>
		<span class="mo-pops-tips mo-lhxs-20px mo-text-gules mo-paxs-5px mo-cols-show">&emsp;</span>
	<a class="mo-pops-login mo-part-btns mo-lhxs-34px mo-bord-round mo-back-mojia mo-cols-show" href="javascript:;">登录</a>
	<div class="mo-cols-rows mo-lhxs-40px">
		<a class="mo-cols-info mo-cols-xs3 mo-coxs-left" href="/user/findpass.html">忘记密码</a>
				<a class="mo-cols-info mo-cols-xs6 mo-coxs-center">&emsp;</a>
				<a class="mo-cols-info mo-cols-xs3 mo-coxs-right" href="/user/reg.html">注册账号</a>
	</div>
</form>
</div>
</body>
</html>