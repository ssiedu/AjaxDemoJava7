<html>
     <script>
      var request;
      function one(){
       request=new XMLHttpRequest();
       request.onreadystatechange=two;
       var user=document.getElementById("t1").value;
       request.open("get", "CheckId.jsp?id="+user, true);
       request.send(null);
      }
      function two(){
            if(request.status==200 && request.readyState==4){
                
             document.getElementById("result").value=request.responseText; 
             document.getElementById("data").innerHTML=request.responseText;
         }
      }
    </script>
    <body>
        <h1>Registration Form</h1>
        <form action="SaveUser">
            <pre>
            User-id     <input type="text" name="t1" id="t1"/> <input type="button" value="check" onclick="one()"/>
                <div id="data">Result</div>
                        <input type="text" name="result" id="result"/>
            Password    <input type="password" name="t2"/>
            Username    <input type="text" name="t3"/>
                <input type="submit" value="Submit"/>
            </pre>
        </form>
    </body>
</html>
