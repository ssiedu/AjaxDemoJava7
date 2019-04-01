<%@page  import="java.sql.*" %>
<%
    String sql="select * from books where subject=?";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1, request.getParameter("sub"));
    ResultSet rs=ps.executeQuery();
%>
<table border="2">
    <tr>
        <th>Code</th> <th>Title</th><th>Author</th><th>Subject</th><th>Price</th>
    </tr>
<%
    while(rs.next()){
        String s1=rs.getString(1);
        String s2=rs.getString(2);
        String s3=rs.getString(3);
        String s4=rs.getString(4);
        String s5=rs.getString(5);
%>
<tr>
    <td><%=s1%></td>
    <td><%=s2%></td>
    <td><%=s3%></td>
    <td><%=s4%></td>
    <td><%=s5%></td>
</tr>
<%
    }
con.close();
%>
</table>