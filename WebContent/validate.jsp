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
		//ÔÚÄÚ´æÖÐ´´½¨Í¼Ïñ
		int width=60,height=20;
		BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		//»ñÈ¡»­±Ê
		Graphics gr=image.getGraphics();
		//ÉèÖÃ±³¾°É«
		gr.setColor(new Color(200,200,200));
		gr.fillRect(0,0,width,height);//ÉèÖÃÉú³ÉµÄÍ¼Æ¬Îª³¤·½ÐÎ
		//²úÉúËæ»úÊý
		Random rnd=new Random();
		int randomValue=rnd.nextInt(8999)+1000;
		String randStr=String.valueOf(randomValue);
		//½«Ëæ»úÊý´æÈëµ½sessionµ±ÖÐ
		session.setAttribute("randStr",randStr);
		//½«ÑéÖ¤Âë´æÈëµ½Í¼Ïñ
		gr.setColor(Color.black);
		gr.setFont(new Font("",Font.PLAIN,20));
		gr.drawString(randStr,10,17);
		//Ëæ»ú²úÉú100¸ö¸ÉÈÅµã£¬Ê¹Í¼ÏñÖÐµÄµÄÊý×Ö²»ÈÝÒ×±»Ê¶±ð
		for(int i=0;i<100;i++){
			int x=rnd.nextInt(width);
			int y=rnd.nextInt(height);
			//»æÖÆÍÖÔ²£¬µÚÒ»¸ö²ÎÊýÎªÍÖÔ²×óÉÏ½ÇµÄx×ø±ê£¬µÚ¶þ¸ö²ÎÊýÎªÍÖÔ²×óÉÏ½ÇµÄy×ø±ê,µÚÈý¸öºÍµÚËÄ¸öÊÇÍÖÔ²µÄ¿íºÍ¸ß.
			gr.drawOval(x, y, 1, 1);
		}
		//ÊäÈëÍ¼Ïñµ½ä¯ÀÀÆ÷Ò³Ãæ
		ImageIO.write(image,"JPEG",response.getOutputStream());
		out.clear();
		out=pageContext.pushBody();	
	%>
</body>
</html>