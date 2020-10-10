<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<%@ page import="net.store.db.*"%>

<%
	// 관리자 계정이 아니면 접근할 수 없도록 메인페이지로 돌아가게한다.
String idcheck = "";
if (session.getAttribute("loginId") == null) {
	response.sendRedirect("../Main.do");
} else {
	idcheck = (String) session.getAttribute("loginId");
	if (!idcheck.equals("admin")) {
		response.sendRedirect("../Main.do");
	}
}
%>
<!DOCTYPE HTML>
<html lang="ko">

<!-- Mirrored from web.dominos.co.kr/global/login by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Sep 2020 11:22:44 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=euc-kr" />
<!-- /Added by HTTrack -->
<head>
<meta charset="euc-kr">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" id="viewport"
	content="width=1119px, user-scalable=yes">
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='expires' content='0'>
<meta http-equiv='pragma' content='no-cache'>
<meta http-equiv='Cache-Control' content='no-cache'>
<!-- 사용자지정 태그 -->
<meta name="description"
	content="도미노피자에 로그인하시면, 빠르고 간편하게 피자를 주문하실 수 있습니다." />
<meta name="title" content="로그인- 도미노피자" />
<title>도미노피자 - 관리자페이지</title>
<meta property="og:type" content="website" />
<meta property="og:title" content="로그인- 도미노피자" />
<meta property="og:site_name" content="도미노피자" />
<meta property="og:image"
	content="../../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta property="og:image:width" content="270" />
<meta property="og:image:height" content="270" />
<meta property="og:description"
	content="도미노피자에 로그인하시면, 빠르고 간편하게 피자를 주문하실 수 있습니다." />
<meta property="og:url" content="/global/login" />
<meta name="twitter:card" content="app" />
<meta name="twitter:title" content="로그인- 도미노피자" />
<meta name="twitter:image"
	content="../../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta name="twitter:description"
	content="도미노피자에 로그인하시면, 빠르고 간편하게 피자를 주문하실 수 있습니다." />
<meta name="twitter:url" content="/global/login" />
<meta name="twitter:site" content="@dominostory" />
<meta name="twitter:description"
	content="도미노피자에 로그인하시면, 빠르고 간편하게 피자를 주문하실 수 있습니다." />
<meta name="twitter:app:name:iphone" content="도미노피자" />
<meta name="twitter:app:id:iphone" content="371008429" />
<meta name="twitter:app:url:iphone"
	content="https://itunes.apple.com/kr/app/id371008429" />
<meta name="twitter:app:name:ipad" content="도미노피자" />
<meta name="twitter:app:id:ipad" content="371008429" />
<meta name="twitter:app:url:ipad"
	content="https://itunes.apple.com/kr/app/id371008429" />
<meta name="twitter:app:name:googleplay" content="도미노피자" />
<meta name="twitter:app:id:googleplay" content="kr.co.d2.dominos" />
<meta name="twitter:app:url:googleplay"
	content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:web:url" content="../index.html" />
<meta property="al:android:app_name" content="도미노피자" />
<meta property="al:android:package" content="kr.co.d2.dominos" />
<meta property="al:android:url"
	content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:ios:app_name" content="도미노피자" />
<meta property="al:ios:app_store_id" content="371008429" />
<meta property="al:ios:url"
	content="https://itunes.apple.com/kr/app/id371008429" />
<link rel="shortcut icon"
	href="https://cdn.dominos.co.kr/renewal2018/w/img/favicon.ico" />
<!-- <link rel="stylesheet" type="text/css" href="/resources/css/font.css"> -->
<!-- 20191202 주석 -->
<!-- 20191204 주석 -->

<script type="text/javascript" src="../resources/js/jquery1.11.1.js"></script>

<script type="text/javascript"
	src="../../cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="../resources/js/selectbox.js"></script>
<!-- js 수정함. -->
<script type="text/javascript"
	src="../resources/js/d2CommonUtil7ef2.js?ver=1.5"></script>
<script type="text/javascript" src="../resources/js/Cookie.js"></script>
<script type="text/javascript"
	src="../../cdn.dominos.co.kr/renewal2018/w/js/basket_w.js"></script>


<!-- 리뉴얼 적용 2019.12.02 -->
<link rel="stylesheet" type="text/css"
	href="../../cdn.dominos.co.kr/domino/asset/css/font.css">
