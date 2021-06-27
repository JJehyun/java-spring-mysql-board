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
          <meta charset="UTF-8">
          <link href="<c:url value="/resources/css/javaboard/JAVAdetail.css" />" rel="stylesheet">
        </head>
        <body>
        <c:url value="/javaboard" var="javaboard" />
                <c:url value="/login/check/main" var="MAIN" />
        
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
                  <ul>
                    <li><a href="${MAIN}">Home </a></li>
                     <li><a href="#">Front-End<i class="fa fa-caret-down" aria-hidden="true"></i></a>                       <ul>
                                              <li><a href="#">CSS</a></li>
                                              <li><a href="#">HTML</a></li>
                                              <li><a href="#">JAVASCRIPT</a></li>
                                              <li><a href="${javaboard}">JAVA</a></li>
                                              <li><a href="">design </a></li>
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
 <c:forEach items="${JavaBoardTOPTOP}" var="TOPTOP"> 
              <tr>
                  <td style="width:30%">${TOPTOP.title}</td>
                  <td style="width:30%">${TOPTOP.time}</td>
                  <td style="width:20%"><i class="fas fa-circle"></i>${TOPTOP.userID}</td>
                  <td style="width:20%">${TOPTOP.counter}</td>
              </tr>
</c:forEach>
          </tbody>
      </table>
      <div id="right_right_smallbox">&nbsp;
        <center>-글쓴이 정보-</center>
        <center><img src="<spring:url value ='/JAVA/${JavaBoarddetaillll.getFile()}'/>" width="80px" height="80px" style="boder:2px solid black; border-radius:50%" /></center>
        <table style="width:100%;height:35%;"> <th style="text-align:center; vertical-align:middle;">${JavaBoarddetaillll.getName()}</th> <th style="text-align:center; vertical-align:middle;">${JavaBoarddetaillll.getUserID()}</th> </table>
      </div>

</div>
              <div style="display:flex;"><div id="text_title_main">${JavaBoarddetaillll.getTitle()}</div><div id="text_main_time"><span style="position:relative; left:12%; top:21%">${JavaBoarddetaillll.getTime()}</span></div> <div id="main_text_conter_box"><span style="position:relative; left:36%; top:23%"> 조회수 : ${JavaBoarddetaillll.getCounter()} <span></div> </div>
                <div style="display:flex;"><div id="main_contents_main"><center><img src="<spring:url value ='/JAVA/${JavaBoarddetaillll.getFile()}'/>" width="750px" height="500px" /></center>${JavaBoarddetaillll.getContents()}</div><div style="display:flex;flex-direction:column;"><div id="qweqwe"><center>서울 시간별 날씨</center></div><div id="main_contents_right_box"><center style="margin-top:5px;">시간: ${weatherOOtwo.get(1)}  온도${weatherOO.get(0)} 상대습도${weatherOOthree.get(1)}</center><center style="margin-top:5px;">시간: ${weatherOOtwo.get(2)}  온도${weatherOO.get(1)} 상대습도${weatherOOthree.get(2)}</center>
                <center style="margin-top:5px;">시간: ${weatherOOtwo.get(3)}  온도${weatherOO.get(2)} 상대습도${weatherOOthree.get(3)}</center><center style="margin-top:5px;">시간: ${weatherOOtwo.get(4)}  온도${weatherOO.get(3)} 상대습도${weatherOOthree.get(4)}</center><center style="margin-top:5px;">시간: ${weatherOOtwo.get(5)}  온도${weatherOO.get(4)} 상대습도${weatherOOthree.get(5)}</center><center style="margin-top:5px;">시간: ${weatherOOtwo.get(6)}  온도${weatherOO.get(5)} 상대습도${weatherOOthree.get(6)}</center><center style="margin-top:5px;">시간: ${weatherOOtwo.get(7)}  온도${weatherOO.get(6)}상대습도${weatherOOthree.get(7)}</center></div>
                <div id="main_contents_right_box_bottom" style="height:345px;"><center style="margin_bottom:10px;"> 국내 음원 차트 10위 <center><center style="margin_bottom:10px;">${crawmusicten.get(0)}</center><center style="margin_bottom:10px;">${crawmusicten.get(1)}</center><center style="margin_bottom:10px;">${crawmusicten.get(2)}</center><center style="margin_bottom:10px;">${crawmusicten.get(3)}</center><center style="margin_bottom:10px;">${crawmusicten.get(4)}</center><center style="margin_bottom:10px;">${crawmusicten.get(5)}</center><center style="margin_bottom:10px;">${crawmusicten.get(6)}</center><center style="margin_bottom:10px;">${crawmusicten.get(7)}</center><center style="margin_bottom:10px;">${crawmusicten.get(8)}</center><center style="margin_bottom:10px;">${crawmusicten.get(9)}</center><div style="border-bottom:2px solid black"></div><center><span style="font-size:35px;">이미지 게시판</span></center><div style="border-top:2px solid black"></div><center><span style="font-size:35px;margin-top:20px;">!상세 페이지!</span></center></div></div></div>
</div>












</div>
<div style="border-top:2px solid #ece4db;width:100%;"></div>



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

          </script>

        </body>
      </html>