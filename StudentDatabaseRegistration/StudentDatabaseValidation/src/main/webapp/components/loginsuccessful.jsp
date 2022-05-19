<%
String uname=(String)session.getAttribute("uname");

if(uname != null)
{
	out.print(uname);
}
%>