<link rel="stylesheet" type="text/css"
	href="../../cdn.dominos.co.kr/domino/pc/css/common.css">

<!--메인에는 sub.css 호출하지않음-->
<link rel="stylesheet" type="text/css"
	href="../../cdn.dominos.co.kr/domino/pc/css/sub.css">
<!--//메인에는 sub.css 호출하지않음  -->

<script
	src="../../cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js"></script>
<script src="../../cdn.dominos.co.kr/domino/asset/js/slick.js"></script>
<script src="../../cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
<script src="../../cdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>

<script src="../../cdn.dominos.co.kr/domino/pc/js/ui.js"></script>
<script type="text/javascript" src="../resources/js/gcenmaps/gcenmap.js"></script>
<!--서브에는 main.js 호출하지않음-->
<!--//서브에는 main.js 호출하지않음-->
<!-- //리뉴얼 적용 2019.12.02 -->

<!-- 기존 팝업 재사용위해 css 추가함. 추후 common.css 에 아래 소스 추가 예정 -->
<style>
#card_add .pop_wrap {
	position: fixed;
	top: 50%;
	width: 490px;
	margin-left: -245px;
	margin-top: -35px;
}

#card_add .pop_wrap .pop_content p {
	font-size: 18px;
	color: #fff;
	text-align: center
}

.pop_toast {
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 100;
}

.pop_toast.open {
	display: block
}

.pop_toast .bg {
	position: fixed;
	width: 100%;
	height: 100%;
}

.pop_toast .pop_wrap {
	overflow: hidden;
	position: absolute;
	top: 100px;
	left: 50%;
	min-width: 400px;
	min-height: 70px;
	margin-left: -200px;
	padding: 20px;
	background:
		url(../../cdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png)
		repeat 0 0;
	border-radius: 12px;
}

.pop_toast .pop_wrap .btn_close3 {
	position: absolute;
	top: 15px;
	right: 20px;
}

.pop_toast .pop_header {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 66px;
	padding: 0 40px;
	background-color: #eeece9;
	line-height: 66px;
}

.pop_toast .pop_header h2 {
	font-size: 30px;
	font-weight: 500;
	color: #38474f;
}

.pop_toast .pop_content {
	position: relative;
	width: 100%;
	padding: 0;
}

.pop_type2 .pop_wrap .btn_close3 {
	position: absolute;
	top: 15px;
	right: 20px;
}

