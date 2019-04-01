

<%@page  import="java.sql.*" %>
<%
    String sql="select distinct subject from books order by subject";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    PreparedStatement ps=con.prepareStatement(sql);
    ResultSet rs=ps.executeQuery();
%>
<html>
    
    <script>
      var request;
      function one(){
       request=new XMLHttpRequest();
       request.onreadystatechange=two;
       var subject=document.getElementById("sub").value;
       request.open("get", "BookList.jsp?sub="+subject, true);
       request.send(null);
      }
      function two(){
            if(request.status==200 && request.readyState==4){
             document.getElementById("data").innerHTML=request.responseText;
         }
      }
    </script>
    
    <body>
        <h3>Book-Store</h3>
        <hr>
        Select Subject <select id="sub" onclick="one()">
            <%
                while(rs.next()){
                 String s=rs.getString(1);   
            %>
            <option><%=s%></option>
            <%
                }
            %>
            </select>
        <hr>
        <div id="data">Book-List</div>
        <hr>
    </body>
</html>

<%
    con.close();
%>