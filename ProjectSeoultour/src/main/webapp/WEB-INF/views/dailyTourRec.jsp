<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous" />


<style>
/*		
		Template
		*/

/* ---------------------------------------------
		Table of contents
		------------------------------------------------
		01. font & reset css
		02. reset
		03. global styles
		04. header
		05. banner
		06. features
		09. footer
		
		--------------------------------------------- */
/* 
		---------------------------------------------
		font & reset css
		--------------------------------------------- 
		*/
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900")
	;
/* 
		---------------------------------------------
		reset
		--------------------------------------------- 
		*/
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, div
		pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font,
	img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b,
	u, i, center, dl, dt, dd, ol, ul, li, figure, header, nav, section,
	article, aside, footer, figcaption {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
}

.clearfix:after {
	content: ".";
	display: block;
	clear: both;
	visibility: hidden;
	line-height: 0;
	height: 0;
}

.clearfix {
	display: inline-block;
}

html[xmlns] .clearfix {
	display: block;
}

* html .clearfix {
	height: 1%;
}

ul, li {
	padding: 0;
	margin: 0;
	list-style: none;
}

header, nav, section, article, aside, footer, hgroup {
	display: block;
}

* {
	box-sizing: border-box;
}

html, body {
	font-family: 'Poppins', sans-serif;
	-ms-text-size-adjust: 100%;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

a {
	text-decoration: none !important;
}

h1, h2, h3, h4, h5, h6 {
	color: #1e1e1e;
	margin-top: 0px;
	margin-bottom: 0px;
	font-weight: 700;
}

ul {
	margin-bottom: 0px;
}

p {
	font-size: 14px;
	line-height: 28px;
	color: #4a4a4a;
}

img {
	width: 100%;
	overflow: hidden;
}

.contact-page .section-heading {
	margin-right: 100px;
}

.card-container {
	display: flex;
	flex-wrap: nowrap; /* 줄 바꿈 방지 */
	overflow-x: auto; /* 가로 스크롤 추가 (카드가 화면에 맞지 않을 때) */
}

.card-body {
	width: 18rem;
	margin-right: 10px; /* 카드 간격 설정 */
}

/* 
		---------------------------------------------
		Global Styles
		--------------------------------------------- 
		*/
html, body {
	font-family: 'Poppins', sans-serif;
}

::selection {
	background: #0071f8;
	color: #fff;
}

::-moz-selection {
	background: #0071f8;
	color: #fff;
}

.section {
	margin-top: 120px;
}

.section-heading {
	margin-bottom: 70px;
}

.section-heading h2 {
	font-size: 40px;
	font-weight: 700;
	text-transform: capitalize;
	margin-top: 20px;
	line-height: 56px;
}

.section-heading h2 em {
	font-style: normal;
	color: #0071f8;
}

.section-heading h6 {
	color: #ee626b;
	font-size: 15px;
	text-transform: uppercase;
	font-weight: 700;
}

.icon-button a {
	display: inline-block;
	background-color: #1e1e1e;
	color: #fff;
	font-size: 14px;
	font-weight: 400;
	height: 50px;
	line-height: 50px;
	padding: 0px 30px 0px 0px;
	border-radius: 25px;
	transition: all .3s;
}

.icon-button a i {
	background-color: #f35525;
	height: 50px;
	width: 50px;
	text-align: center;
	border-radius: 50%;
	line-height: 50px;
	display: inline-block;
	margin-right: 15px;
	margin-left: -1px;
}

.icon-button a:hover {
	color: #f35525;
}

.icon-button a:hover i {
	color: #fff;
}

.main-button a {
	display: inline-block;
	background-color: #1e1e1e;
	color: #fff;
	font-size: 14px;
	font-weight: 500;
	height: 40px;
	line-height: 40px;
	padding: 0px 30px;
	border-radius: 25px;
	transition: all .3s;
}

.main-button a:hover {
	background-color: #f35525;
	color: #fff;
}

/* 
		---------------------------------------------
		Pre-loader Style
		--------------------------------------------- 
		*/
.js-preloader {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, 0.99);
	display: -webkit-box;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	opacity: 1;
	visibility: visible;
	z-index: 9999;
	-webkit-transition: opacity 0.25s ease;
	transition: opacity 0.25s ease;
}

.js-preloader.loaded {
	opacity: 0;
	visibility: hidden;
	pointer-events: none;
}

@
-webkit-keyframes dot { 50% {
	-webkit-transform: translateX(96px);
	transform: translateX(96px);
}

}
@
keyframes dot { 50% {
	-webkit-transform: translateX(96px);
	transform: translateX(96px);
}

}
@
-webkit-keyframes dots { 50% {
	-webkit-transform: translateX(-31px);
	transform: translateX(-31px);
}

}
@
keyframes dots { 50% {
	-webkit-transform: translateX(-31px);
	transform: translateX(-31px);
}

}
.preloader-inner {
	position: relative;
	width: 142px;
	height: 40px;
	background: transparent;
}

.preloader-inner .dot {
	position: absolute;
	width: 16px;
	height: 16px;
	top: 12px;
	left: 15px;
	background: #f35525;
	border-radius: 50%;
	-webkit-transform: translateX(0);
	transform: translateX(0);
	-webkit-animation: dot 2.8s infinite;
	animation: dot 2.8s infinite;
}

.preloader-inner .dots {
	-webkit-transform: translateX(0);
	transform: translateX(0);
	margin-top: 12px;
	margin-left: 31px;
	-webkit-animation: dots 2.8s infinite;
	animation: dots 2.8s infinite;
}

.preloader-inner .dots span {
	display: block;
	float: left;
	width: 16px;
	height: 16px;
	margin-left: 16px;
	background: #f35525;
	border-radius: 50%;
}

