﻿<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="/assets/img/favicon.ico">
  <title>Dashboard | Front - Admin &amp; Dashboard Template</title>
  <link rel="stylesheet" type="text/css" href="assets\lib\material-design-icons\css\material-design-iconic-font.min.css">
  <link rel="stylesheet" type="text/css" href="assets\lib\jquery.gritter\css\jquery.gritter.css">
  <link rel="stylesheet" href="assets\css\app.css" type="text/css">
  <link rel="stylesheet" type="text/css" href="assets\lib\perfect-scrollbar\css\perfect-scrollbar.css">
  <link rel="stylesheet" type="text/css"
    href="assets\lib\material-design-icons\css\material-design-iconic-font.min.css">
  <link rel="stylesheet" href="assets\css\app.css" type="text/css">
</head>

<body class="be-splash-screen">
  <div class="splash-container">
    <div class="card card-border-color card-border-color-primary" style="border-radius: 10px;box-shadow: 10px 10px 10px 0 #ccc">
      <div class="card-header">
        <img class="logo-img" src="assets\svg\logos\logo.svg" alt="logo" width="{conf.logoWidth}" height="27">
        <span class="splash-description">Please enter your user information.</span>
      </div>
      <div class="card-body">
        <form method="post" action="/admin?action=login">
          <div class="login-form">
            <div class="form-group">
              <input class="form-control" id="username" name="login" type="text" placeholder="Username" autocomplete="off">
            </div>
            <div class="form-group">
              <input class="form-control" id="password" name="password" type="password" placeholder="Password">
            </div>
            <span style="color: red;">${errorsLogin}</span>
            <div class="form-group row login-tools">
              <div class="col-6 login-remember">
                <div class="custom-control custom-checkbox">
                  <input class="custom-control-input" type="checkbox" id="check1">
                  <label class="custom-control-label" for="check1">Remember Me</label>
                </div>
              </div>
              <div class="col-6 login-forgot-password"><a href="pages-forgot-password.html">Forgot Password?</a></div>
            </div>

            <div class="form-group row login-submit">
              <div class="col-6"><a href="/admin?action=create" class="btn btn-secondary btn-xl" data-dismiss="modal" type="submit">Register</a>
              </div>
              <div class="col-6"><input class="btn btn-primary btn-xl"  type="submit" data-dismiss="modal" value="Sign in">
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script src="assets\lib\jquery\jquery.min.js" type="text/javascript"></script>
  <script src="assets\lib\perfect-scrollbar\js\perfect-scrollbar.min.js" type="text/javascript"></script>
  <script src="assets\lib\bootstrap\dist\js\bootstrap.bundle.min.js" type="text/javascript"></script>
  <script src="assets\js\app.js" type="text/javascript"></script>
  <script src="assets\js\jquery-3.6.0.js" type="text/javascript"></script>
  <!-- <script src="assets\lib\perfect-scrollbar\js\perfect-scrollbar.min.js" type="text/javascript"></script>
  <script src="assets\lib\bootstrap\dist\js\bootstrap.bundle.min.js" type="text/javascript"></script> -->
  <script src="assets\js\app.js" type="text/javascript"></script>
  <script src="assets\lib\jquery.gritter\js\jquery.gritter.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function () {
      ${requestScope.errorLogin}
      //-initialize the javascript
      //return $.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Success', text: 'Incorrect account or password!', class_name: 'color danger' }), !1;
      //return $.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Error!', text: 'You modified information failed!', class_name: 'color danger' }), !1;
    });
  </script>
</body>

</html>