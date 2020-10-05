<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ page import="net.product.db.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE HTML>
<html lang="ko">

<!-- Mirrored from web.dominos.co.kr/goods/list?dsp_ctgr=C0101 by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Sep 2020 11:22:09 GMT -->
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
	content="세계가 주목하는 6가지 슈퍼시드(렌틸콩, 햄프시드, 아마시드, 퀴토아, 병아리콩, 귀리)를 더해 영양과 풍미가 가득한 도미노 슈퍼시드 함유 도우 피자" />
<meta name="title" content="슈퍼시드 피자- 도미노피자" />
<title>슈퍼시드 피자- 도미노피자</title>
<meta property="og:type" content="website" />
<meta property="og:title" content="슈퍼시드 피자- 도미노피자" />
<meta property="og:site_name" content="도미노피자" />
<meta property="og:image"
	content="../../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta property="og:image:width" content="270" />
<meta property="og:image:height" content="270" />
<meta property="og:description"
	content="세계가 주목하는 6가지 슈퍼시드(렌틸콩, 햄프시드, 아마시드, 퀴토아, 병아리콩, 귀리)를 더해 영양과 풍미가 가득한 도미노 슈퍼시드 함유 도우 피자" />
<meta property="og:url" content="/goods/list" />
<meta name="twitter:card" content="app" />
<meta name="twitter:title" content="슈퍼시드 피자- 도미노피자" />
<meta name="twitter:image"
	content="../../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta name="twitter:description"
	content="세계가 주목하는 6가지 슈퍼시드(렌틸콩, 햄프시드, 아마시드, 퀴토아, 병아리콩, 귀리)를 더해 영양과 풍미가 가득한 도미노 슈퍼시드 함유 도우 피자" />