/* 
		---------------------------------------------
		Header Style
		--------------------------------------------- 
		*/
.sub-header {
	background-color: #fff;
	padding: 10px 0px;
	border-bottom: 1px solid #eee;
}

.sub-header ul li {
	display: inline-block;
}

.sub-header ul.social-links {
	text-align: right;
}

.sub-header ul.social-links li {
	margin-left: 8px;
}

.sub-header ul.social-links li a {
	display: inline-block;
	width: 30px;
	height: 30px;
	background-color: #cdcdcd;
	border-radius: 50%;
	text-align: center;
	line-height: 30px;
	color: #fff;
	font-size: 14px;
	transition: all .3s;
}

.sub-header ul.social-links li a:hover {
	background-color: #f35525;
}

.sub-header ul.info li {
	font-size: 14px;
	color: #7a7a7a;
	border-right: 1px solid #eee;
	margin-right: 25px;
	padding-right: 25px;
}

.sub-header ul.info li:last-child {
	margin-right: 0px;
	padding-right: 0px;
	border-right: none;
}

.sub-header ul.info li i {
	font-size: 20px;
	color: #f35525;
	margin-right: 8px;
}

.background-header {
	background-color: #fff;
	height: 80px !important;
	position: fixed !important;
	top: 0 !important;
	left: 0;
	right: 0;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.15) !important;
	-webkit-transition: all .5s ease 0s;
	-moz-transition: all .5s ease 0s;
	-o-transition: all .5s ease 0s;
	transition: all .5s ease 0s;
}

.header-area {
	position: relative;
	background-color: #fff;
	height: 100px;
	z-index: 100;
	-webkit-transition: all .5s ease 0s;
	-moz-transition: all .5s ease 0s;
	-o-transition: all .5s ease 0s;
	transition: all .5s ease 0s;
}

.header-area .main-nav {
	background: transparent;
	display: flex;
}

.header-area .main-nav .logo {
	-webkit-transition: all 0.3s ease 0s;
	-moz-transition: all 0.3s ease 0s;
	-o-transition: all 0.3s ease 0s;
	transition: all 0.3s ease 0s;
	display: inline-block;
}

.header-area .main-nav .logo h1 {
	line-height: 100px;
	font-size: 28px;
	text-transform: uppercase;
	color: #1e1e1e;
	font-weight: 700;
	letter-spacing: 2px;
}

.background-header .main-nav .logo h1 {
	line-height: 80px;
}

.header-area .main-nav ul.nav {
	flex-basis: 100%;
	margin-top: 30px;
	justify-content: right;
	-webkit-transition: all 0.3s ease 0s;
	-moz-transition: all 0.3s ease 0s;
	-o-transition: all 0.3s ease 0s;
	transition: all 0.3s ease 0s;
	position: relative;
	z-index: 999;
}

.header-area .main-nav .nav li:last-child {
	padding-right: 0px;
}

.header-area .main-nav .nav li {
	padding-left: 10px;
	padding-right: 10px;
	height: 100px;
	line-height: 100px;
}

.header-area .main-nav .nav li a {
	display: block;
	padding-left: 20px;
	padding-right: 20px;
	font-weight: 500;
	font-size: 15px;
	height: 40px;
	line-height: 40px;
	text-transform: capitalize;
	color: #1e1e1e;
	-webkit-transition: all 0.4s ease 0s;
	-moz-transition: all 0.4s ease 0s;
	-o-transition: all 0.4s ease 0s;
	transition: all 0.4s ease 0s;
	border: transparent;
	letter-spacing: .25px;
}

.header-area .main-nav .nav li:last-child a {
	background-color: #1e1e1e;
	color: #fff;
	font-size: 14px;
	font-weight: 400;
	text-transform: none;
	border-radius: 20px;
	padding-left: 0px;
}

.header-area .main-nav .nav li:last-child a i {
	background-color: #f35525;
	display: inline-block;
	width: 40px;
	height: 40px;
	text-align: center;
	line-height: 40px;
	margin-right: 10px;
	border-radius: 50%;
	margin-left: -1px;
}

.header-area .main-nav .nav li:last-child:hover a {
	background-color: #1e1e1e;
}

.header-area .main-nav .nav li:last-child:hover a i {
	color: #fff;
}

.header-area .main-nav .nav li:hover a {
	color: #f35525;
}

.header-area .main-nav .nav li a.active {
	color: #f35525;
}

.background-header .main-nav .nav li a.active {
	color: #f35525;
}

.header-area .main-nav .menu-trigger {
	cursor: pointer;
	position: absolute;
	top: 23px;
	width: 32px;
	height: 40px;
	text-indent: -9999em;
	z-index: 99;
	right: 20px;
	display: none;
}

.background-header .main-nav .menu-trigger {
	top: 22px;
}

.background-header .main-nav ul.nav {
	margin-top: 20px;
}

.header-area .main-nav .menu-trigger span, .header-area .main-nav .menu-trigger span:before,
	.header-area .main-nav .menu-trigger span:after {
	-moz-transition: all 0.4s;
	-o-transition: all 0.4s;
	-webkit-transition: all 0.4s;
	transition: all 0.4s;
	background-color: #1e1e1e;
	display: block;
	position: absolute;
	width: 30px;
	height: 2px;
	left: 0;
}

.header-area .main-nav .menu-trigger span:before, .header-area .main-nav .menu-trigger span:after
	{
	-moz-transition: all 0.4s;
	-o-transition: all 0.4s;
	-webkit-transition: all 0.4s;
	transition: all 0.4s;
	background-color: #1e1e1e;
	display: block;
	position: absolute;
	width: 30px;
	height: 2px;
	left: 0;
	width: 75%;
}

.header-area .main-nav .menu-trigger span:before, .header-area .main-nav .menu-trigger span:after
	{
	content: "";
}

