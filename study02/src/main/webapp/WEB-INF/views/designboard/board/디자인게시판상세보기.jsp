<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>  
    <html>
        <head>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" />
          <link rel="preconnect" href="https://fonts.gstatic.com">
          <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
          <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
          <link href="<c:url value="/resources/css/designboard/designdetail.css" />" rel="stylesheet">
          <meta charset="UTF-8">
          <title>디자인 상세보기 page</title>
        </head>
        <body>
        <c:url value="/login/check/design" var="designboard" />
        <c:url value="/javaboard" var="javaboard" />
        <c:url value="/login/check/main" var="MAIN" />
          <div class="header-section clear">
            <div class="container">
              <div class="logo left">
                <a href="#" class="logo">
                  <img src="<spring:url value='/resources/images/main/programming.png'/>" alt="">
                </a>
                <span>JE coding</span>
              </div>
              <div class="menu left">
                <div class="header-menu">
                  <ul>
                    <li><a href="/login/check/main">Home </a></li>
                     <li><a href="#">Front-End<i class="fa fa-caret-down" aria-hidden="true"></i></a>                       <ul>
                                              <li><a href="#">CSS</a></li>
                                              <li><a href="#">HTML</a></li>
                                              <li><a href="#">JAVASCRIPT</a></li>
                                              <li><a href="${javaboard}">JAVA</a></li>
                                              <li><a href="${designboard}">design </a></li>
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
<div style="display:flex;flex-direction:column">
<div style="display:flex;">
      <table id="right_table_main" style="opacity:0.6; width:850px; height:200px;">
          <tbody id="middle_tbody">
          <c:forEach items="${detailtop}" var="aaa"> 
              <tr>
                  <td style="width:30%">${aaa.title}</td>
                  <td style="width:30%">${aaa.time}</td>
                  <td style="width:20%"><i class="fas fa-circle"></i> ${aaa.userID}</td>
                  <td style="width:20%">${aaa.counter}</td>
              </tr>
              </c:forEach>
          </tbody>
      </table>
      <div id="right_right_smallbox">&nbsp;

<c:forEach items="${detailuserprofile}" var="sss"> 
        <center>-글쓴이 정보-</center>
        <center><img src="<spring:url value ='/test/${sss.file}'/>" width="80px" height="80px" style="boder:2px solid black; border-radius:50%" /></center>
        <table style="width:100%;height:35%;"> <th style="text-align:center; vertical-align:middle;">${sss.name }</th> <th style="text-align:center; vertical-align:middle;">${sss.userID}</th> </table>
      </div>
</c:forEach>
</div>
              <div style="display:flex;"><div id="text_title_main">${detailmain.getTitle()}</div><div id="text_main_time"><span style="position:relative; left:12%; top:21%">${detailmain.getTime()}</span></div> <div id="main_text_conter_box"><span style="position:relative; left:36%; top:23%"> 조회수 : ${detailmain.getCounter()}<span></div> </div>
                <div style="display:flex;"><div id="main_contents_main">${detailmain.getContents()}
<c:set var = "money" value = "${detailmain.getFile()}"/>
<c:choose> 
	<c:when test="${money eq null}">
		<p>&nbsp</p>
	</c:when> 
	<c:otherwise>
		<img src="<spring:url value ='/design/${detailmain.getFile()}'/>" width="500px" height="300px">
	</c:otherwise> 
</c:choose> </div><div style="display:flex;flex-direction:column;"><div id="main_contents_right_box"><center>국내 급상승 음원 차트</center><center><div>${crawmusic.get(0)}</div></center><center><div>${crawmusic.get(1)}</div></center><center><div>${crawmusic.get(2)}</div></center><center><div>${crawmusic.get(3)}</div></center><center><div>${crawmusic.get(4)}</div></center><center><div>${crawmusic.get(5)}</div></center><center><div>${crawmusic.get(6)}</div></center><center><div>${crawmusic.get(7)}</div></center></div><div id="main_contents_right_box_bottom"> <center>국내 음원 차트 10위 </center><center>${crawmusicten.get(0)}</center><center>${crawmusicten.get(1)}</center><center>${crawmusicten.get(2)}</center><center>${crawmusicten.get(3)}</center><center>${crawmusicten.get(4)}</center><center>${crawmusicten.get(5)}</center><center>${crawmusicten.get(6)}</center><center>${crawmusicten.get(7)}</center><center>${crawmusicten.get(8)}</center><center>${crawmusicten.get(9)}</center></div></div></div>
</div>




</div>



<div style="border-top:2px solid #ece4db;width:100%;"></div>


<center><div class="container_commenttext" style="margin-top:10px;opacity :0.8">
    <form>
      <div class="form-group">
        <textarea class="form-control status-box" rows="5" cols="110" placeholder="Enter your comment here..."></textarea>
      </div>
    </form>
    <div class="button-group pull-right" style="display:flex; position:relative; right:17.5%;">
      <p class="counter_counter">250</p>
      <a href="#" class="btn btn-primary_postpost">Post</a>
    </div>
    <ul class="posts">
    </ul>
  </div></center>
<center>
<ul style="margin-top:10px;">
<li>&nbsp</li>
<li style="border:1px solid black;list-style: none; width:800px;height:40px;border-radius:8px;background-color: #ece4db;opacity :0.7; margin-top:8px;position:relative;">asd<a style="position:absolute; right:0px; color:red;">X</a></li>
<li style="border:1px solid black;list-style: none; width:800px;height:40px;border-radius:8px;background-color: #ece4db;opacity :0.7; margin-top:8px;position:relative;">asd<a style="position:absolute; right:0px; color:red;">X</a></li>
<li style="border:1px solid black;list-style: none; width:800px;height:40px;border-radius:8px;background-color: #ece4db;opacity :0.7; margin-top:8px;position:relative;">asd<a style="position:absolute; right:0px; color:red;">X</a></li>
</ul>
</center>




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

                                  
                                  
                                  
                                  var main = function() {
                                      $('.btn').click(function() {
                                        var post = $('.status-box').val();
                                        $('<li>').text(post).prependTo('.posts');
                                        $('.status-box').val('');
                                        $('.counter_counter').text('250');
                                        $('.btn').addClass('disabled');
                                      });
                                      $('.status-box').keyup(function() {
                                        var postLength = $(this).val().length;
                                        var charactersLeft = 250 - postLength;
                                        $('.counter_counter').text(charactersLeft);
                                        if (charactersLeft < 0) {
                                          $('.btn').addClass('disabled');
                                        } else if (charactersLeft === 250) {
                                          $('.btn').addClass('disabled');
                                        } else {
                                          $('.btn').removeClass('disabled');
                                        }
                                      });
                                    }
                                    $('.btn').addClass('disabled');
                                    $(document).ready(main)
          </script>

        </body>
      </html>
