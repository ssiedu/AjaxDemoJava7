<%@page import="java.sql.*" %>
<%
    String uid=request.getParameter("id");
    String sql="select uname from users where userid=?";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1,uid);
    ResultSet rs=ps.executeQuery();
    boolean b=rs.next();
    if(b==true){
        out.println("NotAvailable");
    }else{
        out.println("Available");
    }
    con.close();
%>