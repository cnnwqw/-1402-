<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML><br>
<br>
<br>
<br>
<br>
<br>
<br>
<HEAD><%@ include file="head.txt" %></HEAD>
<BODY background=image/1.jpg>
<font size=2>
<br>
<br>
<br>
<div align="center">
<%    try {  Class.forName("com.mysql.jdbc.Driver");
      }
      catch(Exception e){} 
      String uri="jdbc:mysql://127.0.0.1/shop1?"+
                             "user=root&password=&characterEncoding=gb2312";
      Connection con; 
      Statement sql;
      ResultSet rs;
       try {
        con=DriverManager.getConnection(uri);
        sql=con.createStatement();
        //读取classify表，获得分类：  
        rs=sql.executeQuery("SELECT * FROM classify  ");
        out.print("<form action='queryServlet' method ='post'>") ;
        out.print("<select name='fenleiNumber'>") ;
        while(rs.next()){
           int id = rs.getInt(1);
           String name = rs.getString(2);
           out.print("<option value ="+id+">"+name+"</option>");
        }  
        out.print("</select>");
        out.print("<input type ='submit' value ='提交'>");  
        out.print("</form>");
        con.close();
     }
     catch(SQLException e){ 
        out.print(e);
     }
      try {
        con=DriverManager.getConnection(uri);
        sql=con.createStatement();
        rs=sql.executeQuery("SELECT * FROM cosmeticform");
        
         while(rs.next()){
         	String number = rs.getString(6);
         	out.print("<img src='image/"+number+"'width=200 height=350</img>");
			}
           con.close();
     }
     catch(SQLException e){ 
        out.print(e);
     }
        %> 
</font>
</BODY></HTML>