<meta name="twitter:url" content="/goods/list" />
<meta name="twitter:site" content="@dominostory" />
<meta name="twitter:description"
	content="세계가 주목하는 6가지 슈퍼시드(렌틸콩, 햄프시드, 아마시드, 퀴토아, 병아리콩, 귀리)를 더해 영양과 풍미가 가득한 도미노 슈퍼시드 함유 도우 피자" />
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
		location.href = "../global/login.html";
	};

	var myOrderDetail = function() {
		var order_no = $('#tracker_order_no').val();
		location.href = "/mypage/myOrderView?order_no=" + order_no
				+ "&pageNo=1";
	};

	//페이코 회원 가입
	function goLoginPop() {
		if (location.pathname !== '/global/login')
			location.href = '../global/login.html';
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
					<a href="../main.html" class="btn-logo"> <i class="ico-logo"></i>
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
						<a href="../global/Login.me">로그인</a> <a href="../member/JoinForm.me">회원가입</a>
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
						<a href="../global/Logout.me">로그아웃</a> <a
							href="../admin/AdminPage.ad">관리자페이지</a>
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
								환영합니다!</b> <a href="./Logout.me">로그아웃</a>
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
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active"><a href="../goods/MenuList.menu"><span>메뉴</span></a>
						</li>
						<li><a href="../ecoupon/CouponList.co"><span>e-쿠폰</span></a>
						</li>
						<li><a href="../voucher/VoucherList.vo"><span>상품권
									선물</span></a></li>
						<li><a href="../event/EventList.ev"><span>이벤트&middot;제휴</span></a>
						</li>
						<li><a href="SearchStore.st"><span>매장검색</span></a></li>
					</ul>
					<a href="#" class="snb-more">더보기</a>
				</div>

				<div class="snb-wrap">
					<div class="inner-box">
						<div class="mnu-wrap">
							<div class="mnu-box">
								<a href="../event/mania.html">도미노 서비스</a>
								<ul>
									<li><a href="../event/mania.html">매니아 혜택</a></li>
									<li><a href="../goods/dominosMoment.html">도미노 모멘트</a></li>
									<li><a href="../quickOrder/index.html">퀵 오더</a></li>
									<li><a href="../order/groupOrder.html">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a>
								<ul>
									<li><a
										href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">자주하는
											질문</a></li>
									<li><a href="../bbs/qnaForm.html">온라인 신문고</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="../company/contents/overview.html">회사소개</a>
								<ul>
									<li><a href="../company/contents/overview.html">한국도미노피자</a></li>
									<li><a href="../company/tvcfList.html">광고갤러리</a></li>
									<li><a href="../company/contents/society.html">사회공헌활동</a></li>
									<li><a href="../company/contents/chainstore1.html">가맹점
											모집</a></li>
									<li><a href="../company/jobListe3b0.html?type=R">인재채용</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a href="../bbs/newsList91ef.html?type=N">공지사항</a>
							<ul>
								<li><a href="../bbs/newsList91ef.html?type=N">도미노뉴스</a></li>
								<li><a href="../bbs/newsList0e42.html?type=P">보도자료</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //main 1dep menu -->
		</header>
		<!-- //header -->
		<script type="text/javascript" src="../resources/js/common.js"></script>

		<script>
			$(document).ready(function() {

				$("img.lazyload").lazyload();

				$(".gnb_menu .menu01").addClass("on");

				$(".tab_category > ul > .C0101").addClass("active");

				$(".btn-minus").click(function() {
					var cnt = parseInt($(this).siblings("input").val()) - 1;
					if (cnt < 1)
						cnt = 1;
					$(this).siblings("input").val(cnt);

				});

				$(".btn-plus").click(function() {
					var cnt = parseInt($(this).siblings("input").val()) + 1;
					$(this).siblings("input").val(cnt);
				});

				/* $(".minus").click(function() {
					var obj = $(this).next().find("input");
					var cnt = parseInt(obj.val()) - 1;
					if(cnt < 1) cnt = 1;

					obj.val(cnt);
				});

				$(".add").click(function() {
					var obj = $(this).prev().find("input");
					var cnt = parseInt(obj.val()) + 1;
					if(cnt > 99) cnt = 99;
					obj.val(cnt);
				}); */

			});
			var trk_call = function(gu_bun) {
				// 트래킹

				var trk_pi_value = "WP_4P";
				var trk_cp_value = "피자 리스트>제품상세 팝업";

				if (gu_bun == 'nonlist') {
					trk_pi_value = "WP_4_1P";
					trk_cp_value = "피자 주문화면>제품상세 팝업";
				}

				var _trk_url = document.baseURI + "&_TRK_PI=" + trk_pi_value
						+ "&_TRK_CP=" + trk_cp_value;
				try {
					_trk_code_base = _trk_code_base.replace(/(du=).*?(&)/, '$1'
							+ escape(_trk_url) + '$2');
					_trk_flashEnvView("_TRK_PI=" + trk_pi_value, "_TRK_CP="
							+ trk_cp_value);

				} catch (e) {
					console.log(e.message);
				}

			}

			var qty = 0;
			var addGoods = function(goodsCode) {
				qty = parseInt($("#" + goodsCode + "_qty").val());

				var returnUrl = "list985d.html?dsp_ctgr=C0101";

				addBasket("addGD", goodsCode, qty, "", "", addBasketComplete,
						returnUrl, "ETC");
			};

			var addBasketComplete = function() {

			};

			var goView = function(menuCode, url) {
				location.href = url;
			};

			var chocolatChk = function() {
				if (confirm("해당 제품은 현재 900원 특가 프로모션 진행중입니다.\n특가제품 페이지로 이동하시겠습니까?")) {
					location.href = "../hotdeal/chocolat.html";
				} else {
					return;
				}
			}

			//피자 바로주문 팝업 열기
			var openRpzPop = function(code, ctgr, dough_gb) {

				//var pageGubun = "P";

				$("#rpzLayer_pop").html("");

				$.ajax({
					type : "POST",
					url : "/goods/detailRpzLayer",
					data : {
						'code_01' : code,
						'dsp_ctgr' : ctgr,
						'dough_gb' : dough_gb
					},
					success : function(data) {
						$("#rpzLayer_pop").html(data);
						$("#rpzLayer_pop").addClass("open");
						var top = $(window).scrollTop();
						$("#rpzLayer_pop").find('.pop_wrap').css('top',
								top + 30 + 'px');

						//화면 초기화
						initRpzPop();
					},
					error : function(error) {
						alert("다시 시도해주세요.");
					}
				});

			}

			var closeRpzPop = function() {
				$("#rpzLayer_pop").removeClass("open");
			};

			//사이드 바로주문 팝업 열기
			var openSidePop = function(code, ctgr) {

				$("#sideLayer_pop").html("");

				$.ajax({
					type : "POST",
					url : "/goods/detailSideLayer",
					data : {
						'code_01' : code,
						'dsp_ctgr' : ctgr
					},
					success : function(data) {
						$("#sideLayer_pop").html(data);
						$("#sideLayer_pop").addClass("open");
						var top = $(window).scrollTop();
						$("#sideLayer_pop").find('.pop_wrap').css('top',
								top + 30 + 'px');

						//화면 초기화
						initRpzPop();
					},
					error : function(error) {
						alert("다시 시도해주세요.");
					}
				});

			}

			var closeSidePop = function() {
				$("#sideLayer_pop").removeClass("open");
			};

			var closeLayer = function() {
				$("#topping_info_pop").removeClass("open");
			};
		</script>

		<!-- container -->
		<div id="container">
			<!-- content -->
			<section id="content">
				<div class="sub-type menu">
					<div class="inner-box">
						<!-- 1depth 메뉴명 & 네비게이션 -->
						<div class="page-title-wrap">
							<h2 class="page-title">메뉴</h2>
							<div class="depth-area">
								<ol>
									<li><a href="../main.html">홈</a></li>
									<li><a href="list985d.html?dsp_ctgr=C0101">메뉴</a></li>
									<li><strong>피자 </strong></li>
								</ol>
							</div>
						</div>
						<!-- //1depth 메뉴명 & 네비게이션 -->

						<article class="menu-list-area">
							<!-- menu-list -->
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="./MenuListPizza.pro">피자</a></li>
										<li><a
											href="./MenuListSide.pro">사이드디시</a></li>
										<li><a href="./MenuListOther.pro">음료&기타</a></li>
									</ul>
								</div>

							</div>
							<script>
								/* 2020.09.01 랭킹 주석 
								
								 getRankingList();


								 function getRankingList (){
								 // search
								 $('.sch-slider').slick({
								 autoplay: true,
								 autoplaySpeed: 3000,
								 slidesToShow: 1,
								 slidesToScroll: 1,
								 arrows: false,
								 vertical: true,
								 asNavFor: '.sch-slider-nav'
								 });
								 $('.sch-slider-nav').slick({
								 slidesToShow:10,
								 slidesToScroll: 1,
								 variableWidth: true,
								 asNavFor: '.sch-slider',
								 });
								
								 $(".btn-open").on('click',function(e){
								 e.preventDefault();
								
								 var link = $(this);
								 var cont = $(this).closest('.sch-box');
								 if(cont.hasClass('active')){
								 cont.removeClass('active');
								 link.removeClass('active');
								 cont.find('.sch-slider-nav').slideUp();
								 }else{
								 cont.addClass('active');
								 link.addClass('active');
								 cont.find('.sch-slider-nav').slideDown();
								 }
								 });
								
								 $('.sch-slider-nav').mouseleave(function(){
								 var link = $(this).closest('.sch-box').find(".btn-open");
								 var cont = $(this).closest('.sch-box');
								 if(cont.hasClass('active')){
								 cont.removeClass('active');
								 link.removeClass('active');
								 cont.find('.sch-slider-nav').slideUp();
								 }
								 });	
								 } */
							</script>
							<!-- //menu-list -->

							<div class="title-wrap-center">
								<h3 class="title-type">피자</h3>
							</div>
							<div class="menu-list">

								<%
									ProductDAO productdao = new ProductDAO();
								ProductBean bean = new ProductBean();

								List pizzaList = productdao.getPizzaList();
								%>
								<ul>
									<!-- 피자&사이드 -->
									<%
										for (int i = 0; i < pizzaList.size(); i++) {
											bean = (ProductBean)pizzaList.get(i);
									%>
									<li>
										<div class="prd-img">
											<a
												href="PizzaDetail.pro?pizza_code=<%=bean.getPizza_code()%>">

												<img class="lazyload"
												src="../../pizza_image/<%=bean.getPizza_image() %>"
												alt="<%=bean.getPizza_image() %>" />
											</a>
										</div>
										<div class="prd-cont">
											<div class="subject">
												<%=bean.getPizza_name() %>
												<div class="label-box">
													<span class="label sale">NEW</span>
												</div>
											</div>
										</div>
										<div class="prd-price">
											<div class="price-box">
												<span class="price"><span class="size_l">L</span><%=(int)bean.getPizza_price()+10000 %>원~&nbsp;</span>
												<span class="price"><span class="size_m">M</span><%=bean.getPizza_price() %>원</span>
											</div>
										</div>
									</li>
									<%
										}
									%>
								</ul>
							</div>
						</article>

						<div class="bottom-guide-area">
							<div class="box">
								<div class="list-text">
									<dt>※ 유의사항</dt>
									<dd>
										<ul>
											<li>단종으로 인한 상품권 사용 안내 : 동일 가격 또는 더 높은 가격의 제품으로 대체 주문 가능<br>
												(상품권에 명시된 제품보다 더 높은 가격대의 제품 주문 시, 금액 추가 발생)<br> (단,
												상품권에 명시된 제품보다 저렴한 제품 주문 시 발생하는 차액에 대해서는 환불 처리 불가)
											</li>
											<li>일부 리조트 및 특수매장은 상기 가격과 차이가 있음</li>
											<li>모든 사진은 이미지 컷이므로 실제 제품과 다를 수 있습니다.</li>
										</ul>
									</dd>
								</div>
							</div>
							<div class="box">
								<p class="text-type">제품의 영양성분 및 알레르기 유발성분을 먼저 확인하세요.</p>
								<div class="btn-wrap2">
									<a
										href="javascript:UI.layerPopUp({selId:'#pop-allergy', url:'/contents/ingredient'})"
										class="btn-type-left">영양성분 및 알레르기 유발성분</a>
								</div>

							</div>
						</div>

					</div>
				</div>
			</section>
			<!-- //content -->
		</div>
		<!-- //container -->
		<!-- 팝업-메뉴 상세보기 -->
		<script>
			function getDetailSlide(code_01, dsp_ctgr, dough_gb) {
				$.ajax({
					url : '/goods/detailSlide',
					type : 'get',
					data : {
						"code_01" : code_01,
						"dsp_ctgr" : dsp_ctgr,
						"dough_gb" : dough_gb
					},
					success : function(data) {
						$("#detail_main_slide").html(data);
						getDetail(code_01, dsp_ctgr, dough_gb);
					},
					error : function(error) {
						alert("다시 시도해주세요.");
					}
				})
			}

			function getDetail(code_01, dsp_ctgr, dough_gb) {

				$
						.ajax({
							url : '/goods/detailAjax',
							type : 'get',
							data : {
								"code_01" : code_01,
								"dsp_ctgr" : dsp_ctgr,
								"dough_gb" : dough_gb
							},

							success : function(data) {
								UI.layerPopUp({
									selId : '#pop-menu-detail'
								});
								$(".menu-name").text(
										data.resultData.detail.name);
								$(".detail_topping").text(
										data.resultData.detail.topping);
								$(".detail_origin").text(
										data.resultData.detail.origin);
								$(".detail_contents").html(
										data.resultData.detail.w_contents);
								$(".hide_code").val(
										data.resultData.detail.code_01);
								$(".btn_order a").attr(
										"href",
										"detail?dsp_ctgr=" + dsp_ctgr
												+ "&code_01=" + code_01
												+ "&dough_gb=" + dough_gb);
								//$(".zoom-wrap").html("<img src=https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm1+" alt="+data.resultData.detail.name+" class='img-zoom' />");

								$(".img-zoom-big")
										.attr(
												"src",
												"https://cdn.dominos.co.kr/admin/upload/goods/"
														+ data.resultData.detail.file_nm1);
								$(".img-zoom-big1")
										.attr(
												"src",
												"https://cdn.dominos.co.kr/admin/upload/goods/"
														+ data.resultData.detail.file_nm1);
								$(".menu-big .zoomImg")
										.attr(
												"src",
												"https://cdn.dominos.co.kr/admin/upload/goods/"
														+ data.resultData.detail.file_nm1);

								if (data.resultData.detail.file_nm2 != ""
										&& data.resultData.detail.file_nm2 != null) {
									$(".subimg2").show();
									$(".img-zoom-big2")
											.attr(
													"src",
													"https://cdn.dominos.co.kr/admin/upload/goods/"
															+ data.resultData.detail.file_nm2);
								} else {
									$(".subimg2").hide();
								}

								if (data.resultData.detail.file_nm3 != ""
										&& data.resultData.detail.file_nm3 != null) {
									$(".subimg3").show();
									$(".img-zoom-big3")
											.attr(
													"src",
													"https://cdn.dominos.co.kr/admin/upload/goods/"
															+ data.resultData.detail.file_nm3);
								} else {
									$(".subimg3").hide();
								}
							}
						});
			}
		</script>
		<!-- 팝업-메뉴 상세보기 -->

		<div class="pop-layer pop-menu" id="pop-menu-detail">
			<input type="hidden" value="" class="hide_code" />
			<div class="dim"></div>
			<div class="pop-wrap">
				<div class="pop-title-wrap">
					<div class="pop-title menu-name"></div>
				</div>
				<div class="pop-content">
					<div class="menu">
						<article class="menu-detail-area">
							<div class="menu-info">
								<div class="img-wrap">
									<div class="view-box">
										<!-- 대표 이미지 슬라이드 -->
										<div id="detail_main_slide">
											<div class="menu-slider-view" id="pinchzoom"></div>
										</div>

										<a href="javascript:UI.layerPopUp({selId:'#pop-zoom'})"
											class="btn-zoom"> <i class="ico-zoom"></i> <span
											class="hidden">확대버튼</span>
										</a>
										<!-- //대표 이미지 슬라이드 -->
									</div>
									<div class="guide-box2">모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.</div>
								</div>
								<div class="detail-wrap">
									<div class="select-box">
										<div class="step-wrap step-detail">
											<div class="title-wrap">
												<div class="title-type">메인 토핑</div>
											</div>
											<div class="js_toggle_box detail_topping"></div>
										</div>
										<div class="step-wrap step-detail">
											<div class="title-wrap">
												<div class="title-type">원산지</div>
											</div>
											<div class="js_toggle_box detail_origin"></div>
										</div>
									</div>
									<div class="btn-wrap2">
										<a
											href="javascript:UI.layerPopUp({selId:'#pop-allergy', url:'/contents/ingredient'})"
											class="btn-type2-brd">영양성분 및 알레르기 유발성분</a>
										<!-- 사이드 메뉴  시 제거 부분   -->
										<a
											href="javascript:UI.layerPopUp({selId:'#pop-story', url:'/contents/story'});"
											class="btn-type2-brd">피자스토리</a>
										<!-- //사이드 메뉴  시 제거 부분   -->
									</div>
								</div>
							</div>
							<div class="select-box">
								<div class="step-wrap step-detail">
									<div class="title-wrap close">
										<div class="title-type">제품 상세보기</div>
										<a href="#" class="btn-toggle-close"> <span class="hidden">열기</span>
										</a>
									</div>
									<div class="js_toggle_box detail_contents close ">
										<div class="detail-box">
											<div class="title-box">
												<h3 class="title">
													매콤달콤한 도미노 특제 소스와 핫치킨의 화끈한 만남,<br />매운맛 매니아들을 위한 취향저격 피자
												</h3>
												<div class="guide-box3">어린이 및 매운맛에 민감한 분들에게 다소 매울 수
													있습니다.</div>
											</div>
											<div class="img-box">
												<img src="#" alt="블랙타이거 슈림프1" class="img-zoom"
													data-elem="pinchzoomer" />
											</div>
										</div>
									</div>
								</div>

								<div class="step-wrap step-detail">
									<div class="title-wrap close">
										<div class="title-type">메인 토핑</div>
										<a href="#" class="btn-toggle-close"> <span class="hidden">열기</span>
										</a>
									</div>
									<div class="js_toggle_box close detail_topping"></div>
								</div>
								<div class="step-wrap step-detail">
									<div class="title-wrap close">
										<div class="title-type">원산지</div>
										<a href="#" class="btn-toggle-close "> <span
											class="hidden">열기</span>
										</a>
									</div>
									<div class="js_toggle_box close detail_origin"></div>
								</div>

								<!-- 사이드 메뉴  시 제거 부분  -->
								<div class="step-wrap step-cont">
									<div class="title-wrap close">
										<div class="title-type">도미노피자의 특징</div>
										<a href="#" class="btn-toggle-close"> <span class="hidden">열기</span>
										</a>
									</div>
									<div class="js_toggle_box close">
										<!-- 단락마다 br 태그 2개 -->
										<strong>매일매일 만들어 신선하고 쫄깃 고소한 도우!</strong> 최고의 도우 맛을 위해 물, 밀가루,
										이스트 등을 최적의 비율 로 매일 반죽하여 냉장저온(1~3°C) 숙성한 도미노 피자의 도우!<br />
										수분보유량이 우수하고 도우 입자 사이의 공기층이 적절히 형성된 3일~7일차 도우를 사용해 전문 피자메이커가
										핸드토스드(Hand Tossed) 방식으 로 만들어 특유의 쫄깃 하고 포실포실한 식감과 맛, 향으로 오감을
										충족시킵니다.<br /> <br /> <strong>깊고 풍부한 맛, 도미노만의 시그니처
											치즈!</strong> 도미노피자만을 위해 연구 개발된 도미노 시그니처 치즈는 미국 농무성에서 인정한 최상 A등급 프리미엄
										우유로 생산되어 최고의 맛과 풍미를 자랑하는 모차렐라 피자치즈 입니다. 게다가 페타크림치즈, 체더치즈,
										콰트로치즈퐁듀, 보코치니 등 고급프리미엄 피자치즈를 사용함으로써 피자의 품격을 높여 더욱 맛있는 피자를
										완성하였습니다.<br /> <br /> <strong>신선한 캘리포니아산 프리미엄 토마토
											소스!</strong> 캘리포니아는 따뜻한 햇살과 시원한 저녁 날씨 덕에 토마토가 자라기에 최적의 환경을 제공합니다. 이 곳에
										위치한 대규모 (35만 에이커) 토마토 농장)에서 70일 동안 잘 익은 토마토는 빠른시간 (4~6시간)내 모든
										가공 처리가 이루어져 신선함이 살아있습니다. 캘리포니아산 토마토는 과육이 풍부해 피자 소스로 만들었을 때 당도,
										산미, 감칠맛이 극상의 조화를 이루기 때문에 피자 맛에 깊이를 더합니다.<br /> <br /> <strong>항상
											놀랍고 새로운 프리미엄 토핑!</strong> 도미노피자는 프리미엄 피자에 어울리는 최고급 식자재인 와규, 직화스테이크,
										게살, 블랙타이거 슈림프 등 항상 놀라움과 새로움을 주는 혁신적인 프리미엄 토핑을 피자 업계 최초로 적용하며
										소비자의 입맛과 트렌드를 선도하고 피자 선택의 폭을 넓히는 것은 물론 도미노피자만의 색다른 고객 감동을 만들어
										가고 있습니다.
									</div>
								</div>
							</div>
							<!-- 구매하기 버튼 -->
							<div class="btn-wrap btn_order">
								<a href="javascript:;" class="btn-type"> 주문하러 가기 </a>
							</div>
							<!-- //구매하기 버튼 -->
						</article>
					</div>
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!-- //팝업-메뉴 상세보기 -->


		<!--팝업-확대 이미지 -->
		<!-- <div class="pop-layer pop-full" id="pop-zoom">
	<div class="pop-wrap">
		<div class="pop-title-wrap">
			<h2 class="pop-title">확대</h2>
		</div>
		<div class="pop-content">
			<div class="zoom-wrap">
				<img src="https://cdn.dominos.co.kr/admin/upload/goods/20190529_PrpQRpBP.jpg" alt="블랙타이거 슈림프1" class="img-zoom" />
			</div>
		</div>
		<a href="#" class="btn-close"></a>
	</div>
