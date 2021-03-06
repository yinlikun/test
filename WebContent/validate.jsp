<%@ page language="java"
contentType="image/jpeg"
import="java.awt.*"
import="java.awt.image.BufferedImage"
import="java.util.*"
import="javax.imageio.ImageIO"
pageEncoding="gb2312"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setHeader("Cache-control","no-cache");
		//在内存中创建图像
		int width=60,height=20;
		BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		//获取画笔
		Graphics gr=image.getGraphics();
		//设置背景色
		gr.setColor(new Color(200,200,200));
		gr.fillRect(0,0,width,height);//设置生成的图片为长方形
		//产生随机数
		Random rnd=new Random();
		int randomValue=rnd.nextInt(8999)+1000;
		String randStr=String.valueOf(randomValue);
		//将随机数存入到session当中
		session.setAttribute("randStr",randStr);
		//将验证码存入到图像
		gr.setColor(Color.black);
		gr.setFont(new Font("",Font.PLAIN,20));
		gr.drawString(randStr,10,17);
		//随机产生100个干扰点，使图像中的的数字不容易被识别
		for(int i=0;i<100;i++){
			int x=rnd.nextInt(width);
			int y=rnd.nextInt(height);
			//绘制椭圆，第一个参数为椭圆左上角的x坐标，第二个参数为椭圆左上角的y坐标,第三个和第四个是椭圆的宽和高.
			gr.drawOval(x, y, 1, 1);
		}
		//输入图像到浏览器页面
		ImageIO.write(image,"JPEG",response.getOutputStream());
		out.clear();
		out=pageContext.pushBody();	
	%>
</body>
</html>