.header-area .main-nav .menu-trigger span {
	top: 16px;
}

.header-area .main-nav .menu-trigger span:before {
	-moz-transform-origin: 33% 100%;
	-ms-transform-origin: 33% 100%;
	-webkit-transform-origin: 33% 100%;
	transform-origin: 33% 100%;
	top: -10px;
	z-index: 10;
}

.header-area .main-nav .menu-trigger span:after {
	-moz-transform-origin: 33% 0;
	-ms-transform-origin: 33% 0;
	-webkit-transform-origin: 33% 0;
	transform-origin: 33% 0;
	top: 10px;
}

.header-area .main-nav .menu-trigger.active span, .header-area .main-nav .menu-trigger.active span:before,
	.header-area .main-nav .menu-trigger.active span:after {
	background-color: transparent;
	width: 100%;
}

.header-area .main-nav .menu-trigger.active span:before {
	-moz-transform: translateY(6px) translateX(1px) rotate(45deg);
	-ms-transform: translateY(6px) translateX(1px) rotate(45deg);
	-webkit-transform: translateY(6px) translateX(1px) rotate(45deg);
	transform: translateY(6px) translateX(1px) rotate(45deg);
	background-color: #1e1e1e;
}

.background-header .main-nav .menu-trigger.active span:before {
	background-color: #1e1e1e;
}

.header-area .main-nav .menu-trigger.active span:after {
	-moz-transform: translateY(-6px) translateX(1px) rotate(-45deg);
	-ms-transform: translateY(-6px) translateX(1px) rotate(-45deg);
	-webkit-transform: translateY(-6px) translateX(1px) rotate(-45deg);
	transform: translateY(-6px) translateX(1px) rotate(-45deg);
	background-color: #1e1e1e;
}

.background-header .main-nav .menu-trigger.active span:after {
	background-color: #1e1e1e;
}

.visible {
	display: inline !important;
}

@media ( max-width : 1200px) {
	.header-area .main-nav .nav li {
		padding-left: 5px;
		padding-right: 5px;
	}
}

@media ( max-width : 767px) {
	.background-header .main-nav {
		box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
		border-radius: 0px 0px 25px 25px;
		width: 100%;
	}
	.background-header .main-nav .nav, .header-area .main-nav .nav {
		background-color: #fff;
	}
	.background-header .main-nav .nav li a, .header-area .main-nav .nav li a
		{
		line-height: 50px;
		height: 50px;
		font-weight: 400;
		color: #1e1e1e;
		background-color: #fff;
		border-radius: 0px 0px 25px 25px;
	}
	.background-header .main-nav .nav li, .header-area .main-nav .nav li {
		border-top: 1px solid #ddd;
		background-color: #f1f0fe;
		height: 50px;
		border-radius: 0px 0px 25px 25px;
	}
	.header-area .main-nav .nav {
		height: auto;
		flex-basis: 100%;
	}
	.header-area .main-nav .logo {
		position: absolute;
		left: 30px;
		top: 0px;
	}
	.background-header .main-nav .logo {
		top: 0px;
	}
	.background-header .main-nav .border-button {
		top: 0px !important;
	}
	.header-area .main-nav .border-button {
		position: absolute;
		top: 15px;
		right: 70px;
	}
	.header-area.header-sticky .nav li a:hover, .header-area.header-sticky .nav li a.active
		{
		color: #ee626b !important;
		opacity: 1;
	}
	.header-area.header-sticky .nav li.search-icon a {
		width: 100%;
	}
	.header-area .nav li:last-child a {
		background-color: transparent !important;
		font-weight: 300 !important;
		text-transform: capitalize !important;
	}
	.header-area {
		padding: 0px 15px;
		height: 80px;
		box-shadow: none;
		text-align: center;
	}
	.header-area .container {
		padding: 0px;
	}
	.header-area .logo {
		margin-left: 0px;
	}
	.header-area .menu-trigger {
		display: block !important;
	}
	.header-area .main-nav {
		overflow: hidden;
	}
	.header-area .main-nav .nav {
		float: none;
		width: 100%;
		display: none;
		-webkit-transition: all 0s ease 0s;
		-moz-transition: all 0s ease 0s;
		-o-transition: all 0s ease 0s;
		transition: all 0s ease 0s;
		margin-left: 0px;
	}
	.header-area .main-nav .nav li:first-child {
		border-top: 1px solid #eee;
	}
	.header-area.header-sticky .nav {
		margin-top: 80px !important;
	}
	.background-header.header-sticky .nav {
		margin-top: 80px !important;
	}
	.header-area .main-nav .nav li {
		width: 100%;
		background: #fff;
		padding-left: 0px !important;
		padding-right: 0px !important;
	}
}

/* 
		---------------------------------------------
		Banner Style
		--------------------------------------------- 
		*/
.main-banner .item {
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding: 100px 20% 300px 20%;
	margin: 0;
}

