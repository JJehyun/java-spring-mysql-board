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
          <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
          <link  rel="stylesheet"href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
          <link href="<c:url value="/resources/css/main/main.css" />" rel="stylesheet">
<title>메인창</title>
</head>
<body>
<c:url value="/login/check/design" var="designboard" />
<c:url value="/javaboard" var="javaboard" />
          <div class="header-section clear">
            <div class="container_header">
              <div class="logo left">
                <a href="#" class="logo">
                  <img src="<spring:url value='/resources/images/main/programming.png'/>" alt="">
                </a>
                <span style="color:black">JE coding</span>
              </div>
              <div class="menu left">
                <div class="header-menu">
                  <ul>
                    <li><a href="#">Home </a></li>
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
          <span></span></div>






<div style="display:flex">
          <div class="container_side" style="width:15%;border-right:2px solid #ddd;">
            <div id="sidebar">
              <p id="sidebar-title">JE coding</p>
              <div class="sidebar-menus">
                <i onclick="back()" id="previous-menu" class="fa fa-chevron-left"></i>
                <ul class="tab-list" id="main">
                  <li onclick="showMenu(this, 'messages')"><i class="fa fa-envelope"></i><p>Memo</p></li>
                  <li onclick="showMenu(this, 'analytics')"><i class="fa fa-bar-chart"></i><p>Chart</p></li>
                  <li><i class="fa fa-users"></i><p>Membership</p></li>
                  <li onclick="showMenu(this, 'account')"><i class="fa fa-cog"></i><p><p>Settings</p></li>
                </ul>
             </div>
            </div>
            <div id="main-content">

            </div>


          </div>
    <div style="width:100%;z-index:-99">
