<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
     <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
     <link rel="preconnect" href="https://fonts.gstatic.com">
     <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
     <link href="<c:url value="/resources/css/login/login.css" />" rel="stylesheet">
     <meta charset="UTF-8">
     <title>Main login 창</title>
  </head>
   <c:url value="/login/check" var="login" />
      <body>
      <h1> 코딩 게시판 로그인 </h1>
      <div class="content">
        <div class="container">
          <img class="bg-img" src="https://mariongrandvincent.github.io/HTML-Personal-website/img-codePen/bg.jpg" alt="">
            <div class="menu">
              <a href="#connexion" class="btn-connexion"><h2>SIGN IN</h2></a>
              <a href="#enregistrer" class="btn-enregistrer active"><h2>SIGN UP</h2></a>
            </div>
            <div class="connexion">
              <div class="contact-form">
                <form action="${login}" method="post">
                <label>아이디</label>
                <input placeholder="" type="text" style="color:purple" name="userid">

                <label>비밀번호</label>
                <input placeholder="" type="password" style="color:purple" name="userpw">

                <div class="check">
                  <label>
                    <input id="check" type="checkbox" class="checkbox">
                      <svg xmlns="http://www.w3.org/2000/svg" width="26px" height="23px">
                        <path class="path-back"  d="M1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                        <path class="path-moving" d="M24.192,3.813L11.818,16.188L1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                      </svg>
                  </label>
                  <h3>Keep me signed in</h3>
                </div>

                <input class="submit" value="SIGN IN" type="submit">
                </form>
              </div>

              <hr>
              <a href="https://www.grandvincent-marion.fr/" target="_blank"><h4>Forgot password?</h4></a>
            </div>

            <div class="enregistrer active-section">
              <div class="contact-form">
                <label>USERNAME</label>
                <input placeholder="" type="text">

                <label>E-MAIL</label>
                <input placeholder="" type="text">

                <label>PASSWORD</label>
                <input placeholder="" type="text">

                <label>CONFIRM PASSWORD</label>
                <input placeholder="" type="text">

                <div class="check">
                  <label>
                    <input id="check" type="checkbox" class="checkbox">
                      <svg xmlns="http://www.w3.org/2000/svg" width="26px" height="23px">
                        <path class="path-back"  d="M1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                        <path class="path-moving" d="M24.192,3.813L11.818,16.188L1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                      </svg>
                  </label>
                  <h3>I agree</h3>
                </div>

                <input class="submit" value="SIGN UP" type="submit">

              </div>
            </div>

        </div>

      </div>

<script>
  $('.btn-enregistrer').click(function() {
  $('.connexion').addClass('remove-section');
  $('.enregistrer').removeClass('active-section');
  $('.btn-enregistrer').removeClass('active');
  $('.btn-connexion').addClass('active');
});

$('.btn-connexion').click(function() {
  $('.connexion').removeClass('remove-section');
  $('.enregistrer').addClass('active-section');
  $('.btn-enregistrer').addClass('active');
  $('.btn-connexion').removeClass('active');
});
  </script>
      </body>
    </html>