<%
Dim key
key = Request.QueryString("key")

' ù ��° �� ������ ����
Response.Write("<script>var page1 = window.open('https://www.google.com/search?newwindow=1&tbm=isch&q=image of " & key & "');</script>")

' �� ��° �� ������ ����
Response.Write("<script>var page3 = window.open('https://www.google.com/search?newwindow=1&q=site:www.etymonline.com/kr " & key & "');</script>")

' �� ��° �� ������ ����
Response.Write("<script>var page2 = window.open('https://en.dict.naver.com/#/search?range=all&query=" & key & "');</script>")

' 3�� �Ŀ� â �ڵ����� �ݱ�
''Response.Write("<script>setTimeout(function() { page1.close(); page2.close(); window.close();}, 180000); </script>")
Response.Write("<script>setTimeout(function() { page1.close(); page2.close(); page3.close();window.close(); }, 120000); </script>")
%>