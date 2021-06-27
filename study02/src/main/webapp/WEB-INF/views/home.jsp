<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
</head>
<body>
    <h1>Hello world!</h1>
 
 <c:url value="login" var="login" />
<a href="${login}">로그인 화면</a>
    <table>
        <thead>
            <tr>
                <th>아이디</th>
                <th>비밀번호</th>
                <th>이름</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${memberList}" var="member">
                <tr>
                    <td>${member.id}</td>
                    <td>${member.pw}</td>
                    <td>${member.name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
 
 
 
 
 
     <table>
        <thead>
            <tr>
                <th>ONE</th>
                <th>TWO</th>
                <th>THREE</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${memberListTWO}" var="memberTO">
                <tr>
                    <td>${memberTO.userID}</td>
                    <td>${memberTO.userName}</td>
                    <td>${memberTO.userPassword}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    
    
         <table>
        <thead>
            <tr>
                <th>userID</th>
                <th>userPassword</th>

            </tr>
        </thead>
        <tbody>
            <c:forEach items="${memberListthree}" var="membertr">
                <tr>
                    <td>${membertr.userID}</td>
                    <td>${membertr.userPassword}</td>

                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    
    
    
    <form action="${check}" >
    id추가
    <input type="text" name="userid">
    pw추가
    <input type="text" name="userpw">
    name추가
	<input type="text" name="username">
	<input type="submit" value="전송">   
    </form>
</body>
</html>
 