.main-banner .item-1 {
	background-image:
		url(https://cdn.pixabay.com/photo/2017/12/18/18/37/christmas-3026685_1280.jpg);
}

.main-banner .item-2 {
	background-image:
		url(https://cdn.pixabay.com/photo/2017/12/18/18/37/christmas-3026685_1280.jpg);
}

.main-banner .item-3 {
	background-image:
		url(https://cdn.pixabay.com/photo/2017/12/18/18/37/christmas-3026685_1280.jpg);
}

.banner-image-container {
	width: 480; /* 이미지 컨테이너의 고정된 가로 너비 */
	height: 200px; /* 이미지 컨테이너의 고정된 세로 높이 */
	overflow: hidden; /* 초과 부분 가리기 */
	position: relative;
}

.main-banner-img {
	width: 75%; /* 이미지 너비 */
	height: 55%; /* 높이 자동 조정 */
	float: right; /* 우측 정렬 */
	margin-top: -85px; /* 상단 여백 조정 */
}

.main-banner .item span.category {
	background-color: #fff;
	color: #1e1e1e;
	font-size: 16px;
	font-weight: 500;
	text-transform: capitalize;
	padding: 6px 15px;
	display: inline-block;
	margin-bottom: 30px;
}

.main-banner .item span.category em {
	font-style: normal;
	color: #f35525;
}

.main-banner .item h2 {
	font-size: 62px;
	font-weight: 700;
	text-transform: uppercase;
	color: #fff;
	line-height: 72px;
	width: 50%;
	margin-bottom: 0px;
}

.main-banner .owl-dots {
	position: absolute;
	bottom: 60px;
	left: 20%;
}

.main-banner .owl-dots .owl-dot {
	width: 10px;
	height: 10px;
	background-color: #fff;
	border-radius: 50%;
	margin-right: 10px;
	transition: all .5s;
}

.main-banner .owl-dots .active {
	background-color: #f35525;
}

.main-banner .owl-nav {
	position: absolute;
	top: 50%;
	width: 100%;
	transform: translateY(-50px);
}

.main-banner .owl-nav .owl-prev i, .main-banner .owl-nav .owl-next i {
	width: 50px;
	height: 50px;
	line-height: 50px;
	font-size: 24px;
	display: inline-block;
	color: #fff;
	background-color: rgba(255, 255, 255, 0.2);
	border-radius: 50%;
	opacity: 1;
	transition: all .3s;
}

.main-banner .owl-nav .owl-prev i {
	position: absolute;
	left: 45px;
}

.main-banner .owl-nav .owl-next i {
	position: absolute;
	right: 45px;
}

.main-banner .owl-nav .owl-prev i:hover, .main-banner .owl-nav .owl-next i:hover
	{
	opacity: 1;
	background-color: rgba(255, 255, 255, 0.5);
}

/* 
		---------------------------------------------
		Featured Style
		--------------------------------------------- 
		*/
.featured .left-image {
	position: relative;
}

.featured .left-image img {
	padding-left: 55px;
}

.featured .left-image a {
	display: inline-block;
	width: 110px;
	height: 110px;
	line-height: 110px;
	background-color: #f35525;
	border-radius: 50%;
	text-align: center;
	position: absolute;
	left: 0;
	bottom: -55px;
}

.featured .right-image {
	position: relative;
}

.featured .right-image img {
	padding-right: 55px;
}

.featured .right-image a {
	display: inline-block;
	background-color: rgba(252, 251, 251, 0.986);
	border-radius: 50%;
	text-align: center;
	position: absolute;
	margin: 2px;
	width: calc(100% - 4px);
	height: calc(100% - 4px);
	z-index: 10;
}

.featured .section-heading {
	margin-left: 10px;
	margin-right: 10px;
	margin-bottom: 60px;
}

.featured .section-heading h2 {
	width: 70%;
}

.featured .accordion {
	margin-left: 10px;
	margin-right: 10px; -
	-bs-accordion-border-radius: 10px; -
	-bs-accordion-inner-border-radius: 10px; -
	-bs-accordion-bg: #fafafa; -
	-bs-accordion-border-color: none;
	border: none !important;
}

.featured .accordion-header {
	border-bottom: 1px solid #eaeaea;
}

.featured .accordion-button {
	box-shadow: none;
	font-size: 17px;
	font-weight: 500;
	color: #1e1e1e;
}

.featured .accordion-button:not(.collapsed) {
	color: #f35525;
	background-color: #fafafa;
	outline: none;
}

.featured .accordion-button::after {
	display: none;
}

.featured #headingThree {
	border-bottom: none;
}

.featured .accordion-item:last-of-type .accordion-collapse {
	border-top: 1px solid #eaeaea;
}

.featured .info-table {
	border-radius: 10px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
	padding: 35px 30px;
}

.featured .info-table ul li {
	display: block;
	margin-bottom: 35px;
	padding-bottom: 35px;
	border-bottom: 1px solid #eee;
}

.featured .info-table ul li:last-child {
	border-bottom: none;
	padding-bottom: 0;
	margin-bottom: 0;
}

.featured .info-table ul li img {
	float: left;
	margin-right: 25px;
}

.featured .info-table ul li h4 {
	font-size: 22px;
	font-weight: 600;
}

.featured .info-table ul li h4 span {
	font-size: 15px;
	color: #aaa;
	font-weight: 400;
}

/* 
		---------------------------------------------
		Properties Style
		--------------------------------------------- 
		*/
.properties .item {
	background-color: #fafafa;
	border-radius: 10px;
	padding: 30px;
	margin-bottom: 30px;
}

.properties .item img {
	border-radius: 10px;
}

.properties .item span.category {
	background-color: #fbd9cf;
	font-weight: 500;
	border-radius: 5px;
	font-size: 14px;
	color: #1e1e1e;
	padding: 5px 12px;
	display: inline-block;
	margin-top: 25px;
}

.properties .item h4 {
	font-size: 19px;
	margin: 25px 0px;
}

.properties .item h4 a {
	color: #1e1e1e;
}

.properties .item ul li {
	display: inline-block;
	font-size: 15px;
	color: #4a4a4a;
	margin-right: 20px;
}

.properties .item ul li span {
	font-weight: 600;
	color: #1e1e1e;
}

.properties .item ul {
	border-bottom: 1px solid #eaeaea;
	margin-bottom: 30px;
	padding-bottom: 30px;
}

.properties .item h6 {
	font-size: 20px;
	color: #f35525;
	margin-top: 6px;
	display: inline-block;
	float: right;
	margin-top: 30px;
}

.properties .item .main-button {
	text-align: center;
}

/* 
		---------------------------------------------
		Footer Style
		--------------------------------------------- 
		*/
footer.footer-no-gap {
	margin-top: 0px;
}

footer {
	margin-top: 150px;
	background-color: #1e1e1e;
	min-height: 100px;
}

footer p {
	text-align: center;
	line-height: 100px;
	color: #fff;
	font-size: 16px;
	font-weight: 400;
}

footer p a {
	color: #fff;
	transition: all .3s;
	position: relative;
	z-index: 3;
}

footer p a:hover {
	opacity: 0.75;
}

/* 
		---------------------------------------------
		Page Header Style
		--------------------------------------------- 
		*/
.page-heading {
	background-image: url(../images/page-heading-bg.jpg);
	background-position: center bottom;
	background-repeat: no-repeat;
	background-size: cover;
	padding: 110px 0px;
	text-align: center;
}

.page-heading span {
	background-color: #fff;
	color: #1e1e1e;
	font-size: 14px;
	font-weight: 500;
	text-transform: uppercase;
	padding: 10px 25px;
	display: inline-block;
	margin-bottom: 30px;
}

.page-heading span a {
	color: #1e1e1e;
}

.page-heading h3 {
	font-size: 48px;
	font-weight: 900;
	text-transform: uppercase;
	color: #fff;
}

/* 
		---------------------------------------------
		Properties Style
		--------------------------------------------- 
		*/
.properties ul.properties-filter {
	list-style: none;
	text-align: center;
	margin-bottom: 70px;
}

.properties ul.properties-filter li {
	display: inline-block;
	margin: 5px 8px;
}

.properties ul.properties-filter li a {
	display: inline-block;
	text-align: center;
	font-size: 15px;
	text-transform: capitalize;
	font-weight: 500;
	color: #fff;
	background-color: #1e1e1e;
	padding: 12px 25px;
	border-radius: 5px;
	transition: all .3s;
}

.properties ul.properties-filter li a.is_active {
	background-color: #f35525;
	color: #fff;
}

.properties ul.properties-filter li a.is_active:hover {
	color: #fff;
}

.properties ul.properties-filter li a:hover {
	color: #f35525;
}

.properties ul.pagination {
	margin-top: 50px;
	text-align: center;
	width: 100%;
	display: inline-block;
}

.properties ul.pagination li {
	display: inline-block;
	margin: 0px 5px;
}

.properties ul.pagination li a {
	display: inline-block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	background-color: #1e1e1e;
	color: #fff;
	font-size: 15px;
	font-weight: 600;
	border-radius: 50%;
	transition: all .3s;
}

.properties ul.pagination li a:hover, .properties ul.pagination li a.is_active
	{
	background-color: #f35525;
	color: #fff;
}

/* 
		---------------------------------------------
		Single Page Style
		--------------------------------------------- 
		*/
.single-property .main-image img {
	float: none;
}

.single-property .main-content h4 {
	font-size: 25px;
	margin-top: 25px;
	margin-bottom: 40px;
	padding-bottom: 40px;
	border-bottom: 1px solid #eee;
}

.single-property .main-content span.category {
	background-color: #fbd9cf;
	font-weight: 500;
	border-radius: 5px;
	font-size: 14px;
	color: #1e1e1e;
	padding: 5px 12px;
	display: inline-block;
	margin-top: 40px;
}

.single-property .accordion {
	margin-top: 60px;
	margin-left: 0px;
	margin-right: 0px; -
	-bs-accordion-border-radius: 10px; -
	-bs-accordion-inner-border-radius: 10px; -
	-bs-accordion-bg: #fafafa; -
	-bs-accordion-border-color: none;
	border: none !important;
}

.single-property .accordion-header {
	border-bottom: 1px solid #eaeaea;
}

.single-property .accordion-button {
	box-shadow: none;
	font-size: 17px;
	font-weight: 500;
	color: #1e1e1e;
}

.single-property .accordion-button:not(.collapsed) {
	color: #f35525;
	background-color: #fafafa;
	outline: none;
}

.single-property .accordion-button::after {
	display: none;
}

.single-property #headingThree {
	border-bottom: none;
}

.single-property .accordion-item:last-of-type .accordion-collapse {
	border-top: 1px solid #eaeaea;
}

.single-property .info-table {
	border-radius: 10px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
	padding: 35px 30px;
	margin-left: 60px;
}

.single-property .info-table ul li {
	display: block;
	margin-bottom: 35px;
	padding-bottom: 35px;
	border-bottom: 1px solid #eee;
}

.single-property .info-table ul li:last-child {
	border-bottom: none;
	padding-bottom: 0;
	margin-bottom: 0;
}

.single-property .info-table ul li img {
	float: left;
	margin-right: 25px;
}

.single-property .info-table ul li h4 {
	font-size: 22px;
	font-weight: 600;
}

.single-property .info-table ul li h4 span {
	font-size: 15px;
	color: #aaa;
	font-weight: 400;
}

/* 
		---------------------------------------------
		Contact Page Style
		--------------------------------------------- 
		*/
.contact-page #map {
	margin-top: 100px;
}

