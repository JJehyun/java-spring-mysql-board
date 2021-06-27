<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>     
<!DOCTYPE html>
      <html>
        <head>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" />
          <link rel="preconnect" href="https://fonts.gstatic.com">
          <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
          <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
          <link href="<c:url value="/resources/css/javaboard/javaboard.css" />" rel="stylesheet">
          <meta charset="UTF-8">
          <title>자바 게시판</title>
        </head>
        <body>
        <c:url value="/javaboard/Memo" var="Memo" />
         <c:url value="/javaboard/write" var="write" />
         <c:url value="/javaboard/search" var="search" />
          <div class="header-section clear">
            <div class="container">
              <div class="logo left">
                <a href="#" class="logo">
                  <img src="C:\Users\povt9\Desktop\programming.png" alt="">
                </a>
                <span>JE coding</span>
              </div>
              <div class="menu left">
                <div class="header-menu">
                  <ul style="z-index:99;">
                    <li><a href="http://localhost:8080/control/login/check/main">Home </a></li>
                     <li style="z-index:99;"><a href="#">Front-End<i class="fa fa-caret-down" aria-hidden="true"></i></a>                       <ul>
                                              <li><a href="#">CSS</a></li>
                                              <li><a href="#">HTML</a></li>
                                              <li><a href="#">JAVASCRIPT</a></li>
                                              <li><a href="#">Library</a></li>
                                              <li><a href="#">design </a></li>
                                              <li><a href="#">reference </a></li>
                                            </ul>
                                          </li>
                     <li><a href="#">Back-End<i class="fa fa-caret-down" aria-hidden="true"></i>
      </a>
                       <ul style="z-index:99;">
                         <li><a href="#">JAVA</a></li>
                         <li><a href="#">Spring</a></li>
                         <li><a href="#">data base</a></li>
                         <li><a href="#">Library</a></li>
                         <li><a href="#">etc..</a></li>
                       </ul>
                     </li>
                     <li><a href="#">company<i class="fa fa-caret-down" aria-hidden="true"></i></a>
                       <ul style="z-index:99;">
                         <li><a href="#">schedule</a></li>
                         <li><a href="#">to do list</a></li>
                         <li><a href="#">play</a></li>
                         <li><a href="#">music</a></li>
                         <li><a href="#">video</a></li>
                         <li><a href="#">etc..</a></li>
                       </ul>
                       <li>
                  </ul>
                </div>
              </div>
             <div class="button left">
               <a href="#" class="btn-primary">
                log-out
               </a>
             </div>
            </div>
          <span>김제현</span></div>







<div style="display:flex;">
<div id="test0011">
            <div id="sidebar" >
              <p id="sidebar-title">Menu Example</p>
              <div class="sidebar-menus">
                <i onclick="back()" id="previous-menu" class="fa fa-chevron-left"></i>
                <ul class="tab-list" id="main">
                  <li onclick="showMenu(this, 'messages')"><i class="fa fa-envelope"></i><p>Messages</p></li>
                  <li onclick="showMenu(this, 'analytics')"><i class="fa fa-bar-chart"></i><p>Analytics</p></li>
                  <li><i class="fa fa-users"></i><p>Users</p></li>
                  <li onclick="showMenu(this, 'account')"><i class="fa fa-cog"></i><p><p>Account</p></li>
                </ul>
                <ul class="tab-list" id="messages">
                  <li><i class="fa fa-inbox"></i><p>Inbox</p></li>
                  <li><i class="fa fa-edit"></i><p>Drafts</p></li>
                  <li><i class="fa fa-trash"></i><p>Trash</p></li>
                </ul>
                <ul class="tab-list" id="analytics">
                  <li><i class="fa fa-line-chart"></i><p>Dashboard</p></li>
                  <li><i class="fa fa-table"></i><p>Datatables</p></li>
                </ul>
                <ul class="tab-list" id="account">
                  <li><i class="fa fa-cog"></i><p>Settings</p></li>
                  <li><i class="fa fa-sign-out"></i><p>Logout</p></li>
                </ul>
              </div>
            </div>
</div>

<div style="border:0px solid black; width:800px; height:760;">
  <div style="display:flex; justify-content: space-between;"><h1 style="margin-left:10px;"><a href="http://localhost:8080/control/javaboard">JAVA 게시판</a></h1>  <div id="searchthis" style="display:inline; margin-top:10px;margin-right:18px;">
      <input id="namanyay-search-box" name="q" size="40" type="text" placeholder="Search" />
      <input id="namanyay-search-btn" value="Go" type="submit"/>
    </div></div>
<ul id="showpingmallul" style="list-style-type: none;">
 <c:forEach items="${MainSelect}" var="vvv">  
