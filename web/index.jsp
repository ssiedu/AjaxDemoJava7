<html>
    <script>
      var request;
      function one(){
       request=new XMLHttpRequest();
       request.onreadystatechange=two;
       var user=document.getElementById("t1").value;
       request.open("get", "TestServlet?username="+user, true);
       //request.open("get","timer.jsp",true);
       request.send(null);
      }
      function two(){
            if(request.status==200 && request.readyState==4)
             document.getElementById("data").innerHTML=request.responseText;
      }
    </script>
    
    <body>
        <h3>AJAX-EXAMPLES</h3>
        Name <input type="text" name="t1" id="t1"/>
        <input type="button" value="Click" onclick="one()"/>
        <div id="data">Place-For-Response</div>
        <hr>
        <a href="registration.jsp">New-User</a><br>
        <a href="bookstore.jsp">Book-Store</a>
    </body>
</html>
