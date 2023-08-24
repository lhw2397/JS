<%
Dim key
key = Request.QueryString("key")

' 첫 번째 웹 페이지 열기
Response.Write("<script>var page1 = window.open('https://www.google.com/search?newwindow=1&tbm=isch&q=image of " & key & "');</script>")

' 두 번째 웹 페이지 열기
Response.Write("<script>var page3 = window.open('https://www.google.com/search?newwindow=1&q=site:www.etymonline.com/kr " & key & "');</script>")

' 두 번째 웹 페이지 열기
Response.Write("<script>var page2 = window.open('https://en.dict.naver.com/#/search?range=all&query=" & key & "');</script>")

' 3분 후에 창 자동으로 닫기
''Response.Write("<script>setTimeout(function() { page1.close(); page2.close(); window.close();}, 180000); </script>")
Response.Write("<script>setTimeout(function() { page1.close(); page2.close(); page3.close();window.close(); }, 120000); </script>")
%>