<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@page import="java.util.ArrayList"%>     
<%@ page import="org.json.JSONArray" %> 
<%@ page import="org.json.JSONObject" %> 
<%@ page import="com.jsonToTable" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript"  src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"  src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js">
</script>
<script>
  $(document).ready(function(){
    $('#data').dataTable();
  });
</script>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zendesk Assessment</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
  font-size:12px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
<p>Zendesk Tickets</p>
<table id="data" class="table  table-hover table-sm" cellspacing="0" width="100%">

<tr>
<th>requester_id</th>
<th>assignee_id</th>
<th>subject</th>
<th>description</th>
<th>tags</th>
</tr>
<%
JSONArray excelRead=jsonToTable.convertToJson1();

for (int i = 0; i < excelRead.length(); i++){
	JSONObject obj =  excelRead.getJSONObject(i);%>
<tr>
<td ><%=obj.get("requester_id").toString()%></td>
<td><%=obj.get("assignee_id").toString()%></td>
<td><%=obj.get("subject").toString()%></td>
<td><%=obj.get("description").toString()%></td>
<td><%=obj.get("tags").toString()%></td>
</tr>
<%}%>

</table>
</body>
</html>