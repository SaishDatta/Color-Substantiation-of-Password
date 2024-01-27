<html><body bgcolor="skyblue"><h1>
<%@page import="sun.misc.Regexp"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*,java.util.*"%>
<% 
   Connection con = null;
Statement st = null;
ResultSet rs = null;
try{
	  Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","database");
System.out.println("connected");
		 st=con.createStatement();
                String un=request.getParameter("t1");
                String eid=request.getParameter("t3");
                String qst=request.getParameter("t4");
               String pno=request.getParameter("t2");
                int bclr=Integer.parseInt(request.getParameter("1"));
                int blclr=Integer.parseInt(request.getParameter("2"));
                int rclr=Integer.parseInt(request.getParameter("4"));
                int gclr=Integer.parseInt(request.getParameter("3"));
                int i=st.executeUpdate("INSERT INTO `project`.`users` (`uname`, `eid`, `pno`, `quest`, `bclr`, `blclr`, `rclr`, `gclr`) VALUES ('"+un+"', '"+eid+"', '"+pno+"', '"+qst+"', '"+bclr+"', '"+blclr+"', '"+rclr+"', '"+gclr+"')");
           //if( un==""|| eid=="" || qst==""  )
           //{ out.println("enter all textfields");}
           
           
           
           if(i>0){
                
                out.println("<h1 >Hello  "+un+"   You Are Registered Success Fully</h1>");
                out.print("<h3><a href='login1.jsp'>Login</a></h3>");
               }
                else {%> 
                out.println("Sorry "); <%}
                
                
}
                 catch (Exception e)
                {out.println(e);}
%>
                       
                
</h1></body></html>              