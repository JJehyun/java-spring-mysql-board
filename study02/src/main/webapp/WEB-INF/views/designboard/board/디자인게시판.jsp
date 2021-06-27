<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자인 게시판</title>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" />
          <link rel="preconnect" href="https://fonts.gstatic.com">
          <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
          <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
           <link href="<c:url value="/resources/css/designboard/design.css" />" rel="stylesheet">
</head>
<body>
<c:url value="/login/check/design/search" var="search" />
 <c:url value="/login/check/design/write" var="write" />
  <c:url value="/login/check/design/detail" var="detail" />
        <div class="header-section clear">
            <div class="container">
              <div class="logo left">
                <a href="#" class="logo">
                  <img src="<spring:url value='/resources/images/main/programming.png'/>" alt="">
                </a>
                <a href="http://localhost:8080/control/login/check/main">JE coding</a>
              </div>
              <div class="menu left">
                <div class="header-menu">
                  <ul>
                    <li><a href="http://localhost:8080/control/login/check/main">Home </a></li>
                     <li><a href="#">Front-End<i class="fa fa-caret-down" aria-hidden="true"></i></a>                       <ul>
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
                       <ul>
                         <li><a href="#">JAVA</a></li>
                         <li><a href="#">Spring</a></li>
                         <li><a href="#">data base</a></li>
                         <li><a href="#">Library</a></li>
                         <li><a href="#">etc..</a></li>
                       </ul>
                     </li>
                     <li><a href="#">company<i class="fa fa-caret-down" aria-hidden="true"></i></a>
                       <ul>
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


                <div id="black_container_main" style="display:flex;">
                  <div>
                  <div class="_right_outer-container">
                    <div style="display:flex; justify-content:space-between">
                    <span style="font-size:35px; color:white;">Design 게시판</span>
                   <div id="select_containerflex" style="display:flex;">
                    <div class="container_selection">
                          <div class="dropdown">
                            <div class="select">
                              <span>제목</span>
                              <i class="fa fa-chevron-left"></i>
                            </div>
                            <input type="hidden" name="gender">
                            <ul class="dropdown-menu">
                              <li id="male">제목</li>
                              <li id="noba">작성자</li>
                              <li id="female">조회수</li>
                              <li id="male">작성자</li>
                            </ul>
                          </div>
                      <span class="msg"></span>
                    </div>
					<form action="${search}" Method="GET">
                      <div id="searchthis" style="display:inline;">
                        <input id="namanyay-search-box" name="q" size="40" type="text" placeholder="Search" />
                        <input id="namanyay-search-btn" value="Go" type="submit"/>
                      </div>
					</form>
                  </div>
                  </div>
                      <div>
                            <table id="right_table_main" style="z-index:-99;">
                                <thead style="z-index:-99;">
                                    <tr style="z-index:-99;">
                                        <th>작성자</th>
                                        <th style="text-align:center;">제목</th>
                                        <th style="text-align:center;">작성 일자</th>
                                        <th style="text-align:center;">조회수</th>

                                    </tr>
                                </thead>
                                <tbody id="middle_tbody">
                                <c:forEach items="${DesignSelectVO}" var="VVV">                                
                                    <tr>
                                        <td style="width:30%"><img src="<spring:url value ='/test/${VVV.file}'/>" width="30px" height="35px" style="float:left" /><div style="float:left ">${VVV.userID}</div></br><p>${VVV.name}</p></td>
                                        <td style="width:30%"><a href="http://localhost:8080/control/login/check/design/detail?id=${VVV.id}">${VVV.title}</a></td>
                                        <td style="width:20%"><i class="fas fa-circle"></i>${VVV.time}</td>
                                        <td style="width:20%">${VVV.counter}</td>
                                    </tr>
								</c:forEach>
                                  </tr>
                                </tbody>
                            </table>
                            <div style="display:flex; justify-content:space-between">
                            <div style="border:0px solid black;width:30px;"></div>
                            <ul class="pagination">
 <c:set var = "moneyyy" value = "${startpage}"/>
  <c:set var = "newpaging" value = "${pagingst}"/>
 <c:set var = "totalpagingmember" value = "${count}"/>