.contact-page .section-heading {
	margin-bottom: 40px;
	margin-right: 280px;
}

.contact-page p {
	margin-bottom: 50px;
}

.contact-page .item {
	border-radius: 10px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
	padding: 35px 30px;
	background-color: #fff;
	display: inline-block;
	min-width: 360px;
}

.contact-page .phone {
	margin-bottom: 30px;
}

.contact-page .item img {
	float: left;
	margin-right: 25px;
	vertical-align: middle;
}

.contact-page .item h6 {
	font-size: 20px;
	font-weight: 600;
	vertical-align: middle;
}

.contact-page .item h6 span {
	font-size: 15px;
	color: #aaaaaa;
	font-weight: 400;
}

.contact-page #contact-form {
	margin-left: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
	padding: 35px 30px;
	background-color: #fff;
}

.contact-page #contact-form label {
	font-size: 15px;
	color: #3a3a3a;
	margin-bottom: 15px;
}

.contact-page #contact-form input {
	width: 100%;
	height: 44px;
	border-radius: 22px;
	background-color: #f6f6f6;
	border: none;
	margin-bottom: 30px;
	font-size: 14px;
	padding: 0px 15px;
}

.contact-page #contact-form textarea {
	width: 100%;
	height: 150px;
	max-height: 180px;
	border-radius: 22px;
	background-color: #f6f6f6;
	border: none;
	margin-bottom: 40px;
	font-size: 14px;
	padding: 15px 15px;
}