/* <!-- //기존 팝업 재사용위해 css 추가함. 추후 common.css 에 아래 소스 추가 예정 --> */
</style>
<script type="text/javascript">
	/*gps lsm 전역변수 */
	var lat;
	var lon;
	var xdot;
	var ydot;
	var address;
	var gps_yn;

	var CON_DOMAIN_URL = "../index.html";
	var CON_SSL_URL = "../index.html";
	var CON_STATIC_URL = "https://cdn.dominos.co.kr/renewal2018/w";
	function goLink(menuCode, link) {
		location.href = link;
	}

	$(document).ready(function() {
		$.ajaxSetup({
			cache : false
		});

		setBasketCnt();

		// 주문&주문트레커 조회(가입회원/인증회원)
		/*  */

		//상단 영문사이트 바로가기 버튼
		$(".select-type2.language").change(function() {
			location.href = $("#select-type2").val();
		});
	});

	function setBasketCnt() {
		var basketCnt = cookieManager.getCookie("BASKETCNT");
		var basket = cookieManager.getCookie("BASKET");
		var finish_basket = cookieManager.getCookie("FINISH_BASKET");

		if (basketCnt == "")
			basketCnt = "0";
		else if (basket != "" && basket == finish_basket)
			basketCnt = "0";

		if (basketCnt != "0") {
			$(".btn-cart > strong ").addClass("cart-count");
			$(".cart-count").text(basketCnt);
		} else {
			$(".btn-cart > strong").removeClass("cart-count");
		}
	}

	var goCart = function() {
		location.href = "../basket/detail.html";
	};

	var doLogin = function() {
		location.href = "Login.me";
	};

	var myOrderDetail = function() {
		var order_no = $('#tracker_order_no').val();
		location.href = "/mypage/myOrderView?order_no=" + order_no
				+ "&pageNo=1";
	};

	//페이코 회원 가입
	function goLoginPop() {
		if (location.pathname !== '/global/login')
			location.href = 'Login.me';
	}

	var goPresentLogin = function(gubun) {
		var rtnUrl = "/voucher/list?gubun=" + gubun;
		if ("false" == "true") {
			location.href = rtnUrl;
		} else {
			location.href = "/global/login?returnUrl=" + rtnUrl;
		}
	};

	function appendLocation(paramArr) {
		var simpleAddress;

		gps_yn = 'Y';

		if (paramArr == null || paramArr.length == 0) {
			return;
		}

		$.ajax({
			type : "GET",
			url : "/gis/getXyAddressAjax",
			data : paramArr.join('&'),

			success : function(data) {
				$('#myloc').html("");

				if (data.resultData.result.length > 0) {
					var html = '';
					html += '<div class="tip-box center" id="tip-box">';
					html += '<p>주변 매장의 프로모션을 확인해보세요!</p>';
					html += '</div>';

					$("#tip-box-top").append(html);
					$("#tip-box").delay(2000).fadeOut(1000);

					$.each(data.resultData.result, function(i, v) {
						if (v.roadaddr === '') {
							simpleAddress = v.sggname + ' ' + v.bemdname + ' '
									+ v.jbmain
									+ (v.jbsub == '0' ? '' : '-' + v.jbsub);
							$('#myloc').html(simpleAddress);
							lat = v.lat;
							lon = v.lon;
							xdot = v.kx;
							ydot = v.ky;
							address = simpleAddress;

						} else {
							simpleAddress = v.roadname + ' ' + v.bdmain
									+ (v.bdsub == '0' ? '' : '-' + v.bdsub);
							$('#myloc').html(simpleAddress);
							lat = v.lat;
							lon = v.lon;
							xdot = v.kx;
							ydot = v.ky;
							address = simpleAddress;
						}
					});
				} else {
					$('#myloc').html("주변 매장의 프로모션이 궁금하시면, 위치 서비스를 허용해주세요.");
				}
			},
			error : function(error) {
				alert("다시 시도해주세요.");
			}

		});
	}

	//현재 위치 받아오기

	var geo = {
		init : function() {

			if ('geolocation' in navigator) {
				/* 지오로케이션 사용 가능 */
				navigator.geolocation
						.getCurrentPosition(geo.success, geo.error);

			} else {
				/* 지오로케이션 사용 불가능 */
				alert('geolocationx');
				alert('사용자의 브라우저는 지오로케이션을 지원하지 않습니다.');

				//geo.changeTab();
			}
		},
		success : function(position) {

			var latitude = position.coords.latitude;
			var longitude = position.coords.longitude;
			// console.log('<p>위도 : ' + latitude + '° <br>경도 : ' + longitude + '°</p>');

			findLocation(latitude, longitude);
		},
		error : function(err) {

			var userAgent = navigator.userAgent.toString();

			if (/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream) { // iOS
				alert('아이폰 > 설정 >개인정보보호 > 위치서비스 > 도미노피자 항목의 위치접근허용을 체크해주세요.');
				return;
			} else {
				//alert('위치접근허용을 승인해주세요.');
				$('#myloc').html('주변 매장의 프로모션을 확인해보세요!');
				return;
				/* var latitude  = '37.539465';
				var longitude = '127.052185';

				findLocation(latitude,longitude);
				gps_yn = 'Y'; */
			}
		}
	}

	function findLocation(lat, lon) {
		//if (!!!optn) return;

		// 검색 파라미터 설정
		var paramArr = [];
		paramArr[0] = 'lat=' + lat;
		paramArr[1] = 'lon=' + lon;

		appendLocation(paramArr);
	}

	function gpsLsm(gps_yn) {
		if (gps_yn == 'Y') {
			address = encodeURIComponent(address);
			UI.layerPopUp({
				selId : '#pop-lsm',
				url : '/branch/gpsLsm',
				data : {
					lon : lon,
					lat : lat,
					xdot : xdot,
					ydot : ydot,
					address : address
				}
			});
			address = decodeURIComponent(address);
			_trk_call();
		} else {
			alert('위치접근허용을 승인해주세요.');
		}
	}

	var _trk_call = function() {
		// 트래킹
		var _trk_url = document.baseURI + '&_TRK_PI=WP_1P&_TRK_CP=LSM 팝업';
		try {
			_trk_code_base = _trk_code_base.replace(/(du=).*?(&)/, '$1'
					+ escape(_trk_url) + '$2');
			_trk_flashEnvView("_TRK_PI=WP_1P", "_TRK_CP=LSM 팝업");
			/* console.log('TRK WEB_3_2 DONE!!'); */
		} catch (e) {
			console.log(e.message);
		}

	}