<c:choose> 
	<c:when test="${moneyyy eq 0}">
		<li> <span>처음 페이지 입니다</span>    </li>
		<c:forEach var="cnt" begin="1" end="${countM+3 }" step="1">
		<li class="pageNumber"><a href="http://localhost:8080/control/login/check/design?paging=${cnt}">${cnt }</a></li>
		</c:forEach>
	<li><a href="http://localhost:8080/control/login/check/design?paging=${countP}" class="next">Next ></a></li>
	</c:when> 
	<c:when test="${newpaging eq totalpagingmember}">
		<li><a href="http://localhost:8080/control/login/check/design?paging=${countM}" class="prev">< Prev</a></li> <li>마지막 페이지 입니다.</li>
	</c:when> 
	<c:otherwise>
	<li><a href="http://localhost:8080/control/login/check/design?paging=${countM}" class="prev">< Prev</a></li>
		<c:forEach var="cnt" begin="${countM}" end="${countM+2 }" step="1">
		<li class="pageNumber"><a href="http://localhost:8080/control/login/check/design?paging=${cnt}">${cnt }</a></li>
		</c:forEach>
	<li><a href="http://localhost:8080/control/login/check/design?paging=${countP}" class="next">Next ></a></li>
	</c:otherwise> 
</c:choose>
							</ul>
                            <div style="border:0px solid gray; width:150px; height:60px; margin:auto 0px"><a href="${write}" style="margin-left:30px;margin-top:50px; font-size:35px">글쓰기</a></div>
                            </div>
                      </div>
                </div>
            </div>











            <div>
              <div style="border:2px solid black; background-color:#242423; width:100%; height:213px;">
              <c:forEach items="${abc}" var="zc">
                <div style="display:flex;"><img src="<spring:url value ='/test/${zc.file}'/>" width="100px" height="100px" id="circleimg" />
                  <table>                   
                    <tr style="color:black"><td>${zc.userID}</td><td>${zc.name}</td></tr>
                    <tbody>
                      <tr style="color:black"><td colspan="2">star@naver.com</td></tr>
                    </tbody>
                    </c:forEach>
                  </table>
                </div>
                <div style="border-top:2px solid black"></div>
                <table style="width:100%; text-align:center;margin:auto;">
                  <tr><td style="text-align: center;"><a href="#">Subscription + </a></td><td style="text-align: center;"><a href="#">setting + </a></td></tr>
                  <tr><td style="text-align: center;"><a href="#">mywrite + </a></td><td style="text-align: center;"><a href="#">etc. . . + </a></td></tr>
                </table>
                <div style="border-top:2px solid black"></div>
              </div>




              <div style="border:0px solid red; width:100%; height:70px;"></div>
              <div id="melon_chart_border" style="height:400px;">
                <div style="display:flex; justify-content:space-between;"><span style="color:black;">melon chart</span><span style="color:black;">+++</span></div>
                <div style="border-top:2px solid black"></div>
                <div>1.&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:black">${crawlings.get(0)}</span></div>
                <div>2.&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:black">${crawlings.get(1)}</span></div>
                <div>3.&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:black">${crawlings.get(2)}</span></div>
                <div>4.&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:black">${crawlings.get(3)}</span></div>
                <div>5.&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:black">${crawlings.get(4)}</span></div>
                <div>6.&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:black">${crawlings.get(5)}</span></div>
                <div>7.&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:black">${crawlings.get(6)}</span></div>
                <div>8.&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:black">${crawlings.get(7)}</span></div>
                <div>9.&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:black">${crawlings.get(8)}</span></div>
                <div>10.&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:black">${crawlings.get(9)}</span></div>
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
              var classes = ["priority-200", "priority-600", "priority-300"];

              $("#middle_tbody tr").each(function(){
              $(this).addClass(classes[~~(Math.random()*classes.length)]);
              });
              });



              /*Dropdown Menu*/
          $('.dropdown').click(function () {
                $(this).attr('tabindex', 1).focus();
                $(this).toggleClass('active');
                $(this).find('.dropdown-menu').slideToggle(300);
            });
            $('.dropdown').focusout(function () {
                $(this).removeClass('active');
                $(this).find('.dropdown-menu').slideUp(300);
            });
            $('.dropdown .dropdown-menu li').click(function () {
                $(this).parents('.dropdown').find('span').text($(this).text());
                $(this).parents('.dropdown').find('input').attr('value', $(this).attr('id'));
            });
        /*End Dropdown Menu*/
          </script>

</body>
</html>