<%@page contentType="text/html; charset=EUC-KR"%> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� ��</title>
</head>
<body>
<center>
<h1>�Խ� �� ��</h1>
<hr>
<form action="updateBoard_proc.jsp" method="post">
<input name="seq" type="hidden" value="�ӽ�"/>
<table border="1" cellpadding="0" cellspacing="0">
<tr>
	<td bgcolor="orange" width="70">����</td>
	<td align="left"><input name="title" type="text" value="�ӽ�"/></td>
</tr>
<tr>
	<td bgcolor="orange">�ۼ���</td>
	<td align="left">�ӽ�</td>
</tr>
<tr>
	<td bgcolor="orange">����</td>
	<td align="left"><textarea name="content" cols="40" rows="10">�ӽ�</textarea></td>
</tr>
<tr>
	<td bgcolor="orange">�����</td>
	<td align="left">�ӽ�</td>
</tr>
<tr>
	<td bgcolor="orange">��ȸ��</td>
	<td align="left">�ӽ�</td>
</tr>
<tr>
	<td colspan="2" align="center">
		<input type="submit" value="�� ����"/>
	</td>
</tr>
</table>
</form>
<hr>
<a href="insertBoard.jsp">�۵��</a>&nbsp;&nbsp;&nbsp;
<a href="deleteBoard_proc.jsp">�ۻ���</a>&nbsp;&nbsp;&nbsp;
<a href="getBoardList.jsp">�۸��</a>
</center>
</body>
</html>