</script>
<!-- Naver Anlytics 공통-->
<script>
	var WCSLOG_URL = location.protocol == "https:" ? "https://wcs.naver.net/wcslog.js"
			: "http://wcs.naver.net/wcslog.js";
	document.write(unescape("%3Cscript type='text/javascript' src='"
			+ WCSLOG_URL + "' %3E%3C/script%3E"));
</script>
<!-- // Naver Anlytics 공통-->

<!-- Global site tag (gtag.js) - Google Ads: 753034372 -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=AW-753034372"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());
	gtag('config', 'AW-753034372');
	gtag('config', 'AW-956654516');
</script>
<!-- GTM d2 요청작업 -->
<!-- 2019 12 02  홍일선 속도 느려서 임시 주석! 반영 시엔 주석 풀고!!!
<script>
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
 new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TCXGS64');</script> -->
<!-- GTM d2 요청작업 -->

</head>
<body>
	<!-- top_event_bnr -->
	<!-- <div class="top_bnr top_event" id="lineBanner">
		<div class="top_event_wrap">
			<a href="javascript:;" class="btn_ico btn_event_close" onclick="lineBannerClose(); return false;">close</a>
		</div>
	</div> -->
	<!-- //top_event_bnr -->

	<div id="wrap">
		<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="../Main.do" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">도미노피자</h1>
					</a>

					<div class="util-nav">

						<!-- **** 위쪽 로그인 배너 -->
						<%
							String loginId = (String) session.getAttribute("loginId");
						String nmembername = (String) session.getAttribute("nmembername");
						%>

						<%
							if (loginId == null && nmembername == null) { //로그인 안했을 때 나오는 배너
						%>
						<a href="./Login.me">로그인</a> <a href="../member/JoinForm.me">회원가입</a>
						<%
							} else { //로그인 성공시 나오는 배너

						if (nmembername == null && loginId != null) {
						%>
						<span style="margin-right: 10px"> <b><%=loginId%>님
								환영합니다!</b>
						</span>
						<%
							if (loginId.equals("admin")) { //관리자 계정일 경우
						%>
						<a href="../global/Logout.me">로그아웃</a> <a href="./AdminPage.ad">관리자페이지</a>
						<%
							} else { //일반 계정일 경우
						%>
						<a href="../global/Logout.me">로그아웃</a> <a
							href="../member/MemberPage.me?loginId=<%=loginId%>">마이페이지</a>
						<%
							}
						} else if (nmembername != null && loginId == null) {
						%>
						<span style="margin-right: 10px"> <b><%=nmembername%>님
								환영합니다!</b> <a href="../global/Logout.me">로그아웃</a>
						</span>
						<%
							}
						}
						%>



						<!--2020-03-17 추가(s)-->
						<a href="javascript:void(0);" class="lang">
							<div class="select-type2 language">
								<select id="select-type2">
									<option value="/main?locale=ko">KOR</option>
									<option value="/main?locale=en">ENG</option>
								</select>
							</div>
						</a>
						<!--2020-03-17 추가(e)-->
					</div>
				</div>
			</div>

			<!-- main 1dep menu -->
			<script type="text/javascript"
				src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
			<script type="text/javascript">
				$(function() {
					$("ul.sub").hide();
					$("ul.menu li").hover(function() {
						$("ul:not(:animated)", this).slideDown("fast");
					}, function() {
						$("ul", this).slideUp("fast");
					});
				});
			</script>

			<style type="text/css">
* {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

#container2 {
	width: 1000px;
}

ul.menu li {
	float: left;
	width: 250px;
	height: 48px;
	background-color: #fff;
	position: relative;
	z-index: 11;
}