.contact-page #contact-form button {
	background-color: #1e1e1e;
	height: 44px;
	border-radius: 22px;
	padding: 0px 20px;
	color: #fff;
	border: none;
	font-size: 15px;
	font-weight: 500;
	transition: all .5s;
}

.contact-page #contact-form button:hover {
	background-color: #f35525;
}

/* 
		---------------------------------------------
		Responsive Style
		--------------------------------------------- 
		*/
body {
	overflow-x: hidden;
}

@media ( max-width : 767px) {
	.header-area .main-nav .logo h1 {
		line-height: 80px !important;
	}
	.best-deal .tabs-content .nav-link {
		font-size: 14px;
		padding: 0px 15px;
		height: 44px;
		line-height: 44px;
	}
	.best-deal .tabs-content ul.nav-tabs li {
		margin: 0px 5px;
	}
	.properties ul.properties-filter li a {
		font-size: 14px;
		padding: 10px 15px;
	}
	.properties ul.properties-filter li {
		margin: 5px;
	}
	.header-area .main-nav .nav li:last-child {
		display: none;
	}
}

@media ( max-width : 992px) {
	.sub-header {
		display: none;
	}
	.header-area .main-nav .logo h1 {
		line-height: 100px;
	}
	.background-header .main-nav .logo h1 {
		line-height: 80px;
	}
	.header-area .main-nav .nav li a {
		padding-left: 3px;
		padding-right: 3px;
	}
	.header-area .main-nav .nav li:last-child a {
		padding-right: 15px;
	}
	.main-banner .item h2 {
		width: 100%;
	}
	.featured .section-heading {
		margin-left: 0px;
		margin-right: 0px;
		margin-top: 100px;
	}
	.featured .accordion {
		margin-left: 0px;
		margin-right: 0px;
	}
	.featured .info-table {
		margin-top: 45px;
	}
	.fun-facts .counter {
		margin-bottom: 45px;
	}
	.best-deal .section-heading {
		text-align: center;
	}
	.best-deal .tabs-content ul.nav-tabs {
		margin-top: 0px;
		justify-content: center;
	}
	.best-deal .info-table {
		margin-bottom: 45px;
	}
	.best-deal .tab-content img {
		padding: 0px;
	}
	.best-deal .tabs-content h4 {
		margin-top: 45px;
	}
	.properties .item h6 {
		text-align: center;
		margin-bottom: 15px;
	}
	.properties .item .main-button {
		text-align: center;
	}
	.properties .item ul li {
		margin-right: 10px;
		font-size: 13px;
	}
	.contact-content .phone {
		margin-right: 0px;
		margin-bottom: 20px;
	}
	.contact-content .email {
		margin-left: 0px;
		margin-bottom: 45px;
	}
	.contact-content #contact-form {
		margin-left: 0px;
	}
	.single-property .info-table {
		margin-left: 0px;
		margin-top: 45px;
	}
	.contact-page .section-heading {
		margin-right: 0px !important;
	}
	.contact-page #contact-form {
		margin-left: 0px;
		margin-top: 60px;
	}
	.best-deal .info-table ul li span {
		float: right !important;
		width: auto !important;
	}
	.zoomable-image {
		width: 100%; /* 이미지 너비를 100%로 설정하여 부모 요소에 맞춤 */
		height: auto; /* 비율 유지 */
		transition: transform 0.3s ease; /* 줌 효과를 위한 transition */
	}
	.image-container:hover .zoomable-image {
		transform: scale(1.2); /* 이미지를 확대하는 스케일 변환 */
	}
	@media ( max-width : 1200px) {
		.best-deal .info-table ul li span {
			float: none;
			width: 100%;
		}
	}
}
</style>


<title>daily seoul tour</title>
</head>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>



