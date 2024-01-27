<html><body bgcolor="skyblue"><h1>
<%@page import="sun.misc.Regexp"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*,java.util.*"%>
<% 
    try {
	  Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","database");
          Statement st=con.createStatement();
          // System.out.println("connected");
                String un=request.getParameter("t1");
                String qst=request.getParameter("t4");
                ResultSet rs= st.executeQuery("select * from users where uname='"+un+"' ");
              if(rs.next()){
               String dbuser=rs.getString("uname");
               int aa = rs.getInt("bclr");
               int ab =rs.getInt("blclr");
               int ac = rs.getInt("rclr");
               int ad = rs.getInt("gclr");
           
String question = rs.getString("quest");
boolean x;
x=false;
 if( un.equals(dbuser)){if( qst.equals(question) ){
    x=true;
    }
 else{
      x=false;
     }}else{x=false;
     }
    if(x==true) 
    { out.println("black:"+aa+"  blue:"+ab+"  red:"+ac+"  green:"+ad);}
    else
    { out.println("wrong user");}
// <jsp:forward page="login1.jsp"/> <%

} 
}
catch(Exception e)
 {
    out.println(e);
 }
 
%>
        </h1></body></html>