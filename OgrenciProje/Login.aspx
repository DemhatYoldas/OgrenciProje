﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OgrenciProje.Login" %>

<!doctype html>
<html lang="en">
  <head>
  	<title> Öğrenci Sistemi Girişi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	  <link href="loginform/css/style.css" rel="stylesheet" />

	</head>
	<body class="img js-fullheight" style="background-image: url(/loginform/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Öğrenci Girişi</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Hesabınız Var mı?</h3>
		      	<form action="#" class="signin-form">
		      		<div class="form-group">
		      			<input id="Kullanicitext" type="text" class="form-control" placeholder="Kullanıcı Adınız" required>
		      		</div>
	            <div class="form-group">
	              <input id="KullaniciSifretext" type="password" class="form-control" placeholder="Şifre" required>
	              <span toggle="#KullaniciSifretext" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            	<button type="submit" class="form-control btn btn-primary submit px-3">Giriş Yap</button>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		            	<label class="checkbox-wrap checkbox-primary">Beni Hatırla
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="#" style="color: #fff">Şifremi Unuttum</a>
								</div>
	            </div>
	          </form>
	              </div>
				</div>
			</div>
		</div>
	</section>

	<script src="/loginform/js/jquery.min.js"></script>
  <script src="/loginform/js/popper.js"></script>
  <script src="/loginform/js/bootstrap.min.js"></script>
  <script src="/loginform/js/main.js"></script>

	</body>
</html>