<li id="liborderbox_boxbox"><img src="<spring:url value='/JAVA/${vvv.file}'/>" width="250px" height="190px" style="border-radius:5px;" /><p style="color:white">${vvv.title}</p><p>${vvv.userID}</p><div style="display:flex"><span>조회수: ${vvv.counter} </span><span style="margin-left:10px;">좋아요 ${vvv.good}</span></div><div style="display:flex"><div id="smallboxcolor"></div><div id="smallboxcolor"></div><div id="smallboxcolor"></div></div><span style="margin-top:3px;"> ${vvv.time} </span></li>
 </c:forEach>
</ul>


    <center><div>
<div class="pagination" style="width:450px;">
<c:choose> 
	<c:when test="${pagingint eq 1}">
			<a href=""><i> 첫 페이지 </i></a>
			  <c:forEach var="cnt" begin="1" end="2" step="1">
			  <a href="http://localhost:8080/control/javaboard/search?paging=${cnt}&q=${qq}">${cnt}</a>
			  </c:forEach>
	   		<a href="http://localhost:8080/control/javaboard/search?paging=${cnt+1}&q=${qq}"><i>NEXT</i></a>
	</c:when> 



	<c:when test="${pagingint eq totalwrite}">
			<a href="http://localhost:8080/control/javaboard/search?paging=${cnt-1}&q=${qq}"><i> PREV </i></a>
			  <c:forEach var="cnt" begin="${pagingint-1}" end="${pagingint}" step="1">
			  <a href="http://localhost:8080/control/javaboard/search?paging=${cnt}&q=${qq}">${cnt}</a>
			  </c:forEach>
	   		<a href=""><i>마지막페이지</i></a>
	</c:when> 



	<c:otherwise>
	  <a href="http://localhost:8080/control/javaboard/search?paging=${cnt-1}&q=${qq}"><i> PREV </i></a>
	  <c:forEach var="cnt" begin="${pagingint-1}" end="${pagingint+1}" step="1">
	  <a href="http://localhost:8080/control/javaboard/search?paging=${cnt}&q=${qq}">${cnt}</a>
	  </c:forEach>
	   <a href="http://localhost:8080/control/javaboard/search?paging=${cnt+1}&q=${qq}"><i>NEXT</i></a>
	</c:otherwise>
</c:choose> 


  <div class="bar"></div>
</div></div><a href="${write}" style="font-size:35px;">write</a>
</center>


</div>
<div style="display: flex;flex-direction: column;">
<div style="border:0px solid black; background-color:#bfdbf7;width:250px; height:30px;margin-top:10px;margin-bottom:10px;margin-left:25px;border-radius:10px;opacity:0.6"><center style="margin-top:5px;">이번달 대학교 주요 일정</center></div>
<div style="border:0px solid black; background-color:#bfdbf7;width:250px;height:300px;margin-left:25px;border-radius:10px;opacity:0.6"><c:forTokens  var="name" items="${CrawSchool}" delims=",[]">
    <p style="margin-top:5px;"><c:out value="${name}"/></p>
</c:forTokens></div>
<div style="border:0px solid black; background-color:#bfdbf7;width:250px; height:30px;margin-top:10px;margin-bottom:10px;margin-left:25px;border-radius:10px;opacity:0.6">
		<center style="margin-top:2px;"><div id="searchthis" style="display:inline; margin-right:5px;">
		<form action="${Memo}" Method="post">
		      <input id="namanyay-search-box" name="Memo" size="30" type="text" placeholder="Memo" />
		      <input id="namanyay-search-btn" value="Go" type="submit"/>
		</form>
    	</div></center>
</div>
			<div style="border:0px solid black; background-color:#bfdbf7;width:250px;height:450px;margin-left:25px;border-radius:10px;opacity:0.6">
			<c:forEach items="${javamemoselect}" var="sss">
			<div style="position:relative; margin-top:8px;">${sss.contents} <a href="http://localhost:8080/control/javaboard/Memo/delete?id=${sss.id}" style="position:absolute;right:5px;color:red" >X</a></div>
			 </c:forEach>
			</div>
</div>
</div>



          <script>
          let transitionDuration = 250;
          function showMenu(el, id){
            $(el).parent().hide('slide', {direction: 'left', duration: transitionDuration}).promise().done(()=>{
              $(`#${id}`).show('slide', {direction: 'right', duration: transitionDuration});
            });
            $("#previous-menu").addClass("active");
          }

          function back(){
            $('.tab-list:visible').hide('slide', {direction: 'right', duration: transitionDuration}).promise().done(()=>{
              $('.tab-list:first').show('slide', {direction: 'left', duration: transitionDuration});
            });
            $("#previous-menu").removeClass("active")
          }



          $(document).ready(function(){
var classes = ["smallcolorboxpink", "smallcolorboxblue", "smallcolorboxpurple", "smallcolorboxr", "smallcolorboxg"];

$("#showpingmallul #smallboxcolor").each(function(){
$(this).addClass(classes[~~(Math.random()*classes.length)]);
});
});

          </script>

        </body>
      </html>