<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<center>
		<div style="background-color: #12083c;"><br><br><br><br><br><br></div>
<% 
	String Roll = request.getParameter("Roll");
	String Name = request.getParameter("Name");
	String Total = request.getParameter("Total");
	String Marks1 = request.getParameter("Marks1");
	String Marks2 = request.getParameter("Marks2");
	String Marks3 = request.getParameter("Marks3");

	double marks1 = Double.parseDouble(Marks1);
	double marks2 = Double.parseDouble(Marks2);
	double marks3 = Double.parseDouble(Marks3);
	double total = Double.parseDouble(Total);
	double percent = (total/3);
	%>
	<br><br><br><br><br><br>
	<%
	if(percent<40 || (marks1<40 || marks2<40 || marks3<40))
	{
	%>
	 Name: <%=Name%><br>
	 Roll: <%=Roll%><br>
	 Grade: Failed<br>
	<%
	}
	%>
	<%
	if(percent>=40 && percent<60)
	{
	%>
	 Name: <%=Name%><br>
	 Roll: <%=Roll%><br>
	 Grade: Pass<br>
	<%
	}
	%>
	<%
	if(percent>=60 && percent<80)
	{
	%>
	 Name: <%=Name%><br>
	 Roll: <%=Roll%><br>
	 Grade: C<br>
	<%
	}
	%>
	<%
	if(percent>=80 && percent<90)
	{
	%>
	 Name: <%=Name%><br>
	 Roll: <%=Roll%><br>
	 Grade: B<br>
	<%
	}
	%>
	<%
	if(percent>=90 && percent<=100)
	{
	%>
	 Name: <%=Name%><br>
	 Roll: <%=Roll%><br>
	 Grade: A<br>
	<%
	}
	%>
	<br>
	<input type="button" name="btn1" value="PRINT" onclick="window.print();">
	&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" name="btn2" value="BACK" onclick="window.location.href='test.html'">
	<br><br><br><br><br><br><br><br><br><br><br><br>
	<div style="background-color: #12083c;"><br><br><br><br><br><br></div>
	</center>
</body>
</html>
