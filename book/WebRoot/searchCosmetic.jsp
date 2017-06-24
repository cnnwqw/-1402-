<%@ page contentType="text/html;charset=GB2312" %>
<HTML><HEAD><%@ include file="head.txt" %></HEAD>
<BODY background=image/5.jpg><font size=2>
<div align="center">
<br>可按照图书编号、书名和价格查询
<FORM action="searchByConditionServlet" Method="post" >
   <br>输入查询信息:<Input type=text name="searchMess"><br><br>
   <Input type =radio name="radio" value="cosmetic_number">图书编号
   <Input type =radio name="radio" value="cosmetic_name" checked="ok">图书名称
   <Input type =radio name="radio" value="cosmetic_price">图书价格
   <br><br><Input type=submit name="g" value="提交">
</Form>
</div>
</Font></BODY></HTML>
