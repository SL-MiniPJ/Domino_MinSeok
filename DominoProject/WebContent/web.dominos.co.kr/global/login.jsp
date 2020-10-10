<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE HTML>
<html lang="ko">

<!-- Mirrored from web.dominos.co.kr/global/login by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Sep 2020 11:22:44 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=euc-kr" /><!-- /Added by HTTrack -->
<head>
	<meta charset="euc-kr">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" id="viewport" content="width=1119px, user-scalable=yes">
	<meta http-equiv='cache-control' content='no-cache'>
	<meta http-equiv='expires' content='0'>
	<meta http-equiv='pragma' content='no-cache'>
	<meta http-equiv='Cache-Control' content='no-cache'>
	<!-- 사용자지정 태그 -->
	<meta name="description" content="도미노피자에 로그인하시면, 빠르고 간편하게 피자를 주문하실 수 있습니다." />
<meta name="title" content="로그인- 도미노피자" />
<title>로그인- 도미노피자</title>
<meta property="og:type" content="website" />
<meta property="og:title" content="로그인- 도미노피자" />
<meta property="og:site_name" content="도미노피자" />
<meta property="og:image" content="../../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta property="og:image:width" content="270" />
<meta property="og:image:height" content="270" />
<meta property="og:description" content="도미노피자에 로그인하시면, 빠르고 간편하게 피자를 주문하실 수 있습니다." />
<meta property="og:url" content="/global/login" />
<meta name="twitter:card" content="app" />
<meta name="twitter:title" content="로그인- 도미노피자" />
<meta name="twitter:image" content="../../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta name="twitter:description" content="도미노피자에 로그인하시면, 빠르고 간편하게 피자를 주문하실 수 있습니다." />
<meta name="twitter:url" content="/global/login" />
<meta name="twitter:site" content="@dominostory" />
<meta name="twitter:description" content="도미노피자에 로그인하시면, 빠르고 간편하게 피자를 주문하실 수 있습니다." />
<meta name="twitter:app:name:iphone" content="도미노피자" />
<meta name="twitter:app:id:iphone" content="371008429" />
<meta name="twitter:app:url:iphone" content="https://itunes.apple.com/kr/app/id371008429" />
<meta name="twitter:app:name:ipad" content="도미노피자" />
<meta name="twitter:app:id:ipad" content="371008429" />
<meta name="twitter:app:url:ipad" content="https://itunes.apple.com/kr/app/id371008429" />
<meta name="twitter:app:name:googleplay" content="도미노피자" />
<meta name="twitter:app:id:googleplay" content="kr.co.d2.dominos" />
<meta name="twitter:app:url:googleplay" content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:web:url" content="../index.html" />
<meta property="al:android:app_name" content="도미노피자" />
<meta property="al:android:package" content="kr.co.d2.dominos" />
<meta property="al:android:url" content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:ios:app_name" content="도미노피자" />
<meta property="al:ios:app_store_id" content="371008429" />
<meta property="al:ios:url" content="https://itunes.apple.com/kr/app/id371008429" /><link rel="shortcut icon" href="https://cdn.dominos.co.kr/renewal2018/w/img/favicon.ico"/>
	<!-- <link rel="stylesheet" type="text/css" href="/resources/css/font.css"> --> <!-- 20191202 주석 -->
	<!-- 20191204 주석 -->
	
	<script type="text/javascript" src="../resources/js/jquery1.11.1.js"></script>
	
	<script type="text/javascript" src="../../cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="../resources/js/selectbox.js"></script><!-- js 수정함. -->
	<script type="text/javascript" src="../resources/js/d2CommonUtil7ef2.js?ver=1.5"></script>
	<script type="text/javascript" src="../resources/js/Cookie.js"></script>
	<script type="text/javascript" src="../../cdn.dominos.co.kr/renewal2018/w/js/basket_w.js"></script>
	
	
	<!-- 리뉴얼 적용 2019.12.02 -->
	<link rel="stylesheet" type="text/css" href="../../cdn.dominos.co.kr/domino/asset/css/font.css"> 
	<link rel="stylesheet" type="text/css" href="../../cdn.dominos.co.kr/domino/pc/css/common.css"> 
	
	<!--메인에는 sub.css 호출하지않음-->
	<link rel="stylesheet" type="text/css" href="../../cdn.dominos.co.kr/domino/pc/css/sub.css">
	<!--//메인에는 sub.css 호출하지않음  -->

	<script src="../../cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js"></script>
	<script src="../../cdn.dominos.co.kr/domino/asset/js/slick.js"></script>
	<script src="../../cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
	<script src="../../cdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>
	
	<script src="../../cdn.dominos.co.kr/domino/pc/js/ui.js"></script>
	<script type="text/javascript" src="../resources/js/gcenmaps/gcenmap.js"></script><!--서브에는 main.js 호출하지않음-->
	<!--//서브에는 main.js 호출하지않음-->
	<!-- //리뉴얼 적용 2019.12.02 -->
	
	<!-- 기존 팝업 재사용위해 css 추가함. 추후 common.css 에 아래 소스 추가 예정 -->
	<style>
	#card_add .pop_wrap{position:fixed;top:50%;width:490px;margin-left:-245px;margin-top:-35px;}
	#card_add .pop_wrap .pop_content p{font-size:18px;color:#fff;text-align:center}
	.pop_toast {display: block;position:absolute;top:0;left:0;width:100%;height:100%;z-index:100;}
	.pop_toast.open {display:block}
	
	.pop_toast .bg {position:fixed; width:100%; height:100%;}
	.pop_toast .pop_wrap {overflow:hidden;position:absolute; top:100px; left:50%; min-width:400px;min-height:70px; margin-left:-200px; padding:20px; background:url(../../cdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png) repeat 0 0;border-radius:12px;}
	.pop_toast .pop_wrap .btn_close3 {position:absolute; top:15px; right:20px;}
	.pop_toast .pop_header {position:absolute;top:0;left:0;width:100%;height:66px;padding:0 40px;background-color:#eeece9;line-height:66px;}
	.pop_toast .pop_header h2 {font-size:30px;font-weight:500;color:#38474f;}
	.pop_toast .pop_content {position:relative;width:100%;padding: 0;}
	.pop_type2 .pop_wrap .btn_close3 {position:absolute; top:15px; right:20px;}
	
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
		$.ajaxSetup({cache:false});

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

		if(basketCnt == "") basketCnt = "0";
		else if(basket != "" && basket == finish_basket) basketCnt = "0";
		
		if(basketCnt != "0"){ 
			$(".btn-cart > strong ").addClass("cart-count");
			$(".cart-count").text(basketCnt);
		}else{
			$(".btn-cart > strong").removeClass("cart-count");
		}
	}

	var goCart = function() {
		location.href="../basket/detail.html";
	};

	var doLogin = function() {
		location.href="Login.me";
	};

	var myOrderDetail = function() {
		var order_no = $('#tracker_order_no').val();
		location.href="/mypage/myOrderView?order_no="+order_no+"&pageNo=1";
	};
	
	//페이코 회원 가입
	function goLoginPop() 
	{
		if(location.pathname !== '/global/login')
			location.href = 'Login.me';
	}
	
	var goPresentLogin = function(gubun) {
		var rtnUrl = "/voucher/list?gubun="+gubun;
		if("false" == "true"){
			location.href = rtnUrl;
		}else{
			location.href = "/global/login?returnUrl="+rtnUrl;	
		}
	};
	
	function appendLocation(paramArr) {
		var simpleAddress;
		
		gps_yn = 'Y';
		
		if (paramArr == null || paramArr.length == 0){
			return;
		}
		
		$.ajax({
		    type: "GET",
		    url: "/gis/getXyAddressAjax",
		    data: paramArr.join('&'),
		    
		    success:function(data) {
		        $('#myloc').html("");
		        
		        if(data.resultData.result.length > 0) {
		        	var html = '';
					html += '<div class="tip-box center" id="tip-box">';
					html += '<p>주변 매장의 프로모션을 확인해보세요!</p>';
					html += '</div>';
					
					$("#tip-box-top").append(html);
					$("#tip-box").delay(2000).fadeOut(1000);
					
		       		$.each(data.resultData.result, function(i, v) {
		       			if(v.roadaddr === ''){
		       				simpleAddress = v.sggname+' '+v.bemdname+' '+v.jbmain+(v.jbsub=='0'?'':'-'+v.jbsub);
		       				$('#myloc').html(simpleAddress);
		       				lat = v.lat;
		       				lon = v.lon;
		       				xdot = v.kx;
		       				ydot = v.ky;
		       				address = simpleAddress;
		       				
		       			}else{
		       				simpleAddress = v.roadname+' '+v.bdmain+(v.bdsub=='0'?'':'-'+v.bdsub);
		       				$('#myloc').html(simpleAddress);
		       				lat = v.lat;
		       				lon = v.lon;
		       				xdot = v.kx;
		       				ydot = v.ky;
		       				address = simpleAddress;
		       			}
		       		});
		   	    }else {
		       		 $('#myloc').html("주변 매장의 프로모션이 궁금하시면, 위치 서비스를 허용해주세요.");
		    	}
		    },
		    error: function (error){
		        alert("다시 시도해주세요.");
		    }
		    
		});
	}
	
	//현재 위치 받아오기

	var geo = {
		init : function() { 
			
			if ('geolocation' in navigator) {
				/* 지오로케이션 사용 가능 */
				navigator.geolocation.getCurrentPosition(geo.success, geo.error);
				
			} else {
				/* 지오로케이션 사용 불가능 */
				alert('geolocationx');
				alert('사용자의 브라우저는 지오로케이션을 지원하지 않습니다.');

				//geo.changeTab();
			}
		},
		success : function(position) {

			var latitude  = position.coords.latitude;
		    var longitude = position.coords.longitude;
		  	// console.log('<p>위도 : ' + latitude + '° <br>경도 : ' + longitude + '°</p>');

		    findLocation(latitude, longitude);
		},
		error : function(err) {
			
			var userAgent = navigator.userAgent.toString();

			if(/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream){ // iOS
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



	function findLocation(lat,lon) {
		//if (!!!optn) return;

		// 검색 파라미터 설정
		var paramArr = [];	
		paramArr[0] = 'lat=' + lat;
		paramArr[1] = 'lon=' + lon;
		
		appendLocation(paramArr);
	}
	
	function gpsLsm(gps_yn){
		if(gps_yn == 'Y'){
			address = encodeURIComponent(address);
			UI.layerPopUp({selId:'#pop-lsm', url:'/branch/gpsLsm', data:{lon:lon, lat:lat, xdot:xdot, ydot:ydot, address:address}});
			address = decodeURIComponent(address);
			_trk_call();
		}else{
			alert('위치접근허용을 승인해주세요.');	
		}
	}
	
	var _trk_call = function () {
	    // 트래킹
		var _trk_url = document.baseURI + '&_TRK_PI=WP_1P&_TRK_CP=LSM 팝업';
	    try {
	       	_trk_code_base = _trk_code_base.replace(/(du=).*?(&)/,'$1' + escape(_trk_url) + '$2');
	        _trk_flashEnvView("_TRK_PI=WP_1P","_TRK_CP=LSM 팝업");
	        /* console.log('TRK WEB_3_2 DONE!!'); */
	    } catch (e) {
	    	console.log(e.message);
	    }
		
	}
</script>
<!-- Naver Anlytics 공통-->
	<script>
	var WCSLOG_URL = location.protocol == "https:" ? "https://wcs.naver.net/wcslog.js" : "http://wcs.naver.net/wcslog.js";
	document.write(unescape("%3Cscript type='text/javascript' src='" + WCSLOG_URL +"' %3E%3C/script%3E"));
	</script>
	<!-- // Naver Anlytics 공통-->
	
	<!-- Global site tag (gtag.js) - Google Ads: 753034372 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=AW-753034372"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
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
					<a href="../Main.do" class="btn-logo">
						<i class="ico-logo"></i>
						<h1 class="hidden">도미노피자</h1>
					</a>
					
					<div class="util-nav">
					
					<!-- **** 위쪽 로그인 배너 -->
					<%
					String loginId = (String)session.getAttribute("loginId");
					String nmembername = (String)session.getAttribute("nmembername");
					%>

					<%if(loginId == null && nmembername == null) { //로그인 안했을 때 나오는 배너%>
						<a href="./Login.me">로그인</a>
						<a href="../member/JoinForm.me">회원가입</a>
					<%} else{ //로그인 성공시 나오는 배너
					
						if(nmembername == null && loginId != null) {%>
							<span style="margin-right: 10px">
							<b><%=loginId %>님 환영합니다!</b>
							</span> <%
							if(loginId.equals("admin")) { //관리자 계정일 경우%>
								<a href="./Logout.me">로그아웃</a>
								<a href="../admin/AdminPage.ad">관리자페이지</a>
							<%} else{ //일반 계정일 경우%>
							<a href="./Logout.me">로그아웃</a>
							<a href="../member/MemberPage.me?loginId=<%=loginId%>">마이페이지</a>
					<%		}
						} else if(nmembername != null && loginId == null){ %>
							<span style="margin-right: 10px">
							<b><%=nmembername %>님 환영합니다!</b>
							<a href="./Logout.me">로그아웃</a>
							</span>
					<%	}
					}%>
					
					
						
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
						<li class="active">
							<a href="../goods/MenuListPizza.pro"><span>메뉴</span></a>
						</li>
						<li>
							<a href="../ecoupon/CouponList.bo"><span>e-쿠폰</span></a>
						</li>
						<li>
							<a href="../voucher/VoucherList.vo"><span>상품권 선물</span></a>
						</li>
						<li>
							<a href="../event/UserEventList.bo"><span>이벤트&middot;제휴</span></a>
						</li>
						<li>
							<a href="SearchStore.st"><span>매장검색</span></a>
						</li>
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
								<li><a href="../bbs/UserNewsList.bo">도미노뉴스</a></li>
								<li><a href="../bbs/UserIssueList.bo">보도자료</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //main 1dep menu -->
		</header>
		<!-- //header -->
		
	<div id="container">
    <section id="content">
        <div class="sub-type member">
            <div class="inner-box">
                <div class="page-title-wrap v2">
                    <h2 class="page-title">로그인</h2>
                    <div class="depth-area">
                        <ol>
                            <li><a href="#">홈</a></li>
                            <li><strong>로그인</strong></li>
                        </ol>
                    </div>
                </div>
                <article class="login-area">
                    <div class="tab-type5 js_tab">
                        <ul>
                            <li class="active"><a href="#login">회원로그인</a></li>
                            <li><a href="#guest" onclick="showAlert(); return false;">비회원 주문</a></li>
                        </ul>
                    </div>
                    <div class="tab-content active" id="login">
                    
                    <!-- ****로그인 폼 -->
                    <form id="loginFrm" name="loginFrm" action="./LoginAction.me" method="post">

                        <div class="form-item">
                            <input type="text" name="id" id="id" maxlength="20" placeholder="아이디" value="" >
                        </div>
                        <div class="form-item">
                            <input type="password" placeholder="비밀번호" name="passwd" id="passwd" maxlength="20" onkeydown="javascript:if(event.keyCode==13){doLoginSSL();}">
                        </div>
                        
                        <div class="btn-wrap">
                            <a href="javascript:doLoginSSL();" class="btn-type v4">로그인</a>
                        </div>
                        <div class="btn-wrap">
                            <a href="../member/JoinForm.me" class="btn-type-brd5">회원가입</a>
                        </div>
                    
                    </form>
                    
                    </div>
                    
                    <!-- ****비회원 로그인 폼 -->
                    <div class="tab-content" id="guest">
                    <form name="nonf" id="nonf" action="./NMLoginAction.me" method="post">
					<input type="hidden" name="hp" id="hp" value="" />
					<input type="hidden" name="returnUrl" id="returnUrl" value="/main" />
                        <div class="sub-text">
                           		 아직 도미노피자 회원이 아니세요?
                            <a href="../member/JoinForm.me">회원가입</a>
                        </div>
                        <div class="form">
                            <div class="form-item">
                                <input type="text" name="name" id="name" placeholder="이름">
                            </div>
                            <span class="i_error show" id="name_alert"></span>
                            <div class="form-group">
                                <div class="form-item number">
                                    <div class="select-type2">
                                        <select name="hp1" id="hp1">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>
                                    </div>
                                    <input type="text" name="hp2" id="hp2" maxlength="4" onkeyup="checkNum($(this), '숫자만 입력하세요.');">
                                    <input type="text" name="hp3" id="hp3" maxlength="4" onkeyup="checkNum($(this), '숫자만 입력하세요.');">
                                </div>
                            </div>

                        </div>
                        <div class="chk-item">
                            <div class="chk-box v4">
                                <input type="checkbox" id="agree1" name="agree" value="Y" checked="checked">
                                <label class="checkbox" for="agree1"></label>
                                <label for="agree1">개인정보 수집 및 이용 동의(필수)</label>
                            </div>
                            <a href="javascript:UI.layerPopUp({selId:'#pop-terms-p'});" class="btn-link side">보기</a>
                        </div>
                        <div class="btn-wrap">
                            <a href="javascript:goNonLogin();" class="btn-type3">주문하기</a>
                        </div>
                        <p class="title-type2">
                            비회원 주문 시 매니아 및 제휴할인 혜택을 받을 수 없습니다.
                        </p>
                        <div class="banner-wrap">
                            <ul>
                                <li>
                                    도미노피자의 특별한 매니아 혜택을 누려보세요! <a href="../event/mania.html">매니아 혜택</a>
                                </li>
                                <li>
                                    10대 고객에게만 드리는 특별한 혜택을 마음껏 누려보세요!<a href="../event/mania4ab4.html?tab=5">틴 매니아</a>
                                </li>
                            </ul>
                        </div>
                        </form>
                    </div>
                </article>
            </div>
        </div>
    </section>
</div>

<!-- //container -->

 <!-- 팝업 개인정보 수집 및 이용 동의 -->
<div class="pop-layer type2" id="pop-terms-p">
    <div class="dim"></div>
    <div class="pop-wrap">
        <div class="pop-title-wrap">
            <h2 class="pop-title v2">개인정보 수집 및 이용 동의</h2>
        </div>
        <div class="pop-content">
            <!-- 2019-12-17//수정(s) -->
            <div class="terms-wrap">
                <div class="terms-box">
                    <p>청오디피케이㈜에서 운영하는 도미노피자 홈페이지 서비스 (이하 도미노)는 비회원이 도미노에 제공한 개인정보가 보호 받을 수 있도록 통신비밀보호법, 전기통신사업법, 정보통신망이용촉진 등에 관한 법률 등 정보통신서비스 제공자가 준수해야 할 관련 법규상의 개인정보보호규정 및 정보통신부가 제정한 개인정보보호지침을 엄격히 준수합니다.
                    </p>
                    <h3 class="title-type">* 개인정보의 수집 및 이용목적</h3>
                    <p>필수항목 : 성명, 휴대전화번호 선택항목 : 주소, 수령인, 수령인 전화번호
                    </p>
                    <h3 class="title-type">* 수집하는 개인정보의 항목</h3>
                    <p>도미노는 고객님께서 비회원으로 주문 서비스를 이용하는데 있어, 원활하게 주문의 접수 및 배달이 이루어질 수 있도록 하기 위한 최소한의 정보를 수집합니다. 도미노는 재화나 용역의 주문 및 서비스 이용 등에 있어 필요한 최소한의 개인정보를 수집하며, 다음과 같은 목적을 위하여 개인정보를 수집 및 이용하고 있습니다.
                    </p>
                    <p>* 보유기간 도미노의 비회원으로 접속하여 도미노에서 제공하는 서비스를 이용하는 동안 도미노는 수집된 개인정보를 계속적으로 보유하며 서비스 제공 등을 위해 이용합니다. 서비스 목적을 달성한 경우에는 재생할 수 없는 방법에 의하여 회원정보를 완전히 삭제하 며, 추후 열람이나 이용이 불가능한 상태로 처리됩니다.
                    </p>
                </div>
            </div>
            <!-- 2019-12-17//수정(e) -->
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div>
<!--//팝업 개인정보 수집 및 이용 동의 -->

<!-- 회원가입-->
<div class="pop-layer type2" id="pop-join">
    <div class="dim"></div>
    <div class="pop-wrap basic">
        <div class="pop-title-wrap">
            <h2 class="pop-title v2">회원가입</h2>
        </div>
        <div class="pop-content">
            <div class="step-wrap">
                <div class="title-type">도미노피자 회원가입</div>
                <p class="sub-text">회원가입 시 배달 20% 할인쿠폰 드립니다!</p>
                <div class="btn-wrap">
                    <a href="javascript:goRegister();" class="btn-type">회원가입</a>
                </div>
            </div>
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div>
<!-- 회원가입 -->

<!-- //회원가입 여부 및 실명 확인(e) -->
<div class="pop-layer" id="pop-fail">
    <div class="dim"></div>
    <div class="pop-wrap">
        <div class="pop-title-wrap">
            <h2 class="pop-title">로그인 실패</h2>
        </div>
        <div class="pop-content">
            <div class="notice-box">
                <p class="title-type">로그인에 실패하셨습니다.</p>
                <p class="title-type4">
                    회원정보를 다시 확인해주시고,
                    정상적으로 진행되지 않을<br>
                    경우 아래 아이디/비밀번호 찾기로
                    확인해주시기 바랍니다.
                </p>
                <div class="btn-wrap">
                    <a href="javascript:goFindIdPwd('#srchid');" class="btn-type v4">아이디/비밀번호 찾기</a>
                </div>
            </div>
            <div class="notice-info">
                <p class="title-type4">전화문의 : <em>080-860-3082</em></p>
                <p class="title-type4">E-mail 문의 : <em>webmaster@dominos.co.kr</em></p>
            </div>
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div>
<!-- //회원가입 여부 및 실명 확인(e) -->

<iframe name="nonLogin" id="nonLogin" frameborder="0" src="#" width="0" height="0" style="display:none" title="비회원 로그인"></iframe>

<form name="chgPasswdFrm" id="chgPasswdFrm" action="https://web.dominos.co.kr/main" method="post">
<input type="hidden" name="redirectUrl" id="redirect_url" value=""/>
<input type="hidden" name="changePwd" id="changePwd" value="Y"/>
</form>

<!-- 페이코아이디 연동 -->
<form id="payCo_Id" name="payCo_Id" target="_self" method="POST" action="https://id.payco.com/oauth2.0/authorize">
	<input type="hidden" id="response_type" name="response_type" value="code">
	<input type="hidden" id="client_id" name="client_id" value="3RDTfBIqT7sT8aeEp81L">
	<input type="hidden" id="redirect_uri" name="redirect_uri" value="Login.me">
	<input type="hidden" id="serviceProviderCode" name="serviceProviderCode" value="FRIENDS">
	<input type="hidden" id="viewType" name="viewType" value="">
	<input type="hidden" id="userLocale" name="userLocale" value="ko_KR">
	<input type="hidden" id="state" name="state" value="ab42ae">
</form>

<!-- 이미 가입 계정 있을 시  소셜 연동 페이지로 이동 -->
<form id="accountFrm" name="accountFrm" action="https://web.dominos.co.kr/member/accountLinkage" method="POST">
</form>


<!-- 네이버아이디 연동 -->
<form id="naver_Id" name="naver_Id" target="_self" method="POST" action="#">
</form>
<!-- sktid 연동 -->
<form id="sktid_Id" name="sktid_Id" target="_self" method="POST" action="#">
</form>
<script type="text/javascript" src="../../appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>
<script type="text/javascript">
var id_uuid = '';

$(document).ready(function()
{
	//id 체크 쿠키 있는 경우
		
	
	//UI.layerPopUp({selId:'#pop-error-naver'});
	var loginType = sessionStorage.getItem("loginType");
	
	if(loginType !== undefined && loginType !== '' && loginType !== null)
	{
		if(location.search.split('L=')[1] === 'L')
		{
			goIdLoginPop();
			
			if(typeof(history.pushState) == 'function')
			{
				var renewURL = location.href.split('?')[0];
				history.pushState(null, null, renewURL);
			}
		}
		else
			getIdInfo(loginType);
	}
	
	if(false){
		goIdLoginPop();
	}
});

function getIdInfo(loginType)	
{	
	var str = window.location.search;	
    var objURL = {};	
    str.replace	
    (	
    	new RegExp( "([^?=&]+)(=([^&]*))?", "g" ),	
		function( $0, $1, $2, $3 )	
        {	
           objURL[ $1 ] = $3;	
        }	
    );	
		
    var token = objURL.code;	
    if(loginType=="apple"){
    	token="";
    } else if(loginType=="sktid"){
    	token = window.location.hash;
    }
    		
    var appleError="";	
    	
    if(loginType=="apple" && appleError !== undefined && appleError !== '' && appleError !== null)	
	{		
    	alert("애플과 통신이 원활하지 않습니다. 다시 시도해주세요.");	
    	return;	
	}
    
    if(loginType=="sktid" && appleError !== undefined && appleError !== '' && appleError !== null)	
	{		
    	
    	if(appleError != '3584'){	//사용자 취소
	    	alert("");	
    	}
	    return;	
	}
    
    if(typeof(history.pushState) == 'function')	
	{	
		var renewURL = location.href.split('?')[0];	
		history.pushState(null, null, renewURL);	
	}	
    
    if(token !== undefined && token !== '' && token !== null)	
	{	
		$.ajax({	
			type: "POST",	
			url: "/member/setLoginId",	
			data: 	
			{ 	
				"token" : token,	
				"loginType" : loginType,	
				"id_type":"LOGIN"	
			},	
			dataType : "json",	
			success:function(data1) 	
				
			{
				id_uuid = data1.resultData.id_uuid;	
			 	if (data1.resultData.code === "0"){ 	
			 		if(data1.resultData.base_id !== ''){	
			 			$.ajax({	
			 				type: "POST",	
			 				url: "/global/loginAjax",	
			 				data: { 	
			 						"id" : data1.resultData.base_id,	
			 						"passwd" : data1.resultData.encpasswd,
			 						"saveId" : "N",	
			 						"redirectUrl" : $('#redirectUrl').val(),	
			 						"id_type":"P",	
			 						"id_uuid":data1.resultData.id_uuid,	
			 						"loginType" : loginType	
			 					  },	
			 				dataType : "json",	
			 				success:function(data) {	
			 				 	if (data.resultData.status == "success") {	
			 				 		if (data.resultData.msg == "changePwd"){	
			 				 			$("#redirect_url").val(data.resultData.redirectUrl);	
			 							$("#chgPasswdFrm").submit();	
			 				 		}else{	
			 				 			location.href = data.resultData.redirectUrl;	
			 				 		}	
			 					} else {	
			 						if (data.resultData.msg == "noId" || data.resultData.msg == "noPasswd" || data.resultData.msg == "noPasswd1" || data.resultData.msg == "noPasswd2" || data.resultData.msg == "checkCert") {	
			 							UI.layerPopUp({selId:'#pop-fail'});	
			 						} else if (data.resultData.msg == "noPasswd3" || data.resultData.msg == "noPasswd4"){	
			 							var cnt = data.resultData.msg.replace("noPasswd", "");	
			 							alert("로그인 "+cnt+"회 실패하셨습니다.\n5회 이상 로그인 실패 시 로그인이 불가하며,\n비밀번호 찾기 페이지에서 비밀번호 변경 후 이용 가능합니다.");	
			 						} else if (data.resultData.msg == "block"){	
			 							alert("로그인 5회 이상 실패하셨습니다.\n5회 이상 로그인 실패 시 로그인이 불가하며,\n비밀번호 찾기 페이지에서 비밀번호 변경 후 이용 가능합니다.");	
			 							location.href = "../member/findIdPw.html";	
			 						} else if (data.resultData.msg == "dormancy") {	
			 								
			 							if (confirm('회원님의 ID는 휴면 계정으로 관리 중 입니다. 기존 ID 및 정보는 휴면 계정 해제 후 재이용이 가능합니다. 휴면 계정을 해제하시겠습니까?')) {
			 								if(loginType == 'sktid'){
				 								$("#sktid_sub_id").val(data1.resultData.sktid_sub_id);
			 								}
			 								$("#loginFrm #id").val(data1.resultData.base_id);
			 								$("#loginFrm").attr("action","/member/restartMem").submit();	
			 									
			 							} else {	
			 								return;	
			 							}	
			 						} else if (data.resultData.msg == "checkCert"){	
			 							alert('원활한 서비스를 위해 본인인증이 필요합니다.')	
			 							$("#loginFrm").attr("action","/member/checkCert").submit();	
			 						} else 	
			 						{	
			 							alert(decodeURIComponent(data.resultData.msg));	
			 							if (data.resultData.redirectUrl) {	
			 								location.href = data.resultData.redirectUrl;	
			 							}	
			 						}	
			 					}	
			 				},	
			 				error: function (error){	
			 					alert("다시 시도해주세요.");	
			 					location.href = '../Main.do';	
			 				}	
			 			});	
		 			}	
				}else if (data1.resultData.code === '1'){  //신규 회원가입
		 			goIdLoginChk(loginType);	
					
				}else if(data1.resultData.code === '2'){	
			 		if (confirm('회원님의 ID는 휴면 계정으로 관리 중 입니다. 기존 ID 및 정보는 휴면 계정 해제 후 재이용이 가능합니다. 휴면 계정을 해제하시겠습니까?')) {
			 				if(loginType == 'sktid'){
								$("#sktid_sub_id").val(data1.resultData.sktid_sub_id);
							}
			 				$("#id").val(data1.resultData.base_id);
			 				$("#loginFrm").attr("action","/member/restartMem").submit();	
						} else {	
							return;	
						}	
				}else if(data1.resultData.code === '3'){	//만 14세 미만 일 경우
					alert("만 14세 미만 아동의 개인정보 보호를 위해 회원가입은 만 14세 이상만 가능합니다.");
					//goIdLoginPop();
				}else if(data1.resultData.code === '4'){	//생년월일이 없을 경우
					alert("만 14세 미만인 경우 회원가입이 불가합니다. 확인을 위해 생년월일 정보 체크 부탁드립니다.");
			 	}else if (data1.resultData.code === '99'){  //ci or email 중복 일 경우
					var optionHtml = '';
	 				optionHtml += "<input type=\"hidden\" name=\"accountCheck\" id=\"accountCheck\" value=\"" +data1.resultData.accountCheck + "\" />";
	 				
	 				if(loginType == 'naver'){
	 					optionHtml += "<input type=\"hidden\"name=\"account_link\" id=\"account_link\" value=\"N\" />";
	 				}else if(loginType == 'sktid'){
	 					optionHtml += "<input type=\"hidden\"name=\"account_link\" id=\"account_link\" value=\"S\" />";
	 					optionHtml += "<input type=\"hidden\"name=\"sktid_sub_id\" id=\"sktid_sub_id\" value=\"" + data1.resultData.sktid_sub_id + "\" />";
	 				}else{
	 					optionHtml += "<input type=\"hidden\"name=\"account_link\" id=\"account_link\" value=\"P\" />";
	 				}
	 				optionHtml += "<input type=\"hidden\"name=\"email\" id=\"email\"  value=\"" +data1.resultData.email + "\" />";
	 				optionHtml += "<input type=\"hidden\"name=\"id_uuid\" id=\"id_uuid\"  value=\"" +data1.resultData.id_uuid + "\" />";
	 				optionHtml += "<input type=\"hidden\"name=\"login_type\" id=\"login_type\"  value=\"" + loginType + "\" />";
	 				
	 				data1.resultData.mbList.forEach(function(item,index){
	 					optionHtml += "<input type=\"hidden\"name=\"id\" id=\"id\" value=\"" +item.id + "\" />";
	 					optionHtml += "<input type=\"hidden\"name=\"reg_date\" id=\"reg_date\" value=\"" +item.reg_date + "\" />";
	 					optionHtml += "<input type=\"hidden\"name=\"dormancy_yn\" id=\"dormancy_yn\" value=\"" +item.dormancy_yn + "\" />";
	 				});
	 				
	 				$("#accountFrm").append(optionHtml);
	 				$("#accountFrm").submit();
					
			 	}else 	
		 		{	
			 		alert("다시 시도해주세요.");	
 					location.href = '../Main.do';	
		 		}	
			},	
			error: function (data1,error)	
			{	
				alert("간편 로그인 연결 오류가 발생 했습니다.\n 다시 시도 해주세요.");	
				location.href = '../Main.do';	
			},	
			beforeSend: function() {	
				ajaxBasketRequest = "Y";	
				$("#defaultLoading").show();	
			},	
			complete: function() {	
				ajaxBasketRequest = null;	
			    $("#defaultLoading").hide();	
			}	
		});	
	}	
}

//탭 이동
function goTab(idx){
	$(".login_area").hide();
	$(".btn_tab li").removeClass("active");
	$(".btn_tab li").eq(idx).addClass("active");
	$(".login_area").eq(idx).show();
}

//비회원 로그인 알럿 처리
function showAlert() {
	alert("비회원 로그인시 퀵오더, 특가제품 및 일부할인의 이용은 불가합니다.");
	goTab(1);
	return;
}

// ID 연동 처리
function goLoginId(id_type) 	
{	
	sessionStorage.clear();	
		
	if(id_type === '1')	 //페이코로 로그인
	{	
		sessionStorage.setItem("loginType", "payCo");
		$('#payCo_Id').submit();	
	}	
	else if(id_type === '2') //네이버 로그인
	{	
		sessionStorage.setItem("loginType", "naver");
		var appUrl = 'https://nid.naver.com/oauth2.0/authorize' + '?response_type=' + 'code' + '&client_id=' + 'rN_o1CVWr4YSnpg7dhf9' + '&redirect_uri=' + 'https%3A%2F%2Fweb.dominos.co.kr%2Fglobal%2Flogin' + '&state=' + 1076490222084636182000523484123779517955;	
		$("#naver_Id").attr("action", appUrl);	
		$('#naver_Id').submit();	
	}
	else if(id_type === '3')	 //페이코 회원가입
	{	
		sessionStorage.setItem("loginType", "payCo");	
		$('#redirect_uri').val('../member/regStepPayCo.html');	
		$('#payCo_Id').submit();	
	}
	else if(id_type === '4')	 //네이버 회원가입
	{	
		sessionStorage.setItem("loginType", "naver");	
		var appUrl = 'https://nid.naver.com/oauth2.0/authorize' + '?response_type=' + 'code' + '&client_id=' + 'rN_o1CVWr4YSnpg7dhf9' + '&redirect_uri=' + 'https://web.dominos.co.kr/member/regStepNaver' + '&state=' + 1076490222084636182000523484123779517955;	
		$("#naver_Id").attr("action", appUrl);	
		$('#naver_Id').submit();	
		
	}else if(id_type === '5'){	//애플 로그인
		sessionStorage.setItem("loginType", "apple");	
		$("#appleid-signin").trigger("click");
	}else if(id_type === '6'){	//T아이디 로그인
		sessionStorage.setItem("loginType", "sktid");
		var appUrl = 'https://auth.skt-id.co.kr' + "/auth/authorize.do" 
				+ '?client_id=1f320ff1-6a1e-4c7a-a2e3-5681999fa673'
				+ '&client_secret=eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2R0NNIn0.FgVYNfyE3vHH4DvonqG2Cyhlrbby2Y7trGXTU6lNYx91QgITbX8rJA.Patq6aI8peNi_KEB.TVMLvZsJ7QMqc8xMGcsfAW-P9DL3NmtecZ3snIV1UGVxFGZfRapCeUGZUz00S_yJJiqdfJFXuVXoW9nZd9SK1A.lx2Dly-2MJPZkDU5Exrq4g'
				+ '&redirect_uri=https%3A%2F%2Fweb.dominos.co.kr%2Fglobal%2Flogin'
				+ '&state=1600600912318'
				+ '&nonce=1600600912318'
				+ '&client_type=WEB'
				+ '&service_type=14'
				+ '&response_type=id_token%20token'
				+ '&scope=openid';
		$("#sktid_Id").attr("action", appUrl);
		$('#sktid_Id').submit();
	}else if(id_type === '7'){	//T아이디 회원가입
		sessionStorage.setItem("loginType", "sktid");
		var appUrl = 'https://auth.skt-id.co.kr' + "/auth/authorize.do" 
				+ '?client_id=1f320ff1-6a1e-4c7a-a2e3-5681999fa673'
				+ '&client_secret=eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2R0NNIn0.FgVYNfyE3vHH4DvonqG2Cyhlrbby2Y7trGXTU6lNYx91QgITbX8rJA.Patq6aI8peNi_KEB.TVMLvZsJ7QMqc8xMGcsfAW-P9DL3NmtecZ3snIV1UGVxFGZfRapCeUGZUz00S_yJJiqdfJFXuVXoW9nZd9SK1A.lx2Dly-2MJPZkDU5Exrq4g'
				+ '&redirect_uri=https://web.dominos.co.kr/member/regStepSktId'
				+ '&state=1600600912318'
				+ '&nonce=1600600912318'
				+ '&client_type=WEB'
				+ '&service_type=14'
				+ '&response_type=id_token%20token'
				+ '&scope=openid';
		$("#sktid_Id").attr("action", appUrl);
		$('#sktid_Id').submit();
	}	
}

//로그인 처리
function doLoginSSL() {
	if ($('#id').val().isBlank()){
		alert("아이디를 입력해주세요.");
		$('#id').focus();
		return;
	}
	if ($('#passwd').val().isBlank()){
		alert("비밀번호를 입력해주세요.");
		$('#passwd').focus();
		return;
	}

	  var loginFrm = document.getElementById("loginFrm");
	  loginFrm.submit();
	
}

//회원 가입
function goRegister(type) {
	location.href = "../member/regStep1.html";
}

function goIdLoginPop() {
	UI.layerPopUp({selId:'#pop-join'});
}

function goIdLoginChk(loginType) 
{
	if(loginType === 'payCo'){ //회원가입 페이지로 이동.
		location.href = "../member/regStepPayCo.html";
	}else if(loginType === 'naver'){ //회원가입 페이지로 이동.
		//goLoginId('4');
		location.href = "../member/regStepNaver.html";
	
	}else if(loginType === 'apple'){
		alert("해당 애플 ID로 연동된 계정이 존재하지 않습니다. 도미노피자 ID로 로그인 후 나의 정보에서 애플 연동을 통해 로그인 이용 부탁드립니다.");
	}else if(loginType === 'sktid'){ //회원가입 페이지로 이동.
		location.href = "../member/regStepSktId.html";
	}
}

//아이디, 비번 찾기
function goFindIdPwd(link) {
	if(link == ''){
		link = "#srchid";
	}
	//location.href = "/member/findIdPw";
	goLink("M220000", "/member/findIdPw" + link);
}

//비회원 로그인 - 인증번호 발송
function goNonAuth() {
	
	$("#name_alert").text("");
	$("#hp_alert").text("");
	$("#auth_alert").text("");

	var agreeOption = $("input[name=agree]:checked").val();
	if (agreeOption == "Y") {
		
		if ($('#name').val() == ""){
			$("#name_alert").text("이름을 입력해주세요.");
			$('#name').focus();
			return;
		}
		if ($('#hp1').val() == ""){
			$("#hp_alert").text("휴대전화번호를 입력해 주세요.");
			$('#hp1').focus();
			return;
		}
		if ($('#hp2').val() == ""){
			$("#hp_alert").text("휴대전화번호를 입력해 주세요.");
			$('#hp2').focus();
			return;
		}
		if ($('#hp3').val() == ""){
			$("#hp_alert").text("휴대전화번호를 입력해 주세요.");
			$('#hp3').focus();
			return;
		}

		$('#hp').val($('#hp1').val() + '-' + $('#hp2').val() + '-' + $('#hp3').val());
		
		$('#hp1,#hp2,#hp3').attr("disabled","disabled");
		
		$("#nonf").attr("target", "nonLogin");
		$("#nonf").submit();
	} else {
		alert("개인정보 수집 및 이용 약관에 동의해야 합니다.");
	}
}

//비회원 로그인 처리
function goNonLogin() {
	$("#name_alert").text("");
	$("#hp_alert").text("");
	$("#auth_alert").text("");

	var agreeOption = $("input[name=agree]:checked").val();
	if (agreeOption == "Y") {
		
		
		
		  var nonf = document.getElementById("nonf");
		  nonf.submit();

	} else {
		alert("개인정보 수집 및 이용 약관에 동의해야 합니다.");
		return;
	}
}


AppleID.auth.init({
    clientId : 'dominopizza.dominos.co.kr',
    scope : 'email',
    redirectURI : 'https://web.dominos.co.kr/global/login',
    state : 'test1',
    usePopup : false //or false defaults to false
});

</script>

<!-- LOGGER 환경변수 설정 -->
<script type="text/javascript">
	_TRK_PI = "WP_2"; // 웹페이지의 성격 정의 - 로그인 화면
	_TRK_CP = "로그인";
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
			<a href="javascript:;" onclick="setBasketCnt();" class="btn_ico btn_close">닫기</a>
		</div>
	</div>
	<!-- //장바구니(e) -->

	<footer id="footer">
		<div class="footer-area">
			<div class="inner-box">
				<div class="footer-order">
					<i class="ico-logo2"></i>
					<span class="tel">1577-3082</span>
				</div>
	
				<ul class="footer-contact">
					<li><a href="../contents/law.html">이용약관</a></li>
					<li class="on"><a href="../contents/privacy.html">개인정보처리방침</a></li>
					<li><a href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
					<li><a href="../company/jobListe3b0.html?type=R">인재채용</a></li>
					<li><a href="../company/contents/chainstore1.html">가맹점모집</a></li>
					<li><a href="../order/groupOrder.html">단체주문</a></li>
				</ul>
	
				<div class="footer-info">
					<p>06229 서울특별시 강남구 언주로 315 청오디피케이㈜｜대표이사 : 오광현</p>
					<p>사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이명윤</p>
					<p>문의 : webmaster@dominos.co.kr</p>
					<p>Copyright ⓒ Domino’s Pizza. All rights reserved.</p>
	
					<p class="notice">청오디피케이㈜의 사전 서면동의 없이 도미노피자 사이트(PC, 모바일, 앱)의 일체의 정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
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
							<a href="https://itunes.apple.com/kr/app/dominopija-domino-pizza-korea/id371008429?mt=8"><i class="ico-ios"></i>ios 앱다운로드</a>
							<a href="https://play.google.com/store/apps/details?id=kr.co.d2.dominos"><i class="ico-android">안드로이드 앱다운로드</i></a>
						</dd>
					</dl>
	
					<div class="sns-box">
						<ul>
							<li><a href="http://blog.naver.com/dominostory"><i class="ico-blog"></i>블로그</a></li>
							<li><a href="https://www.instagram.com/dominostory/"><i class="ico-insta"></i>인스타그램</a></li>
							<li><a href="https://www.facebook.com/dominostory/"><i class="ico-facebook"></i>페이스북</a></li>
							<li><a href="https://www.youtube.com/user/dominostory3082"><i class="ico-youtube"></i>유튜브</a></li>
							<li><a href="https://twitter.com/dominostory"><i class="ico-twitter"></i>트위터 </a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="awards-area">
			<div class="inner-box">
				<ul>
					<li>
						<img src="../../cdn.dominos.co.kr/domino/pc/images/list_awards.png" alt="">
						<p>식품안전<br>경영시스템 인증</p>
					</li>
					<li>
						<img src="../../cdn.dominos.co.kr/domino/pc/images/list_awards2.png" alt="">
						<p>지식경제부<br>우수디자인 선정</p>
					</li>
					<li>
						<img src="../../cdn.dominos.co.kr/domino/pc/images/list_awards3.png" alt="">
						<p>고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위</p>
					</li>
					<li>
						<img src="../../cdn.dominos.co.kr/domino/pc/images/list_awards4.png" alt="">
						<p>2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위</p>
					</li>
					<li>
						<img src="../../cdn.dominos.co.kr/domino/pc/images/list_awards5.png" alt="">
						<p>2020 프리미엄브랜드지수<br>피자전문점 부문 5년 연속 1위 수상</p>
					</li>
					<li>
						<img src="../../cdn.dominos.co.kr/domino/pc/images/list_awards6.png" alt="">
						<p>대학생 1000명이 선택한<br>2019 올해의 핫 브랜드 캠퍼스 잡앤조이 선정</p>
					</li>
				</ul>
			</div>
		</div>
	</footer>
	<!-- //footer -->
</div><!-- //wrap -->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../www.google-analytics.com/analytics.js','ga');
  
  ga('create', 'UA-40278626-1', 'auto', {'allowLinker': true});
  ga('require', 'linker');
  ga('linker:autoLink', ['cdn.dominos.co.kr'] );
  ga('send', 'pageview');

</script>
<!-- LOGGER(TM) TRACKING SCRIPT V.40 FOR logger.co.kr / 21550 : COMBINE TYPE / DO NOT ALTER THIS SCRIPT. -->
	<script type="text/javascript">var _TRK_LID="21550";var _L_TD="ssl.logger.co.kr";var _TRK_CDMN=".dominos.co.kr";</script>
	<script type="text/javascript">var _CDN_DOMAIN = location.protocol == "https:" ? "https://fs.bizspring.net" : "http://fs.bizspring.net";
	(function(b,s){var f=b.getElementsByTagName(s)[0],j=b.createElement(s);j.async=true;j.src='../../fs.bizspring.net/fs4/bstrk.1.js';f.parentNode.insertBefore(j,f);})(document,'script');</script>
	<noscript><img alt="Logger Script" width="1" height="1" src="http://ssl.logger.co.kr/tracker.tsp?u=21550&amp;js=N" /></noscript>
	<!-- END OF LOGGER TRACKING SCRIPT -->
	
	<!-- BS CTS TRACKING SCRIPT V.20 / 15484 : CTS / DO NOT ALTER THIS SCRIPT. -->
	<!-- COPYRIGHT (C) 2002-2020 BIZSPRING INC. L4AD ALL RIGHTS RESERVED. -->
	<script type="text/javascript">
	(function(b,s,t,c,k){b[k]=s;b[s]=b[s]||function(){(b[s].q=b[s].q||[]).push(arguments)};  var f=t.getElementsByTagName(c)[0],j=t.createElement(c);j.async=true;j.src='../../fs.bizspring.net/fs4/l4cts.v4.2.js';f.parentNode.insertBefore(j,f);})(window,'_tcts_m',document,'script','BSAnalyticsObj');
	_tcts_m('15484','BCTS');
	</script>
	<!-- END OF BS CTS TRACKING SCRIPT -->
	
	<!-- Naver Anlytics 공통-->
	<script type="text/javascript" src="../../wcs.naver.net/wcslog.js"> </script>
	<script type="text/javascript">
	if (!wcs_add) var wcs_add={};
	wcs_add["wa"] = "s_273c36e36e8a";
	if (!_nasa) var _nasa={};
	wcs.inflow("dominos.co.kr");
	wcs_do(_nasa);
	</script>
	<!-- // Naver Anlytics 공통 -->

	<!-- Google Tag Manager : dominos_web -->
	<noscript><iframe src="http://www.googletagmanager.com/ns.html?id=GTM-TR97KL" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'../../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-TR97KL');</script>
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

<!-- Mirrored from web.dominos.co.kr/global/login by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Sep 2020 11:22:46 GMT -->
</html>