</div> -->

		<div class="pop-layer" id="pop-zoom">
			<div class="dim"></div>
			<div class="pop-wrap">
				<div class="pop-title-wrap">
					<h2 class="pop-title">확대</h2>
				</div>
				<div class="pop-content">
					<div class="zoom-wrap">
						<div class="menu-zoom-wrap">
							<div class="menu-big" id="zoom">
								<img
									src="../../cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
									alt="블랙타이거 슈림프1" class="img-zoom-big" />
							</div>
						</div>
						<div class="menu-thumb">
							<div class="item subimg1 active">
								<a href="#"> <img
									src="../../cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
									alt="블랙타이거 슈림프1" class="img-zoom-big1" />
								</a>
							</div>
							<div class="item subimg2">
								<a href="#"> <img
									src="../../cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
									alt="블랙타이거 슈림프2" class="img-zoom-big2" />
								</a>
							</div>
							<div class="item subimg3">
								<a href="#"> <img
									src="../../cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
									alt="블랙타이거 슈림프3" class="img-zoom-big3" />
								</a>
							</div>
						</div>
					</div>
				</div>
				<a href="#" class="btn-close"></a>
			</div>
		</div>
		<!--//팝업-확대 이미지 -->
		<script src="../../cdn.dominos.co.kr/domino/pc/js/jquery.zoom.min.js"></script>
		<script>
			$(function() {
				$('.menu-thumb .item a').on('click', function(e) {
					e.preventDefault();
					$('.menu-thumb .item').removeClass('active');
					$(this).closest('.item').addClass('active');

					var src = $(this).find("img").attr("src");
					$(".menu-big > img").attr("src", src);
					$(".menu-big .zoomImg").attr("src", src);

				});
			});

			$('.zoom-wrap').each(function() {
				$('#zoom').zoom({
					on : 'click',
					magnify : 2
				});
			});
		</script>
		<!-- 피자 스토리  -->
		<div class="pop-layer" id="pop-story"></div>
		<!-- 피자 스토리  -->

		<!-- 영양성분 및 알레르기 유발성분  -->
		<div class="pop-layer pop-full" id="pop-allergy"></div>
		<!-- 영양성분 및 알레르기 유발성분  -->

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
				j.src = '../../www.googletagmanager.com/gtm5445.html?id=' + i
						+ dl;
				f.parentNode.insertBefore(j, f);
			})(window, document, 'script', 'dataLayer', 'GTM-TR97KL');
		</script>
		<!-- End Google Tag Manager -->

		<div class="pop_layer pop_type topping" id="naviLayer_pop"></div>

		<div class="pop_layer pop_type topping" id="rpzLayer_pop"></div>
		<div class="pop_layer pop_type topping" id="topping_info_pop"></div>
		<!-- LOGGER 환경변수 설정 -->
		<script type="text/javascript">
			var goods_ctgr_nm = "";
			var trk_pi_value = "TRACK2_P";
			var trk_cp_value = "";

			//	goods_ctgr_nm = "곡물도우";
			goods_ctgr_nm = "슈퍼시드";
			trk_pi_value = "WP_4";
			trk_cp_value = "피자 리스트";

			_TRK_PI = trk_pi_value; // 웹페이지의 성격 정의 - 상품리스트
			_TRK_CP = trk_cp_value;
			//_TRK_CP = "/메뉴/피자/"+goods_ctgr_nm;	// 카테고리명 전달
		</script>
		<!-- // LOGGER 환경변수 설정 -->
		<!-- 로딩 이미지 -->
		<!-- // 로딩 이미지 -->

		<!-- 로딩 이미지 -->
		<!-- 장바구니 담기 토스트 팝업(s) -->
		<div class="pop_toast" id="card_add" style="display: none;">
			<div class="bg"></div>
			<div class="pop_wrap">
				<div class="pop_content">
					<p>장바구니에 담았습니다.</p>
				</div>
			</div>
		</div>

		<!-- //장바구니 담기 토스트 팝업(e) -->

		<!-- 장바구니(s) -->
		<div class="pop_layer pop_type" id="cart_pop" style="display: none;">
			<div class="bg"></div>
			<div class="pop_wrap">
				<div class="pop_header">
					<h2>장바구니</h2>
				</div>
				<!-- iframe src="100_cart_pop_frame.html" width="1000" height="832" frameborder="0"></iframe><!-- 2016-10-05//아이프레임대체 -->
				<a href="javascript:;" onclick="setBasketCnt();"
					class="btn_ico btn_close">닫기</a>
			</div>
		</div>
		<!-- //장바구니(e) -->

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
	});
</script>

<!-- Mirrored from web.dominos.co.kr/goods/list?dsp_ctgr=C0101 by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Sep 2020 11:22:13 GMT -->
</html>
