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
		//���ڴ��д���ͼ��
		int width=60,height=20;
		BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		//��ȡ����
		Graphics gr=image.getGraphics();
		//���ñ���ɫ
		gr.setColor(new Color(200,200,200));
		gr.fillRect(0,0,width,height);//�������ɵ�ͼƬΪ������
		//���������
		Random rnd=new Random();
		int randomValue=rnd.nextInt(8999)+1000;
		String randStr=String.valueOf(randomValue);
		//����������뵽session����
		session.setAttribute("randStr",randStr);
		//����֤����뵽ͼ��
		gr.setColor(Color.black);
		gr.setFont(new Font("",Font.PLAIN,20));
		gr.drawString(randStr,10,17);
		//�������100�����ŵ㣬ʹͼ���еĵ����ֲ����ױ�ʶ��
		for(int i=0;i<100;i++){
			int x=rnd.nextInt(width);
			int y=rnd.nextInt(height);
			//������Բ����һ������Ϊ��Բ���Ͻǵ�x���꣬�ڶ�������Ϊ��Բ���Ͻǵ�y����,�������͵��ĸ�����Բ�Ŀ�͸�.
			gr.drawOval(x, y, 1, 1);
		}
		//����ͼ�������ҳ��
		ImageIO.write(image,"JPEG",response.getOutputStream());
		out.clear();
		out=pageContext.pushBody();	
	%>
</body>
</html>