<body>

	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->

						<a href="main" class="logo" style="margin-left: -85px">
							<h1>Seoul</h1>
						</a>
						<div style='position: relative; size: 50%'>
							<img src='/resources/images/003.png'>
						</div>

						<!-- ***** Menu Start ***** -->
						<ul class="nav" style="margin-left: 430px">
							<li><a href="/seoul/main">메인</a></li>
							<li><a href="/seoul/event">행사/맛집</a></li>
							<li><a href="/seoul/recommend" class="active">추천일정</a></li>
							<li><a href="/board/list">게시판</a></li>
							<c:choose>
								<c:when test="${not empty user}">
									<li><a href="/seoul/login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.name_}&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/seoul/login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로그인&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
								</c:otherwise>
							</c:choose>
						</ul>


						<a class="menu-trigger"> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->

	<hr />
	<br />
	<br />
	<div class="row">
		<div class="col-4">
			<img src="/resources/images/0.png"
				style="width: 400px; height: 400px; margin-top: 150px; margin-left: 100px;">
		</div>
		<div class="col-5" >
			<iframe src="mapkakao" style="width:1000px; height:600px;"></iframe>
		</div>
	</div>
	<div class="card-container" style="margin-top: 5px;">
		<div class="card-body">
			<a href="https://blog.naver.com/joo_ni2/223268157857" target="_blank" />
			<img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTEyMjZfMjgg%2FMDAxNjQwNDg4MDA4ODEw.mQVLa22M6RqKsAEnuT6XEvj8n7izjiu6NPlGUfvmNrAg.WTZgBccTVlhKC19f76jPXEWifru1K5O3_wLkDyOmplIg.JPEG.godake%2FIMG_8701.jpg&type=sc960_832"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">신세계백화점 본점</h5>
			<p class="card-text">
				크리스마스 미디어파사드를 위해 1년이나 준비한다는 신세계백화점 본점!<br> '신세계 극장'이라는 테마의 뮤지컬
				무대를 연출했다고 하니 명동으로 달려가봐요.
			</p>

		</div>

		<div class="card-body">
			<a href="https://blog.naver.com/frangdas/223225727547"
				target="_blank" /> <img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjEyMTJfNTAg%2FMDAxNjcwODE1OTI3MzAy.K-ROeLEq7fp66bUV43wJufs6vs-X3LbO-9bxvEzN3nYg.3Op9GS9ojWWlwN0qHviKwNRWzzWLJcvddPzztONKXsMg.JPEG.blueisky12%2F20221202%25A3%25DF185821.jpg&type=sc960_832"
				alt="..." height="350">
			<h5 class="card-title">서울 명동성당</h5>
			<p class="card-text">
				우리나라 최초로 지어진 본당이면서 가장 오래된 서양 벽돌 건축물로 역사적인 가치까지 가지고 있는 명동성당! <br>명동성당은
				성탄절과 연말연시에 어려운 이웃들과 사랑을 나누는 겨울축제를 개최합니다.
			</p>

		</div>

		<div class="card-body">
			<a href="https://blog.naver.com/nowwegom/223252974366"
				target="_blank" /> <img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjEyMTlfMjc0%2FMDAxNjcxNDM0NTYzODkz.YJXwLwk29GLdeWHi9oE0LdlLxGTqmZfOT9_1Id4fJ8Eg.hJd6LCrg8eZknPQf8xSGSpp6RuFuQbX3Xg7Kr_uK7Y8g.JPEG.leejiyoung094%2FIMG_4662.JPG&type=sc960_832"
				alt="..." height="350">
			<h5 class="card-title">더 현대서울</h5>
			<p class="card-text">
				예약하자마자 인기폭발했던 더현대 크리스마스! <br> '해리의 꿈의 상점'을 테마로 한 1000평 규모의
				H빌리지로 구경거리 가득한 트리맛집이에요.
			</p>

		</div>

		<div class="card-body">
			<a href="https://blog.naver.com/nddoo_/223122972450" target="_blank" />
			<img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjEyMDlfMTE4%2FMDAxNjcwNTU0MjM1NzU3.TBbvLnwLIDo_y2eQb1kl3Soaj5wDHrvFzsEMg6lu-JAg.-SbWTj5P5FLyDfwxaBpM2Luphoa3ZaH-7yzt3_jyuYQg.JPEG.thdus2821%2FKakaoTalk_20221129_181959492_11.jpg&type=sc960_832"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">그랜드 인터컨티넨탈 서울 파르나스</h5>
			<p class="card-text">
				호텔은 로비 라운지 & 바에 세계적인 설치미술과 박선기 작품
				<An Aggregation: Column of Lights(빛의 기둥)>을 선보입니다. 5만 여개의 크리스털
				비즈로 완성한 10개의 대형 빛 기둥이 폭포수처럼 쏟아져요!<br>
				영롱한 로비 라운지에서 오로라 로열 하이티를 즐겨보세요. 
			</p>

		</div>
	</div>
	<br />
	<br />
	<br />

	<div class="card-container">
		<div class="card-body">
			<a href="https://blog.naver.com/simsonlike/223275922827"
				target="_blank" /> <img
				src="https://t1.daumcdn.net/news/202012/09/kukminilbo/20201209181401613kbra.jpg"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">잠실 롯데월드</h5>
			<p class="card-text">크리스마스 데이트 추천</p>

		</div>

		<div class="card-body">
			<a href="https://blog.naver.com/lovejin824/223264298223"
				target="_blank" /> <img
				src="https://mblogthumb-phinf.pstatic.net/MjAyMjEyMjFfMTAx/MDAxNjcxNTg1NDgzMDky.lqWCFyyRv8CpA2byVxD8sVgU_WQvtllklPgMXZK4W6Ug.E-MP9vGypuRVxMKJD6mJWxpzkedztLb9wYZe7dVcm68g.JPEG.coowyj8860/IMG_8307.jpg?type=w800"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">잠실 롯데월드 타워</h5>
			<p class="card-text">회전목마</p>

		</div>

		<div class="card-body">
			<a href="https://blog.naver.com/jo_eunbee/223276577832"
				target="_blank" /> <img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzExMjhfNTYg%2FMDAxNzAxMDk5NjI3MTI5.lX6ckEq-_5pD9oNf5wgvPUrPsk_Yk21PjhVBYO6ocYMg.Sfm7jRIlNtINyrnIuMC2EMi73VWVcu7M-Avqk96HZN4g.JPEG.jo_eunbee%2FIMG_5663.JPG&type=a340"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">영등포 타임스퀘어</h5>
			<p class="card-text">산타 익스프레스</p>

		</div>
		<div class="card-body">
			<a href="https://blog.naver.com/jeyul_story/223274812363"
				target="_blank" /> <img
				src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fwww.shinsegaegroupnewsroom.com%2Fwp-content%2Fuploads%2F2021%2F11%2F%25EC%258B%25A0%25EC%2584%25B8%25EA%25B3%2584%25ED%2594%2584%25EB%259D%25BC%25ED%258D%25BC%25ED%258B%25B0_%25EB%25B3%25B8%25EB%25AC%25B8900.png&type=sc960_832"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">코엑스 별마당 도서관</h5>
			<p class="card-text">11m 높이의 트리와 저녁에 펼쳐지는 라이팅쇼</p>

		</div>
	</div>
	<br />
	<br />
	<br />

	<div class="card-container">
		<div class="card-body">
			<a
				href="https://cafe.naver.com/hnmommy/216359?art=ZXh0ZXJuYWwtc2VydmljZS1uYXZlci1zZWFyY2gtY2FmZS1wcg.eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjYWZlVHlwZSI6IkNBRkVfVVJMIiwiY2FmZVVybCI6ImhubW9tbXkiLCJhcnRpY2xlSWQiOjIxNjM1OSwiaXNzdWVkQXQiOjE3MDExNDM3MjU5MDJ9.MDIzkJplp1Zo9vfHBngZa-cmRN9-ZRHTO30w7ZkNvSA"
				target="_blank" /> <img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzExMTdfMjQ5%2FMDAxNzAwMTU4MDg4NTkz.6PilkayQtkU4vudCnqmfkj-d3lwRcexqLfbL35XdvUAg.sxjcUbb4wwBq6uUJQmO2CnHyPL04yPR9z2Cp2-znyDIg.JPEG.b13985%2F%25BC%25AD%25BF%25EF%25B8%25B6%25C4%25CF_1.jpg&type=sc960_832"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">종로 광화문광장 마켓</h5>
			<p class="card-text">포토존, 다양한 소품과 먹거리로 가득한 마켓</p>

		</div>

		<div class="card-body">
			<a href="https://blog.naver.com/unicho28/223276832054"
				target="_blank" /> <img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAxMTVfMjgz%2FMDAxNTc5MDc0ODI3Mjky.ZvKKjx3Hqw_J8dqmU-blNpliueQf22ShB_L0SElMtUMg.FyK1_3hLroLQ9hFnyvSwcIS6vDK39bLmYeGSZyxKIgog.JPEG.aiden5686%2F0000-00016.JPG&type=sc960_832"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">광화문 청계천 빛초롱 축제</h5>
			<p class="card-text">광화문 ~ 천계천까지 볼거리 가득!</p>

		</div>

		<div class="card-body">
			<a href="https://blog.naver.com/hing_junu/223273590073"
				target="_blank" /> <img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjEyMjVfMTQg%2FMDAxNjcxOTYzNjY2MDc5.0Cet7o063DGO8zJlGN3U72tdhbUxdvSFu_EuLXf1LSQg.GQ_WHe5VcnXBMoSGy6phjSFK19tzsqq2gmh3_kE44hQg.JPEG.leniance%2F20221224%25A3%25DF181142.jpg&type=sc960_832"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">동대문 DDP 크리스마스 마켓</h5>
			<p class="card-text">산타 익스프레스</p>

		</div>
		<div class="card-body">
			<a href="https://blog.naver.com/keira000/222984783454"
				target="_blank" /> <img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMDZfMzMg%2FMDAxNjE1MDE3NTI3Nzc3.sOrPMlFeFPt3FPZIW9sP7flamsiHWEXl6FAJKlXoNfkg.6NvHGeGfBljF7A61SW0X_P-qYe39IauFFNGWLUuw5L0g.JPEG.wooramer%2F20210228_194459.jpg&type=sc960_832"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">그랜드 하얏트 서울 스케이트장</h5>
			<p class="card-text">
				그랜드 하얏트 서울에서 겨울의 낭만을 선사합니다.<br>수천 개의 꼬마 전구 조명 아래 아름다운 서울을 바라보면
				스케이팅을 즐기고, 사랑하는 사람들과 소중한 추억을 만들어보세요.
			</p>

		</div>
	</div>
	<br />
	<br />
	<br />

	<div class="card-container">
		<div class="card-body">
			<a href="https://blog.naver.com/polarbear_gorani/223274767614"
				target="_blank" /> <img
				src="https://i.ytimg.com/vi/tkBRBJjPg9I/maxresdefault.jpg"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">디올성수(DIOR)</h5>
			<p class="card-text">디올 하우스의 컨셉 스토어 디올 성수는 매년 몽환적인 크리스마스 연출을
				보여줍니다.</p>
		</div>
		<div class="card-body">
			<a href="https://blog.naver.com/ok606/223276378440" target="_blank" />
			<img
				src="https://cdn.imweb.me/upload/S20211212e0bb6171f1f33/25f1c70b422a4.jpg"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">용산 어린이 정원</h5>
			<p class="card-text">아이와 함께하는 크리스마스</p>
		</div>
		<div class="card-body">
			<a href="https://blog.naver.com/june_be/223257859305" target="_blank" />
			<img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzExMTRfNzcg%2FMDAxNjk5OTI1MDQxODgz.skuaI6RP5rUMfpBFJ4TowXSt2mwD-CVoM6MNGHqSt9wg.LLJh1TAZGG05IzPfukx7Bhi0CAt2yG08rUqsQsDxmYUg.JPEG.goldstar1999%2FKakaoTalk_20231113_091826037_02.jpg&type=sc960_832"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">서촌 제이닷트리 트리 팝업</h5>
			<p class="card-text">아이와 함께 즐기는 크리스마스 트리 팝업</p>
		</div>
		<div class="card-body">
			<a href="https://blog.naver.com/buttonnose/222989113873"
				target="_blank" /> <img
				src="https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/7fec9212-16d5-43eb-bb62-ec54ac9e41ac.jpeg"
				class="card-img-top" alt="..." height="350">
			<h5 class="card-title">남산타워</h5>
			<p class="card-text">남산타워에서 즐기는 야경</p>
		</div>
	</div>

	<br />
	<br />
</body>
</html>


