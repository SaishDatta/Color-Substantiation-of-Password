package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import sun.misc.Regexp;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class registration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html><body bgcolor=\"skyblue\"><h1>\n");
      out.write("\n");
      out.write("\n");
 
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
                else {
      out.write(" \n");
      out.write("                out.println(\"Sorry \"); ");
}
                
                
}
                 catch (Exception e)
                {out.println(e);}

      out.write("\n");
      out.write("                       \n");
      out.write("                \n");
      out.write("</h1></body></html>              ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
