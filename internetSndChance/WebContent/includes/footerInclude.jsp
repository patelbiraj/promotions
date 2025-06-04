<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.text.*, java.util.*"%>

<%
SimpleDateFormat formatNowYear = new SimpleDateFormat("yyyy");
java.util.Date nowDate = new java.util.Date();
String currentYear = formatNowYear.format(nowDate);
 %>
<p>&copy; <%=currentYear %> Florida Lottery, All Rights Reserved.</p>
<p>Must be 18 or older to play. Play responsibly.</p>