ul.menu li a {
	display: block;
	width: 100%;
	height: 100%;
	line-height: 48px;
	<!--text-indent: 30px;-->
	font-weight: bold;
	color: #000;
	text-decoration: none;
}

ul.menu li a:hover {
	font-weight: bolder;
	background-color: #ddd;
}

ul.menu li ul.sub {
	position: absolute;
}

ul.menu {
	zoom: 1;
}

ul.menu:after {
	height: 0;
	visibility: hidden;
	content: ".";
	display: block;
	clear: both;
}
</style>
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<div id="container2" align="center"
						style="position: relative;">


						<ul class="menu">
							<!-- "#" : 스크롤 위치를 맨 위로  -->
							<li><a href="#">회원 및 매장 관리</a>
								<ul class="sub">
									<li><a href="./AdminMemberList.me">회원목록</a></li>
									<li><a href="./AdminStoreList.st">매장목록</a></li>
								</ul></li>
							<li><a href="#">메뉴관리</a>
								<ul class="sub">
									<li><a href="./Product.pro">메뉴 관리</a></li>
								</ul></li>
							<li><a href="#">관리자 게시판</a>
								<ul class="sub">
									<li><a href="./AdminNewsList.bo">뉴스 관리</a></li>
									<li><a href="./AdminIssueList.bo">보도자료 관리</a></li>
									<li><a href="./AdminEventList.bo">이벤트 관리</a></li>
									<li><a href="./AdminAllianceList.bo">제휴 관리</a></li>
									<li><a href="./AdminCouponList.bo">쿠폰 관리</a></li>
								</ul></li>
							<li><a href="#">판매량 통계</a>
								<ul class="sub">
									<li><a href="./AdminMonthStatistic.pro">연간통계</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- //main 1dep menu -->
		</header>
		<!-- //header -->

		<script
			src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
			//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
			function sample4_execDaumPostcode() {
				new daum.Postcode(
						{
							oncomplete : function(data) {
								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
								// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
								var roadAddr = data.roadAddress; // 도로명 주소 변수
								var extraRoadAddr = ''; // 참고 항목 변수
								// 법정 동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정 동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraRoadAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraRoadAddr += (extraRoadAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraRoadAddr !== '') {
									extraRoadAddr = ' (' + extraRoadAddr + ')';
								}
								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								document.getElementById('sample4_postcode').value = data.zonecode; // 우편번호
								document.getElementById("sample4_roadAddress").value = roadAddr; // 도로명
								document.getElementById("sample4_jibunAddress").value = data.jibunAddress; // 동 주소
								// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
								if (roadAddr !== '') {
									document
											.getElementById("sample4_extraAddress").value = extraRoadAddr;
								} else {
									document
											.getElementById("sample4_extraAddress").value = '';
								}
								var guideTextBox = document
										.getElementById("guide");
								// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
								if (data.autoRoadAddress) {
									var expRoadAddr = data.autoRoadAddress
											+ extraRoadAddr;
									guideTextBox.innerHTML = '(예상 도로명 주소 : '
											+ expRoadAddr + ')';
									guideTextBox.style.display = 'block';
								} else if (data.autoJibunAddress) {
									var expJibunAddr = data.autoJibunAddress;
									guideTextBox.innerHTML = '(예상 지번 주소 : '
											+ expJibunAddr + ')';
									guideTextBox.style.display = 'block';
								} else {
									guideTextBox.innerHTML = '';
									guideTextBox.style.display = 'none';
								}
							}
						}).open();
			}
		</script>

		<!-- 매장 등록 폼 -->
		<div id="container">
			<section id="content">
				<div class="myinfo-wrap">
					<div class="form">
						<%
							request.setCharacterEncoding("UTF-8");
							
							StoreBean bean = (StoreBean)request.getAttribute("storedetail");
							String s_name = bean.getStore_name();
							String s_loc = bean.getStore_location();
							String[] s_tel = bean.getStore_phone().split("-");
							String s_opening = bean.getStore_opening();
							String s_park = bean.getStore_park();
							String s_other = bean.getStore_other();
							int s_online = bean.getStore_online();
							int s_offline = bean.getStore_offline();
							int s_sale = bean.getStore_sale();
						%>
						
						<form name="storeAddForm" id="storeModifyForm"
							action="./AdminStoreModifyAction.st?store_code=<%=Integer.parseInt(request.getParameter("store_code")) %>" method="post">
							<dl>
								<dt class="center">매장이름</dt>
								<dd>
									<div class="form-item name">
										<input type="text" id="inputStoreName" name="inputStoreName"
											placeholder="매장 이름" style="width: 200px" value=<%=s_name%>>
									</div>
								</dd>
							</dl>
							<dl>
								<dt class="center">주소</dt>
								<dd>
								<div class="form-group v2">
									<div class="form-item address">
										<input type="text" id="sample4_postcode" placeholder="우편번호"
											name="sample4_postcode" style="width: 200px"> <a
											href="javaScript:sample4_execDaumPostcode();"
											class="btn-type v7">우편번호찾기</a> <br>
									</div>
								</div>
							</dd>

							<dt class="center"></dt>
							<dd>
								<div class="form-group v2">
									<div class="form-item address">
										<input type="text" id="sample4_roadAddress"
											placeholder="도로명주소" name="sample4_roadAddress"
											style="width: 200px"> <input type="text"
											id="sample4_jibunAddress" placeholder="지번주소"
											name="sample4_jibunAddress" style="width: 200px">
									</div>
								</div>
							</dd>

							<dt class="center"></dt>
							<dd>
								<div class="form-group v2">
									<div class="form-item address">
										<input type="text" id="sample4_detailAddress"
											placeholder="상세주소" name="sample4_detailAddress"
											style="width: 200px"> <input type="text"
											id="sample4_extraAddress" placeholder="참고항목"
											name="sample4_extraAddress" style="width: 200px">
									</div>
								</div>
							</dd>
							</dl>
							<dl>
								<dt class="center">매장 위치</dt>
								<dd>
									<div class="form-item name">
										<input type="text" id="inputStoreLocation"
											name="inputStoreLocation"
											placeholder="ex)포이사거리 삼호물산 빌딩 에서 양재대로 방면으로 70M 직진 "
											style="width: 600px" value=<%=s_loc %>>
									</div>
								</dd>
							</dl>
							<dl>
								<dt class="top">매장 전화번호</dt>
								<dd>
									<div class="form-group v2">
										<div class="form-item">
											<input type="text" name="tel1" id="tel1" maxlength="4"
												title="매장전화번호" value=<%=s_tel[0] %>> <input type="text" name="tel2"
												id="tel2" maxlength="4" title="매장전화번호" value=<%=s_tel[1] %>> <input
												type="text" name="tel3" id="tel3" maxlength="4"
												title="매장전화번호" value=<%=s_tel[2] %>>
										</div>
									</div>
								</dd>
							</dl>
							<dl>
								<dt class="center">개점일</dt>
								<dd>
									<div class="form-item name">
										<input type="text" id="inputStoreOpening"
											name="inputStoreOpening" placeholder="ex)2020-01-01"
											style="width: 200px" value=<%=s_opening %>>
									</div>
								</dd>
							</dl>
							<dl>
								<dt class="center">주차정보</dt>
								<dd>
									<div class="form-item name">
										<input type="text" id="inputStorePark" name="inputStorePark"
											placeholder="ex)주차가능" style="width: 200px" value=<%=s_park %>>
									</div>
								</dd>
							</dl>
							<dl>
								<dt class="center">특이사항</dt>
								<dd>
									<div class="form-item name">
										<input type="text" id="inputStoreOther" name="inputStoreOther"
											placeholder="ex)단체석 완비" style="width: 200px" value=<%=s_other %>>
									</div>
								</dd>
							</dl>
							<dl>
								<dt class="center">온라인 방문포장</dt>
								<dd>
									<div class="form-item name">
										<input type="text" id="inputStoreOnline"
											name="inputStoreOnline" placeholder="ex)30"
											style="width: 100px" value=<%=s_online %>> % 할인
									</div>
								</dd>
							</dl>
							<dl>
								<dt class="center">오프라인 방문포장</dt>
								<dd>
									<div class="form-item name">
										<input type="text" id="inputStoreOffline"
											name="inputStoreOffline" placeholder="ex)30"
											style="width: 100px" value=<%=s_offline %>> % 할인
									</div>
								</dd>
							</dl>
							<dl>
								<dt class="center">특별 할인</dt>
								<dd>
									<div class="form-item name">
										<input type="text" id="inputStoreSale" name="inputStoreSale"
											placeholder="ex)30" style="width: 100px" value=<%=s_sale %>> % 할인
									</div>
								</dd>
							</dl>
						</form>
					</div>
				</div>
				<div class="btn-wrap">
					<a href="javaScript: modifyStore()" class="btn-type v6" style="margin-bottom: 100px">정보 수정</a>
				</div>
			</section>
		</div>

		<script>
			function modifyStore() {
				var storeModifyForm = document.getElementById("storeModifyForm");
				storeModifyForm.submit();
			}
		</script>

		<footer id="footer">
			<div class="footer-area">
				<div class="inner-box">
					<div class="footer-order">
						<i class="ico-logo2"></i> <span class="tel">1577-3082</span>
					</div>

					<ul class="footer-contact">
						<li><a href="../contents/law.html">이용약관</a></li>
						<li class="on"><a href="../contents/privacy.html">개인정보처리방침</a></li>
						<li><a
							href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
						<li><a href="../company/jobListe3b0.html?type=R">인재채용</a></li>
						<li><a href="../company/contents/chainstore1.html">가맹점모집</a></li>
						<li><a href="../order/groupOrder.html">단체주문</a></li>
					</ul>

					<div class="footer-info">
						<p>06229 서울특별시 강남구 언주로 315 청오디피케이㈜｜대표이사 : 오광현</p>
						<p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이명윤</p>
						<p>문의 : webmaster@dominos.co.kr</p>
						<p>Copyright ⓒ Domino’s Pizza. All rights reserved.</p>

						<p class="notice">청오디피케이㈜의 사전 서면동의 없이 도미노피자 사이트(PC, 모바일, 앱)의
							일체의 정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
					</div>

					<div class="footer-cont">
						<div class="select-type language">
							<select id="select-type">
								<option value="/main?locale=ko">KOR</option>
								<option value="/main?locale=en">ENG</option>
							</select>
						</div>

						<dl class="app-box">
							<dt>DOWNLOAD APP</dt>
							<dd>
								<a
									href="https://itunes.apple.com/kr/app/dominopija-domino-pizza-korea/id371008429?mt=8"><i
									class="ico-ios"></i>ios 앱다운로드</a> <a
									href="https://play.google.com/store/apps/details?id=kr.co.d2.dominos"><i
									class="ico-android">안드로이드 앱다운로드</i></a>
							</dd>
						</dl>

						<div class="sns-box">
							<ul>
								<li><a href="http://blog.naver.com/dominostory"><i
										class="ico-blog"></i>블로그</a></li>
								<li><a href="https://www.instagram.com/dominostory/"><i
										class="ico-insta"></i>인스타그램</a></li>
								<li><a href="https://www.facebook.com/dominostory/"><i
										class="ico-facebook"></i>페이스북</a></li>
								<li><a href="https://www.youtube.com/user/dominostory3082"><i
										class="ico-youtube"></i>유튜브</a></li>
								<li><a href="https://twitter.com/dominostory"><i
										class="ico-twitter"></i>트위터 </a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="awards-area">
				<div class="inner-box">
					<ul>
						<li><img
							src="../../cdn.dominos.co.kr/domino/pc/images/list_awards.png"
							alt="">
							<p>
								식품안전<br>경영시스템 인증
							</p></li>
						<li><img
							src="../../cdn.dominos.co.kr/domino/pc/images/list_awards2.png"
							alt="">
							<p>
								지식경제부<br>우수디자인 선정
							</p></li>
						<li><img
							src="../../cdn.dominos.co.kr/domino/pc/images/list_awards3.png"
							alt="">
							<p>
								고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위
							</p></li>
						<li><img
							src="../../cdn.dominos.co.kr/domino/pc/images/list_awards4.png"
							alt="">
							<p>
								2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위
							</p></li>
						<li><img
							src="../../cdn.dominos.co.kr/domino/pc/images/list_awards5.png"
							alt="">
							<p>
								2020 프리미엄브랜드지수<br>피자전문점 부문 5년 연속 1위 수상
							</p></li>
						<li><img
							src="../../cdn.dominos.co.kr/domino/pc/images/list_awards6.png"
							alt="">
							<p>
								대학생 1000명이 선택한<br>2019 올해의 핫 브랜드 캠퍼스 잡앤조이 선정
							</p></li>
					</ul>
				</div>
			</div>
		</footer>
		<!-- //footer -->
	</div>
	<!-- //wrap -->

	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'../../www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-40278626-1', 'auto', {
			'allowLinker' : true
		});
		ga('require', 'linker');
		ga('linker:autoLink', [ 'cdn.dominos.co.kr' ]);
		ga('send', 'pageview');
	</script>
	<!-- LOGGER(TM) TRACKING SCRIPT V.40 FOR logger.co.kr / 21550 : COMBINE TYPE / DO NOT ALTER THIS SCRIPT. -->
	<script type="text/javascript">
		var _TRK_LID = "21550";
		var _L_TD = "ssl.logger.co.kr";
		var _TRK_CDMN = ".dominos.co.kr";
	</script>
	<script type="text/javascript">
		var _CDN_DOMAIN = location.protocol == "https:" ? "https://fs.bizspring.net"
				: "http://fs.bizspring.net";
		(function(b, s) {
			var f = b.getElementsByTagName(s)[0], j = b.createElement(s);
			j.async = true;
			j.src = '../../fs.bizspring.net/fs4/bstrk.1.js';
			f.parentNode.insertBefore(j, f);
		})(document, 'script');
	</script>
	<noscript>
		<img alt="Logger Script" width="1" height="1"
			src="http://ssl.logger.co.kr/tracker.tsp?u=21550&amp;js=N" />
	</noscript>
	<!-- END OF LOGGER TRACKING SCRIPT -->

	<!-- BS CTS TRACKING SCRIPT V.20 / 15484 : CTS / DO NOT ALTER THIS SCRIPT. -->
	<!-- COPYRIGHT (C) 2002-2020 BIZSPRING INC. L4AD ALL RIGHTS RESERVED. -->
	<script type="text/javascript">
		(function(b, s, t, c, k) {
			b[k] = s;
			b[s] = b[s] || function() {
				(b[s].q = b[s].q || []).push(arguments)
			};
			var f = t.getElementsByTagName(c)[0], j = t.createElement(c);
			j.async = true;
			j.src = '../../fs.bizspring.net/fs4/l4cts.v4.2.js';
			f.parentNode.insertBefore(j, f);
		})(window, '_tcts_m', document, 'script', 'BSAnalyticsObj');
		_tcts_m('15484', 'BCTS');
	</script>
	<!-- END OF BS CTS TRACKING SCRIPT -->

	<!-- Naver Anlytics 공통-->
	<script type="text/javascript" src="../../wcs.naver.net/wcslog.js">
		
	</script>
	<script type="text/javascript">
		if (!wcs_add)
			var wcs_add = {};
		wcs_add["wa"] = "s_273c36e36e8a";
		if (!_nasa)
			var _nasa = {};
		wcs.inflow("dominos.co.kr");
		wcs_do(_nasa);
	</script>
	<!-- // Naver Anlytics 공통 -->

	<!-- Google Tag Manager : dominos_web -->
	<noscript>
		<iframe src="http://www.googletagmanager.com/ns.html?id=GTM-TR97KL"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<script>
		(function(w, d, s, l, i) {
			w[l] = w[l] || [];
			w[l].push({
				'gtm.start' : new Date().getTime(),
				event : 'gtm.js'
			});
			var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
					+ l
					: '';
			j.async = true;
			j.src = '../../www.googletagmanager.com/gtm5445.html?id=' + i + dl;
			f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-TR97KL');
	</script>
	<!-- End Google Tag Manager -->

	<!-- 2017-05-08 // 챗봇 추가(s) -->

	<!-- <div class="layer_chat">
	<div class="dim"></div>
	<div class="layer_content">
		<iframe id="chatUrl" src="" frameborder="0"></iframe>
		<a href="#" class="btn_close">닫기</a>
	</div>
</div> -->
	<!-- 2017-05-08 // 챗봇 추가(e) -->

</body>
<script>
	cookieManager.makePCID("PCID", 10);

	$(".select-type.language").change(function() {

		location.href = $("#select-type").val();
	})
</script>

<!-- Mirrored from web.dominos.co.kr/global/login by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Sep 2020 11:22:46 GMT -->
</html>