<div style="width:100%; height:150px;display:flex; justify-content: space-around;">
          <div class="rolling_panel" id="flex_box_silde">
            <span style="color:white;">movie</span><span id="more_span">more+</span>
                    <ul>
                          <li><div id="movie_content" style="display:flex; flex-direction:column;"><img id="movie_img" src="${crawlingimg.get(0)}" width="180px" height="100px"/><span id="silde_one_title">${crawling.get(0)}</span></div></li>
                          <li><div id="movie_content" style="display:flex; flex-direction:column;"><img id="movie_imgtwo" src="${crawlingimg.get(1)}" width="180px" height="100px"/><span id="silde_two_title">${crawling.get(1)}</span></div></li>
                          <li><div id="movie_content" style="display:flex; flex-direction:column;"><img id="movie_imgthree" src="${crawlingimg.get(2)}" width="180px"; height="100px"/><span id="silde_three_title">${crawling.get(2)}</span></div></li>
                          <li><div id="movie_content" style="display:flex; flex-direction:column;"><img id="movie_imgfour" src="${crawlingimg.get(3)}" width="180px"; height="100px"/><span id="silde_four_title">${crawling.get(3)}</span></div></li>
                          <li><div id="movie_content" style="display:flex; flex-direction:column;"><img id="movie_imgfive" src="${crawlingimg.get(4)}" width="180px"; height="100px"/><span id="silde_five_title">${crawling.get(4)}</span></div></li>
                          <li><div id="movie_content" style="display:flex; flex-direction:column;"><img id="movie_imgsix" src="${crawlingimg.get(5)}" width="180px"; height="100px"/><span id="silde_six_title">${crawling.get(5)}</span></div></li>
                          <li><div id="movie_content" style="display:flex; flex-direction:column;"><img id="movie_seven_imgsix" src="${crawlingimg.get(6)}" width="180px"; height="100px"/><span id="silde_seven_title">${crawling.get(6)}</span></div></li>
                    </ul>
              </div>







              <div class="rolling_panel" id="flex_box_silde">
                <span style="color:white;">web site</span> <span id="more_span">more+</span>
            <ul>
                  <li><div id="movie_content"><img src=<spring:url value='/resources/images/website/api_store_1.png'/> width="180px"; height="100px"/><span id="silde_one_title"></span><span id="movie_vote1"></span></div></li>
                  <li><div id="movie_content"><img id="movie_imgtwo" src="<spring:url value='/resources/images/website/color_site_1.png'/>" width="180px"; height="100px"/><span id="silde_two_title"></span><span id="movie_vote2"></span></div></li>
                  <li><div id="movie_content"><img id="movie_imgthree" src="<spring:url value='/resources/images/website/googlefont_site_1.png'/>" width="180px"; height="100px"/><span id="silde_three_title"></span><span id="movie_vote3"></span></div></li>
                  <li><div id="movie_content"><img id="movie_imgfour" src="<spring:url value='/resources/images/website/icon_site_1.png'/>" width="180px"; height="100px"/><span id="silde_four_title"></span><span id="movie_vote4"></span></div></li>
                  <li><div id="movie_content"><img id="movie_imgfive" src="<spring:url value='/resources/images/website/illustration_site_1.png'/>" width="180px"; height="100px"/><span id="silde_five_title"></span><span id="movie_vote5"></span></div></li>
            </ul>

        </div>
      </div>
                        <div id="middle_gray_box" style="z-index:-99;width:100%; height:505px; border:2px solid #4a5759; background-color:#4a5759;opacity:0.94;">
                          <div style="display:flex;">
                          <div class="_right_outer-container" style="position:relative;">
                            <p style="position:absolute; right:1%; color:black;">MORE+</p>
                                    <table id="right_table_main" style="height:500px; overflow:hidden;">
                                        <thead>
                                            <tr>
                                                <th>작성자</th>
                                                <th style="text-align:center;">제목</th>
                                                <th style="text-align:center;">작성 일자</th>
                                                <th style="text-align:center;">조회수</th>

                                            </tr>
                                        </thead>
                                        <tbody id="middle_tbody">
                                            <tr>
                                                <td style="width:30%">TESmart KVM Switch HDMI Device</td>
                                                <td style="width:30%">spring java 참고</td>
                                                <td style="width:20%"><i class="fas fa-circle"></i>03-21</td>
                                                <td style="width:20%">190</td>
                                            </tr>
                                            <tr>
                                                <td class="name">Microsoft Surface Go Tablet</td>
                                                <td class="clicks">spring java 참고</td>
                                                <td class="priority"><i class="fas fa-circle"></i> 600</td>
                                                <td class="impressions">478</td>
                                            </tr>
                                            <tr>
                                                <td class="name">Steam Online Games</td>
                                                <td class="clicks">500</td>
                                                <td class="priority"><i class="fas fa-circle"></i> 300</td>
                                                <td class="impressions">322</td>
                                            </tr>
                                            <tr>
                                                <td class="name">Steam Online Games</td>
                                                <td class="clicks">500</td>
                                                <td class="priority"><i class="fas fa-circle"></i> 300</td>
                                                <td class="impressions">322</td>
                                            </tr>
                                            <tr>
                                                <td class="name">Steam Online Games</td>
                                                <td class="clicks">500</td>
                                                <td class="priority"><i class="fas fa-circle"></i> 300</td>
                                                <td class="impressions">322</td>
                                            </tr>
                                            <tr>
                                                <td class="name">Steam Online Games</td>
                                                <td class="clicks">500</td>
                                                <td class="priority"><i class="fas fa-circle"></i> 300</td>
                                                <td class="impressions">322</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                    <div>
                                <div id="main_table_righttop" style="position:relative;"><p style="color:black;position:absolute;">JAVA</p><p style="color:black;position:absolute;right:2%;">More+</p>
        <table cellpadding="0" cellspacing="0" border="0" style="height:60px; width:500px;text-align: left; background-color:black;">
          <tbody>
            <tr style="background-color: rgba(255,255,255,0.3);">
              <th id="tbl-header_td" style="width:10%">NO.</th>
              <th id="tbl-header_td" style="width:50%">제목</th>
              <th id="tbl-header_td" style="width:20%">작성자</th>
              <th id="tbl-header_td" style="width:20%">조회수</th>
            </tr>
            </tbody>
        </table>
        <div class="tbl-content">
            <table cellpadding="0" cellspacing="0" border="0" style="height:150px;">
              <tbody>
              <c:forEach items="${design}" var="design"> 
                <tr>
                  <td id="tbl-header_td" style="width:10%">${design.id}</td>
                  <td id="tbl-header_td" style="width:50%">${design.title}</td>
                  <td id="tbl-header_td" style="width:20%">${design.userID}</td>
                  <td id="tbl-header_td" style="width:20%">${design.counter}</td>
                </tr>
                </c:forEach>
              </tbody>
            </table></div>


                        </div>
                        <div style="background-color:black;opacity:0.8;height:280px;">
                          <div style="height:135px; width:100%; background-color:black;">
                            <img src="<spring:url value ='/JAVA/${fileone}'/>" width="150px" height="135px"  style="float:left"/>
                              <div style="display:flex; flex-direction:column;">
                                <div style="float:left;">${titleone}</div>
                                <div style="float:left;">JAVA 이미지 게시판</div>
                              <div style="width:100%; height:100%">  <img src="#" width="50px" height="50px" style="border-radius: 50%; border:0px solid white;float:left;"></img><div style="display:flex; flex-direction:column;"><span>${NameONE}</span><span>${NameADMIN}</span></div> </div>
                              <span>조회수 * 1</span>
                              <span>${NameTIMEONE}</span>
                              </div>
                          </div>
                          <div style="height:135px; width:100%; background-color:black;margin-top:5px;">
                            <img src="<spring:url value ='/JAVA/${filetwo}'/>" width="150px" height="135px"  style="float:left"/>
                              <div style="display:flex; flex-direction:column;">
                                <div style="float:left;">${titleone2}</div>
                                <div style="float:left;">JAVA 이미지 게시판</div>
                              <div style="width:100%; height:100%">  <img src="#" width="50px" height="50px" style="border-radius: 50%; border:0px solid white;float:left;"></img><div style="display:flex; flex-direction:column;"><span>${NameONE2}</span><span>${NameADMIN2}</span></div> </div>
                              <span>조회수 * 1</span>
                              <span>${NameTIMEONE2}</span>
                              </div>
                          </div>

                        </div>
            </div>
        </div>
     </div>
  </div>
  
  
    <script>
             $(document).ready(function() {

      var $panel = $(".rolling_panel").find("ul");

      var itemWidth = $panel.children().outerWidth(); // 아이템 가로 길이
      var itemLength = $panel.children().length;      // 아이템 수

      // Auto 롤링 아이디
      var rollingId;

      auto();

      // 배너 마우스 오버 이벤트
      $panel.mouseover(function() {
          clearInterval(rollingId);
      });

      // 배너 마우스 아웃 이벤트
      $panel.mouseout(function() {
          auto();
      });

      function auto() {

          // 2초마다 start 호출
          rollingId = setInterval(function() {
              start();
          }, 2000);
      }

      function start() {
          $panel.css("width", itemWidth * itemLength);
          $panel.animate({"left": - itemWidth + "px"}, function() {

              // 첫번째 아이템을 마지막에 추가하기
              $(this).append("<li>" + $(this).find("li:first").html() + "</li>");

              // 첫번째 아이템을 삭제하기
              $(this).find("li:first").remove();

              // 좌측 패널 수치 초기화
              $(this).css("left", 0);
          });
      }

      // 이전 이벤트 실행
      function prev(e) {
          $panel.css("left", - itemWidth);
          $panel.prepend("<li>" + $panel.find("li:last").html() + "</li>");
          $panel.animate({"left": "0px"}, function() {
              $(this).find("li:last").remove();
          });
      }

      // 다음 이벤트 실행
      function next(e) {
          $panel.animate({"left": - itemWidth + "px"}, function() {
              $(this).append("<li>" + $(this).find("li:first").html() + "</li>");
              $(this).find("li:first").remove();
              $(this).css("left", 0);
          });
      }
  });
   //자동 슬라이드 관련





   $(document).ready(function(){
var classes = ["priority-200", "priority-600", "priority-300"];

$("#middle_tbody tr").each(function(){
 $(this).addClass(classes[~~(Math.random()*classes.length)]);
});
});

           </script>
</body>
</html>