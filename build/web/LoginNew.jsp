<html><body bgcolor="skyblue"><h1>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*"%>
<% try{
    Class.forName("com.mysql.jdbc.Driver");//Type4

		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","database");
            
		Statement st=con.createStatement();
                
                String un=request.getParameter("u");
                
                int bc=Integer.parseInt(request.getParameter("a"));
               int bl=Integer.parseInt(request.getParameter("b"));
               int re=Integer.parseInt(request.getParameter("c"));
                int gr=Integer.parseInt(request.getParameter("d"));
             
                String c0=request.getParameter("00");
                String c1=request.getParameter("01");
                String c2=request.getParameter("02");
                String c3=request.getParameter("03");
                String c4=request.getParameter("04");
                String c5=request.getParameter("05");
                String c6=request.getParameter("06");
                String c7=request.getParameter("07");
                String c8=request.getParameter("08");
                String c9=request.getParameter("09");
             
                String r0=request.getParameter("0");
                String r1=request.getParameter("1");
                String r2=request.getParameter("2");
                String r3=request.getParameter("3");
                String r4=request.getParameter("4");
                String r5=request.getParameter("5");
                String r6=request.getParameter("6");
                String r7=request.getParameter("7");
                String r8=request.getParameter("8");
                String r9=request.getParameter("9");
                String rr[][]=new String[10][10];
                int r[][]=new int[10][10];
                int k=0;String s="";

                for(int i=0;i<10;i++)
                { for(int j=0;j<10;j++)
                {
                    s=s+i+k+j;
           
                    rr[i][j]=request.getParameter(s);
                    s="";
                    r[i][j]=Integer.parseInt(rr[i][j]);
                }
                    }
                    
                

ResultSet rs= st.executeQuery("select * from users where uname='"+un+"'");
             
             if(rs.next()){  
              String dbuser=rs.getString("uname");
               int aa = rs.getInt("bclr");
               int ab =rs.getInt("blclr");
               int ac = rs.getInt("rclr");
               int ad = rs.getInt("gclr");
              boolean q;
              q=false;
              //out.println(""+bbc+""+bbl+""+bre+""+bgr+""+aa+""+ab+""+ac+""+ad);
            
              if (un.equals(dbuser)){ 
                  if( bc==r[aa][ac] && bl==r[ac][ab] && re==r[ad][aa] &&  gr==r[ad][ab] )
                  {
                      q= true;
                  }else {q= false;}} 
  //          
              
             if(q==true)
              {         //         out.println("CONGRATS");
 out.println("hello you are successfully logged in");//             response.sendRedirect("start.html");
              }  
              
              else {
                               out.println("INVALID USER");
              }
              
              }
             
                
                     // response.sendRedirect("1.jsp");
             
                     
    
}  catch(Exception e)
                {out.println(e);}
%>
</h1></body></html>