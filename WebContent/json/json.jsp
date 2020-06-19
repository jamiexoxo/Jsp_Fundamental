<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"%>

{ "name","sung" "age","19" "address","서울" "items": [
{"no":"1","storeName":"강남스토어1"}, {"no":"2","storeName":"강남스토어2"},
{"no":"3","storeName":"강남스토어3"} " ]

<%-- //이걸 db로 만들면 된다. --%>



<%
//db에 있는 것을 json으로 바꾸기 
JSONObject obj = new JSONObject();
obj.put("name", "sung"); //하나의 속성이 들어가는 것 
obj.put("age", 19);
obj.put("address", "서울");

JSONArray  array = new JSONArray();

JSONObject obj1 = new JSONObject();
obj1.put("no", "1");
obj1.put("storeName", "강남스토어1");

JSONObject obj2 = new JSONObject();
obj2.put("no", "2");
obj2.put("storeName", "강남스토어2");

JSONObject obj3 = new JSONObject();
obj3.put("no", "3");
obj3.put("storeName", "강남스토어3");

array.add(obj1);
array.add(obj2);
array.add(obj3);

obj.put("items", array);
out.print(obj.toJSONString());
%>