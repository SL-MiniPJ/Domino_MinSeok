<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE HTML>
<html lang="ko">

<!-- Mirrored from web.dominos.co.kr/branch by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Sep 2020 11:22:51 GMT -->
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
	<meta name="description" content="도미노피자의 매장을 쉽게 검색하실 수 있으며, 특별할인을 진행하는 매장도 함께 찾으실 수 있습니다." />
<meta name="title" content="매장찾기- 도미노피자" />
<title>매장찾기- 도미노피자</title>
<meta property="og:type" content="website" />
<meta property="og:title" content="매장찾기- 도미노피자" />
<meta property="og:site_name" content="도미노피자" />
<meta property="og:image" content="../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta property="og:image:width" content="270" />
<meta property="og:image:height" content="270" />
<meta property="og:description" content="도미노피자의 매장을 쉽게 검색하실 수 있으며, 특별할인을 진행하는 매장도 함께 찾으실 수 있습니다." />
<meta property="og:url" content="/branch" />
<meta name="twitter:card" content="app" />
<meta name="twitter:title" content="매장찾기- 도미노피자" />
<meta name="twitter:image" content="../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta name="twitter:description" content="도미노피자의 매장을 쉽게 검색하실 수 있으며, 특별할인을 진행하는 매장도 함께 찾으실 수 있습니다." />
<meta name="twitter:url" content="/branch" />
<meta name="twitter:site" content="@dominostory" />
<meta name="twitter:description" content="도미노피자의 매장을 쉽게 검색하실 수 있으며, 특별할인을 진행하는 매장도 함께 찾으실 수 있습니다." />
<meta name="twitter:app:name:iphone" content="도미노피자" />
<meta name="twitter:app:id:iphone" content="371008429" />
<meta name="twitter:app:url:iphone" content="https://itunes.apple.com/kr/app/id371008429" />
<meta name="twitter:app:name:ipad" content="도미노피자" />
<meta name="twitter:app:id:ipad" content="371008429" />
<meta name="twitter:app:url:ipad" content="https://itunes.apple.com/kr/app/id371008429" />
<meta name="twitter:app:name:googleplay" content="도미노피자" />
<meta name="twitter:app:id:googleplay" content="kr.co.d2.dominos" />
<meta name="twitter:app:url:googleplay" content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:web:url" content="index.html" />
<meta property="al:android:app_name" content="도미노피자" />
<meta property="al:android:package" content="kr.co.d2.dominos" />
<meta property="al:android:url" content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:ios:app_name" content="도미노피자" />
<meta property="al:ios:app_store_id" content="371008429" />
<meta property="al:ios:url" content="https://itunes.apple.com/kr/app/id371008429" /><link rel="shortcut icon" href="https://cdn.dominos.co.kr/renewal2018/w/img/favicon.ico"/>
	<!-- <link rel="stylesheet" type="text/css" href="/resources/css/font.css"> --> <!-- 20191202 주석 -->
	<!-- 20191204 주석 -->
	
	<script type="text/javascript" src="resources/js/jquery1.11.1.js"></script>
	
	<script type="text/javascript" src="../cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="resources/js/selectbox.js"></script><!-- js 수정함. -->
	<script type="text/javascript" src="resources/js/d2CommonUtil7ef2.js?ver=1.5"></script>
	<script type="text/javascript" src="resources/js/Cookie.js"></script>
	<script type="text/javascript" src="../cdn.dominos.co.kr/renewal2018/w/js/basket_w.js"></script>
	
	
	<!-- 리뉴얼 적용 2019.12.02 -->
	<link rel="stylesheet" type="text/css" href="../cdn.dominos.co.kr/domino/asset/css/font.css"> 
	<link rel="stylesheet" type="text/css" href="../cdn.dominos.co.kr/domino/pc/css/common.css"> 
	
	<!--메인에는 sub.css 호출하지않음-->
	<link rel="stylesheet" type="text/css" href="../cdn.dominos.co.kr/domino/pc/css/sub.css">
	<!--//메인에는 sub.css 호출하지않음  -->

	<script src="../cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js"></script>
	<script src="../cdn.dominos.co.kr/domino/asset/js/slick.js"></script>
	<script src="../cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
	<script src="../cdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>
	
	<script src="../cdn.dominos.co.kr/domino/pc/js/ui.js"></script>
	<script type="text/javascript" src="resources/js/gcenmaps/gcenmap.js"></script><!--서브에는 main.js 호출하지않음-->
	<!--//서브에는 main.js 호출하지않음-->
	<!-- //리뉴얼 적용 2019.12.02 -->
	
	<!-- 기존 팝업 재사용위해 css 추가함. 추후 common.css 에 아래 소스 추가 예정 -->
	<style>
	#card_add .pop_wrap{position:fixed;top:50%;width:490px;margin-left:-245px;margin-top:-35px;}
	#card_add .pop_wrap .pop_content p{font-size:18px;color:#fff;text-align:center}
	.pop_toast {display: block;position:absolute;top:0;left:0;width:100%;height:100%;z-index:100;}
	.pop_toast.open {display:block}
	
	.pop_toast .bg {position:fixed; width:100%; height:100%;}
	.pop_toast .pop_wrap {overflow:hidden;position:absolute; top:100px; left:50%; min-width:400px;min-height:70px; margin-left:-200px; padding:20px; background:url(../cdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png) repeat 0 0;border-radius:12px;}
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
	
	var CON_DOMAIN_URL = "index.html";
	var CON_SSL_URL = "index.html";
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
		location.href="basket/detail.html";
	};

	var doLogin = function() {
		location.href="global/login.html";
	};

	var myOrderDetail = function() {
		var order_no = $('#tracker_order_no').val();
		location.href="/mypage/myOrderView?order_no="+order_no+"&pageNo=1";
	};
	
	//페이코 회원 가입
	function goLoginPop() 
	{
		if(location.pathname !== '/global/login')
			location.href = 'global/login.html';
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
					<a href="./Main.do" class="btn-logo">
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
							<a href="./global/Login.me">로그인</a>
							<a href="./member/JoinForm.me">회원가입</a>
						<%} else{ //로그인 성공시 나오는 배너
						
							if(nmembername == null && loginId != null) {%>
								<span style="margin-right: 10px">
								<b><%=loginId %>님 환영합니다!</b>
								</span> <%
								if(loginId.equals("admin")) { //관리자 계정일 경우%>
									<a href="./global/Logout.me">로그아웃</a>
									<a href="./admin/AdminPage.ad">관리자페이지</a>
								<%} else{ //일반 계정일 경우%>
								<a href="./global/Logout.me">로그아웃</a>
								<a href="./member/MemberPage.me?loginId=<%=loginId%>">마이페이지</a>
						<%		}
							} else if(nmembername != null && loginId == null){ %>
								<span style="margin-right: 10px">
								<b><%=nmembername %>님 환영합니다!</b>
								<a href="./global/Logout.me">로그아웃</a>
								</span>
						<%	}
						}%>
						
						
		                <!--2020-03-17 추가(e)-->
					</div>
				</div>
			</div>
				
			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active">
							<a href="goods/list985d.html?dsp_ctgr=C0101"><span>메뉴</span></a>
						</li>
						<li>
							<a href="ecoupon/index.html"><span>e-쿠폰</span></a>
						</li>
						<li>
							<a href="voucher/listdcb9.html?gubun=M"><span>상품권 선물</span></a>
						</li>
						<li>
							<a href="event/list6849.html?gubun=E0200"><span>이벤트&middot;제휴</span></a>
						</li>
						<li>
							<a href="branch.html"><span>매장검색</span></a>
						</li>
					</ul>
					<a href="#" class="snb-more">더보기</a>
				</div>
				
				<div class="snb-wrap">
					<div class="inner-box">
						<div class="mnu-wrap">
							<div class="mnu-box">
								<a href="event/mania.html">도미노 서비스</a>
								<ul>
									<li><a href="event/mania.html">매니아 혜택</a></li>
									<li><a href="goods/dominosMoment.html">도미노 모멘트</a></li>
									<li><a href="quickOrder/index.html">퀵 오더</a></li>
									<li><a href="order/groupOrder.html">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a>
								<ul>
									<li><a href="bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">자주하는 질문</a></li>
									<li><a href="bbs/qnaForm.html">온라인 신문고</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="company/contents/overview.html">회사소개</a>
								<ul>
									<li><a href="company/contents/overview.html">한국도미노피자</a></li>
									<li><a href="company/tvcfList.html">광고갤러리</a></li>
									<li><a href="company/contents/society.html">사회공헌활동</a></li>
									<li><a href="company/contents/chainstore1.html">가맹점 모집</a></li>
									<li><a href="company/jobListe3b0.html?type=R">인재채용</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a href="bbs/newsList91ef.html?type=N">공지사항</a>
							<ul>
								<li><a href="bbs/newsList91ef.html?type=N">도미노뉴스</a></li>
								<li><a href="bbs/newsList0e42.html?type=P">보도자료</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //main 1dep menu -->
		</header><!-- //header -->
	<script type="text/javascript" src="resources/js/common.js"></script>
<script type="text/javascript">
var ajaxRequest = null;
var pageNo = 1,
	gmapx = '37.56409' * 1.0,
	gmapy = '126.99794' * 1.0,
	map,
	//markerImg = 'https://cdn.dominos.co.kr/renewal2018/w/img/ico/ico_marker.png';
	markerImg = '../cdn.dominos.co.kr/domino/pc/images/ico_spot.png';	//

var largeMap,
	detailMap;

window.onload = function() {
	// 특별 할인 레이어팝업 html 생성
	// iframe 불러오는 데에 오래 걸려서 시/도, 구/군 셀렉트 박스 옵션 값이 공백으로 나오는 현상 발생하여 onload로 위치 옮김.
	//$('#popup_promotion').html("<iframe src='/branch/lsmLayer' width='100%' height='100%' frameborder='0'></iframe>");
	//UI.layerPopUp({selId:'#pop-store-info',url:'/branch/lsmLayer'});
};

$(function() {
	initMaps(gmapx, gmapy);	// 전체 매장 지도 표시
	/*
		다른 페이지로 이동했다가 뒤로 가기로 해당 페이지 접근 시,
		시/도 구분 없어서 매장 리스트 못 불러오는 현상 때문에 추가
	*/
	if ($('#region_code_1').val() == "") {
		$('#region_code_1').val('01');
		getRegionSubList(function() {
			$('#region_code_2').val('0101');
			findBranch('address');	// 주소로 검색한 목록 호출
		});
	} else {
		findBranch('address');	// 주소로 검색한 목록 호출
	}

	$('#branch_name').on('keydown', function(key) {
		if(key.keyCode == 13) {
			findBranch('name');
		}
	});

	
});


//매장 찾기 검색 영역 탭 변경
//@param		optn	주소로 검색(address), 매장명 검색(name) 구분 값
//@thisArea
function navTabs(optn, thisArea) {
	
	if (optn == 'address') {
		// 서울 중구로 셀렉트박스 초기화 후 검색
		$('#region_code_1').val('01');
		getRegionSubList(function() {
			$('#region_code_2').val('0101');
			findBranch('address');
		});

// 		$('#div_name_srch').hide();
// 		$('#div_addr_srch').show();
	} else if (optn == 'name') {
		
		// 매장명 검색어 초기화
		$('#branch_name').val('');

		// 검색 파라미터 설정
		var paramArr = [];
		paramArr[0] = 'pageNo=' + pageNo;
		paramArr[1] = 'region_code_2=0101';

		// 서울 중구를 디폴트 목록으로 노출
		appendBranch(paramArr);

// 		$('#div_addr_srch').hide();
// 		$('#div_name_srch').show();
	} else {
		return;
	}

	//$('ul.btn_tab li').removeClass('active');
	//$(thisArea).parent().addClass('active');
}

//시/도에 따라 셀렉트 박스에 구/군 목록 노출
function getRegionSubList(callbackFunc) {
	
	if ($('#region_code_1').val() == '') return;

	$.ajax({
		url: '/branch/regionSubListAjax',
		data: { region_code_1 : $('#region_code_1').val()},
		type: 'get',
		dataType: 'json',
		success: function(data) {
			if (data.status == 'success') {
				
				var htmlStr = '<option value="">구/군</option>';
				$.each(data.resultData, function(index, addrObj) {
					htmlStr += '<option value="'+ addrObj.region_code_2 +'">'+ addrObj.region_sub_nm +'</option>';
				});

				$('#region_code_2').html(htmlStr);
			} else {
				alert(data.msg);
			}

			if (typeof callbackFunc === 'function') {
		        callbackFunc();
		    }
		},
		error: function() {
			// alert('처리도중 오류가 발생했습니다.');
		}
	});
}

//레이어 팝업 열기
//@param	optn	특별 할인(promotion), 매장지도 전체보기(detail_map), 매장 상세보기(detail_view) 구분 값
function openLayerPopup(optn) {
	if (optn == 'promotion') {
 		//$('html, body').css({'overflow-y': 'hidden', 'height' : '100%'});
		//$('#popup_promotion').addClass('open');
		
		UI.layerPopUp({selId:'#pop-store-info',url:'/branch/lsmLayer'});
	} else if (optn == 'detail_map') {
		if (largeMap.markerList.length == 0) {
			markAllBranchs();
		}

		//$('#pop-store-info').addClass('open');
		//location.href = '#pop-store-info';
		UI.layerPopUp({selId:'#pop-store-all'});
		

		// 매장 찾기 목록의 첫번째 매장을 중심점으로 잡음.
		if ($(map.markerLayer).find('.marker_box').length > 0) {
			var map_gmapy = $(map.markerLayer).find('.marker_box').find('.spot-detail').data('gmapy');
			var map_gmapx = $(map.markerLayer).find('.marker_box').find('.spot-detail').data('gmapx');
			largeMap.setCenter(map_gmapy, map_gmapx, 13);
		} else {
			largeMap.setZoomLevel(13);
		}

		// 지도가 여러개일 경우, addMarker 후 레이어 팝업 띄우면 지도와 마커게 보이지 않는 현상 발생. -> 레이어 팝업 띄운 후에 지도와 마커를 다시 불러와야 함.
		largeMap.reloadMarker();
		largeMap.redrawMap();

	} else if (optn == 'detail_view') {
		//$('#pop-store').addClass('open');
		//location.href = '#pop-store';
		UI.layerPopUp({selId:'#pop-store'});
	}
}

function closeLayer() {
 	$('html, body').css('overflow-y', '');
	$('#popup_promotion').removeClass('open');
};

//지도 초기화
function initMaps(param_gmapx, param_gmapy) {
	var mapOptions = {
		startx : param_gmapy, // 지도 시작좌표X (경도)
		starty : param_gmapx, // 지도 시작좌표Y (위도)
		startlevel : 14	// 지도 축척 시작 레벨
	};

	// 메인 지도  (전체 매장)
	map = new gcen.api.maps.Map(document.getElementById("map_canvas"), "../dmap.gcen.co.kr/donline/tile.html", mapOptions);
	map.setActionControl("markerclick"); // 지도 제어를 마커클릭을 바꿈
	//map.levelBarShow(); // 레벨바 보여주기 -> 레벨바를 생성하면 id로 이벤트가 동작하게 되어있어서 3개의 맵에 대해서 적용이 불가능함

	// 확대보기 지도 (전체 매장)
	largeMap = new gcen.api.maps.Map(document.getElementById("map_large_canvas"), "../dmap.gcen.co.kr/donline/tile.html", mapOptions);
	largeMap.setActionControl("markerclick"); // 지도 제어를 마커클릭을 바꿈
	//largeMap.levelBarShow();

	// 상세보기 지도 (매장 1개에 대한 지도 표시)
	detailMap = new gcen.api.maps.Map(document.getElementById("map_detail_canvas"), "../dmap.gcen.co.kr/donline/tile.html", mapOptions);
	detailMap.setActionControl("markerclick"); // 지도 제어를 마커클릭을 바꿈
	//detailMap.levelBarShow();
}


//특별할인 진행 매장 찾기.
function schAllPrmt() {
	$('#region_code_1, #region_code_2, #branch_name').val('');
	$('#schPrmt').addClass('active');	// 특별 프로모션

	var paramArr = [];
	paramArr[0] = 'pageNo=1';
	paramArr[1] = 'schAllPrmt=Y';
	appendBranch(paramArr);
}

// 특별 프로모션 on/off 버튼 토글 및 검색
function toggleSpclPrmtn_address() {
	
	if(!$("#switch").is(":checked")) {
		
		var paramArr = [];
		paramArr[0] = 'pageNo=1';
		paramArr[1] = 'region_code_2=0101';
		
		// 서울 중구를 디폴트 목록으로 노출
		appendBranch(paramArr);
		
	} else {
		schAllPrmt();
	}	
}


//특별 프로모션 on/off 버튼 토글 및 검색
function toggleSpclPrmtn_name() {
	
	if(!$("#switch2").is(":checked")) {
		var paramArr = [];
		paramArr[0] = 'pageNo=1';
		paramArr[1] = 'region_code_2=0101';

		// 서울 중구를 디폴트 목록으로 노출
		appendBranch(paramArr);
		
	} else {
		schAllPrmt();
	}	
}


//지도 객체에 마커 위치 설정하기.
//@param mapObj			마커 추가할 지도 객체
//@param branchObj		매장 상세 정보
//@param detailBtnYn	상세보기 버튼 노출 유무
function addMarker(mapObj, branchObj, detailBtnYn) {
	var onSale = branchObj.wrapp_sales;
	var offSale = (!!!branchObj.off_wrapp_sale) ? onSale : branchObj.off_wrapp_sale;

	// 마커 정보창 설정
	var infoDiv = '<div class="spot-detail" data-gmapx="'+branchObj.gmapx+'" data-gmapy="'+branchObj.gmapy+'" style="display: none;">';
	infoDiv += '<strong>' + branchObj.branch_name + '</strong>'
			+'	<p>'
			+'		온라인 방문포장 '+ onSale +'%</br>'
			+'		오프라인 방문포장 '+ offSale +'%'
			+'</p>';
	if (detailBtnYn) {
		infoDiv += '<a href="javascript:openDetailPop(\'' + branchObj.branch_code + '\');" class="btn">상세보기</a>'
	}
	infoDiv += '</div>';

	// 마커 클릭 이벤트 등록
	var branchMarker = new gcen.api.maps.Marker(branchObj.gmapy, branchObj.gmapx, markerImg, 40, 52); // 마커생성
	$(branchMarker.markerbox).append(infoDiv);
	branchMarker.attach('click', function() {
		var markerboxObj = this.markerbox;
		if ($(markerboxObj).find('.spot-detail').is(":visible")) {
			// 다시 핀 선택 시, 정보창 닫음
			$(markerboxObj).find('.spot-detail').hide();
		} else {
			// 핀 선택 시, 다른 매장 정보 창 닫고 해당 핀에 대한 정보창 노출
			$(markerboxObj).parent().find('.spot-detail').hide();
			$(markerboxObj).find('.spot-detail').show();
		}
	});

	mapObj.addMarker(branchMarker); // 메인 지도에 마커 추가
}

//모든 매장 지도 표시
function markAllBranchs() {
	largeMap.clearMarkers();

	$.ajax({
		url: '/branch/allListAjax',
		type: 'get',
		dataType: 'json',
		async: false,
		success: function(data) {
			$.each(jQuery.parseJSON(data.resultData.positionListStr), function(index, branch) {
				addMarker(largeMap, branch, true);	// 확대 보기 지도에 마커 추가
			});
		}
	});
}



//매장 찾기
//@param optn	주소로 검색(address), 매장명 검색(name) 구분 값
function findBranch(optn) {
	if (!!!optn) return false;
	
	// 검색 시 페이지 번호 초기화
	pageNo = 1;

	// 검색 파라미터 설정
	var paramArr = [];
	paramArr[0] = 'pageNo=' + pageNo;

	if (optn == 'address') {
				
		if ($('#region_code_1').val() == '') {
			alert('시/도를 선택해주세요.');
			return false;
		} else if ($('#region_code_2').val() == '') {
			alert('구/군을 선택해주세요.');
			return false;
		}

		if($("#switch").is(":checked")) {
			sessionStorage.setItem("region_code_2", $('#region_code_2').val());
			alert("특별 할인 진행 매장 검색이 종료됩니다");
			$("#switch").trigger("click");
			
			$('#region_code_2').val(sessionStorage.getItem("region_code_2"));
		}
		
		paramArr[1] = 'region_code_2=' + $('#region_code_2').val();
		
	} else if (optn == 'name') {
		if($("#switch2").is(":checked")) {
			alert("특별 할인 진행 매장 검색이 종료됩니다");
			$("#switch2").trigger("click");
		}
		
		if ($('#branch_name').val().length == 0) {
			alert('매장명을 입력해주세요.');
			return false;
		}

		paramArr[1] = 'branch_name=' + encodeURIComponent(encodeURIComponent($('#branch_name').val()));
	} else {
		return false;
	}
	
	appendBranch(paramArr);

	return true;
}


//상세 보기 레이어 팝업 열기
function openDetailPop(barnch_code) {
	
	if(barnch_code == "86511"){
		alert("제주시청점이 제주이도점으로 매장명 변경 및 매장 이전을 하였사오니, 신규주소를 참고하여 주시기 바랍니다.");
	}
	
	if(barnch_code == "86638"){
		alert("고양점은 고양동 중부대학교 인근에 위치 하였사오니, 매장 지도를 참고하여 주시기 바랍니다.");
	}
	
	
	$.ajax({
		url: '/branch/detail',
		data: { branch_code : barnch_code},
		type: 'get',
		dataType: 'json',
		success: function(data) {
			if (data.status == 'success') {
				var contentsList = data.resultData.contents;
				var branch = data.resultData.detail[0];


				var address = '';
				if (branch.road_addr_ba != null) {
					address = branch.road_addr_ba + ((!!branch.road_addr_de) ? ' ' + branch.road_addr_de : '');
				} else if (branch.addr_ba != null) {
					address = branch.addr_ba + ((!!branch.addr_de) ? ' ' + branch.addr_de : '');
				}

				var businessHours = '';
				if (branch.branch_code == '86614') {// 강원 평창군 알펜시아점
					businessHours = '평일 11:00~21:00 / 주말 11:00~22:00';
				} 
				else if (branch.branch_code == '86619'){ // 수원삼성점
					businessHours = branch.trade_start + ' ~ ' + branch.trade_end+' (토,일요일 휴무)';
				} else {
					businessHours = branch.trade_start + ' ~ ' + branch.trade_end;
				}
				var onSale = branch.wrapp_sales,
				offSale = (!!!branch.off_wrapp_sale) ? onSale : branch.off_wrapp_sale;
				var photosHtml = '',
					photoUrl;
				if (!!branch.branchphoto1) {
					photoUrl = 'https://cdn.dominos.co.kr/admin/upload/store/' + branch.branchphoto1;
					photosHtml += '<div><img src="'+ photoUrl +'" alt=""></div>';
				}
				if (!!branch.branchphoto2) {
					photoUrl = 'https://cdn.dominos.co.kr/admin/upload/store/' + branch.branchphoto2;
					photosHtml += '<div><img src="'+ photoUrl +'" alt=""></div>';
				}

				if (branch.lsm != "") {
					var saleInfoArr = (branch.lsm).split('^');
					var saleInfoStr = '';
					for (var i=0; i<saleInfoArr.length ; i++) {
						if (i > 0) saleInfoStr += '<br />';
						saleInfoStr += saleInfoArr[i];
					}

					$('#detail_sale_info').html(saleInfoStr);
					$('#detail_sale_info').parent().show();
				} else {
					$('#detail_sale_info').parent().hide();
					$('#detail_sale_info').html('');
				}
				
				
				$('#detail_photos').html(photosHtml);
				$('#detail_off_sale').html("오프라인 방문포장 "+offSale+"%");
				$('#detail_on_sale').html("온라인 방문포장 "+onSale+"%");
				$('#detail_name').text(branch.branch_name);
				$("#detail_basket_wrapp").attr('href', 'javascript:setBranch("'+branch.branch_code+'")');


				$('#detail_tel').text(branch.tel);
				$('#detail_address').text(address);
				$('#detail_business_hours').text(businessHours);
				if (!!branch.locinfo) {
					$('#detail_location_info').html(branch.locinfo);
				}else{
					$('#detail_location_info').html("");
				}
				if (!!branch.parking) {
					$('#detail_parking_info').html(branch.parking);
				}else{
					$('#detail_parking_info').html("");
				}
				
				if (!!branch.etc) {
					$('#detail_etc').html(branch.etc);
				}else{
					$('#detail_etc').html("");
				}

				// notice&event 영역
				var contentsHtml = '';
				$.each(contentsList, function (index, contents) {
					if (index > 0) {
						contentsHtml += ' ';
					}
					contentsHtml += contents.contents;
				});

				$('#detail_notice').text(contentsHtml);
				if (contentsHtml == '') {
					$('#detail_notice').parent().hide();
				} else {
					$('#detail_notice').parent().show();
				}

				// 레이어 팝업 열기
				if(branch.branch_code == "86508"){
					alert('"청담점 + 삼성점 합병운영 안내"\n2017.08.21(월)부터 기존 도미노피자 청담점 포장고객 도미노피자 삼성점으로 이용 부탁드립니다.');
					location.href = "main.html";
				}else{
					openLayerPopup('detail_view');

					detailMap.clearMarkers();
					addMarker(detailMap, branch, false);	// 지도에 마커 추가
					detailMap.setCenter(branch.gmapy, branch.gmapx, 14);
				}
			}
		},
		error: function() {
			// alert('처리도중 오류가 발생했습니다.');
		}
	});
}

//매장 정보 조회 후 html 그리기
//@param	paramArr	 검색을 위한 파라미터(필수)
function appendBranch(paramArr) {
	
	if (paramArr == null || paramArr.length == 0) return;

	//if($('#schPrmt').hasClass('active'))
	//	paramArr[paramArr.length] = 'schPrmt=Y';

	$.ajax({
		url: '/branch/listAjax',
		data: paramArr.join('&'),
		type: 'get',
		dataType: 'json',
		async: false,
		success: function(data) {
			if (data.status == 'success') {
				var branchList = data.resultData.branchList,
					totalCount = data.resultData.totalCount,
					htmlStr = '';
				
				if (pageNo == 1) {
					// 전체 목록 개수
					$('#em_total_count').text(totalCount);

					// redraw marker
					map.clearMarkers();
				}

				if (totalCount == 0) {
					$('#div_has_result').hide();
					$('#div_no_result').show(); // 매장검색 결과가 존재하지 않습니다.
				} else {
					$('#div_no_result').hide();
					$('#div_has_result').show();
					
					$.each(branchList, function(index, branch) {

						// 지도에 마커 표시.
						addMarker(map, branch, true);

						// 매장 목록 html
						var address = '';
						if (branch.road_addr_ba != null) {
							address = branch.road_addr_ba + ((!!branch.road_addr_de) ? ' ' + branch.road_addr_de : '');
						} else if (branch.addr_ba != null) {
							address = branch.addr_ba + ((!!branch.addr_de) ? ' ' + branch.addr_de : '');
						}

						var onSale = branch.wrapp_sales,
							offSale = (!!!branch.off_wrapp_sale) ? onSale : branch.off_wrapp_sale;

						htmlStr += '<li>';
						htmlStr += '	<dl>';
						htmlStr += 		'<dt>'+ branch.branch_name +'<span class="tel" href="tel:'+ branch.tel +'">'+branch.tel+'</span></dt>';
						htmlStr += 		'<dd class="address">'+ address +'</dd>';
						
						if (branch.lsm != null && branch.lsm.length > 0) {
							var lsmArr = branch.lsm.split('^'),
								lsmStr = '';

							for (var i=0; i<lsmArr.length ; i++) {
								if (i > 0) lsmStr += '<br />';
								lsmStr += lsmArr[i];
							}
							htmlStr += 	'<dd class="hash">';
							htmlStr += 		'<span>'+ lsmStr +'</span>';
							htmlStr += 	'</dd>';
						}
						if(branch.lsm_flag == 'Y' && branch.lsm_free != null){
							var lsmFree = branch.lsm_free;
							htmlStr += '		<dd class="hash">';
							htmlStr += '			<span>';
							htmlStr += lsmFree;
							htmlStr += '			</span>';
							htmlStr += '		</dd>';
						}

						htmlStr += '	</dl>';
						htmlStr += '	<div class="promotion">';
						htmlStr += '		<div class="type"><span>온라인<br>방문포장<br>'+onSale+'%</span></div>';
						htmlStr += '		<div class="type2"><span>오프라인<br>방문포장<br>'+offSale+'%</span></div>';
						htmlStr += '	</div>';
						htmlStr += '	<div class="btn-wrap">';
						htmlStr += '		<a href="#none" onclick="openDetailPop('+ branch.branch_code +');" >상세보기</a>';						
						//htmlStr += '		<a href="javascript:goBasketWrapp('+branch.branch_code+');" class="type2">방문포장</a>';
						htmlStr += '		<a href="javascript:setBranch('+branch.branch_code+');" class="type2">방문포장</a>';
						htmlStr += '	</div>';

						htmlStr += '	</li>';
					});
				}

				if (pageNo == 1) {
					$('#ul_shop_list').html(htmlStr);

					if (totalCount > 0) {
						// 검색 결과 첫번째 매장을 지도에 표시
						map.setCenter(branchList[0].gmapy, branchList[0].gmapx, 13);
					}
				} else {
					$('#ul_shop_list').append(htmlStr);
				}

				var navi = data.resultData.navi;
				if (navi.pageNo < navi.lastPageNo && navi.lastPageNo > 1) { // ajax 더보기 기능
					document.getElementById('ul_shop_list').onscroll = function() {
						if ($(this)[0].scrollHeight - $(this)[0].scrollTop == $(this).outerHeight()) {
							var pageNoIndex = paramArr.indexOf('pageNo=' + pageNo);
							if (pageNoIndex > -1) {
								++pageNo;
								paramArr[pageNoIndex] = 'pageNo=' + pageNo;
							}

							appendBranch(paramArr);
						}
					};
				} else if (navi.pageNo != 1) { // 페이징 기능 멈춤.
					document.getElementById('ul_shop_list').onscroll = null;
				}
			}

		},
		error: function(a, b, c) {
			// console.log(a);
			// console.log(b);
			// console.log(c);
		}
	});
}

function goBasketWrapp(branch_code) {
	
	if(branch_code == "86511"){
		alert("제주시청점이 제주이도점으로 매장명 변경 및 매장 이전을 하였사오니, 신규주소를 참고하여 주시기 바랍니다.");
	}
	
	if(branch_code == "86638"){
		alert("고양점은 고양동 중부대학교 인근에 위치 하였사오니, 매장 지도를 참고하여 주시기 바랍니다.");
	}
	

	if(branch_code == '86508'){
		alert('"청담점 + 삼성점 합병운영 안내"\n2017.08.21(월)부터 기존 도미노피자 청담점 포장고객 도미노피자 삼성점으로 이용 부탁드립니다.');
		location.href = "main.html";
	}else{
		
			if(!confirm("로그인이 필요한 서비스입니다.\n로그인 하시겠습니까?")) {
				return;
			}
		
		location.href = "/delivery/branchWrappProc?branch_code="+branch_code;
	}
}

var setBranch = function(branch_code) {
	var action_code = "";
	
	
			location.href = "/global/login?returnUrl="+encodeURIComponent("/gpsDelivery/procAjax?order_gubun=W&branch_code="+branch_code+"&seek_gbn=3&action_code=preSelectOG");
		
};

function selectOG(order_gubun, branch_code) {
	
	var param = {
		action_code : 'selectOG',
		order_gubun : order_gubun,
		gift_yn : 'N',
		branch_code : branch_code
	};
	basketActionProc(param);
};

function basketActionProc(param) {
	if(ajaxRequest != null) {
		alert("처리중인 작업이 있습니다. 잠시후에 다시 시도해 주세요.");
		return;
	}
	$.ajax({
		type: "POST",
		url : '/basket/basketAction',
		data : param,
		success:function(data) {
			if(data.status != "success") {
				alert(data.msg);
				return;
			}
			if(param.action_code == "selectOG") {
				location.href="/basket/branch?branch_code="+param.branch_code;
			}else{
				if(data.code == "01") { // 임시로 담은 제품이 있는 경우
					if(data.msg != "success") {
						alert(data.msg);
						goLink("", "");
					} else if(param.action_code == "selectAD"){
						goLink('M080000', '/basket/detail');
					} else if(param.type !== undefined) {
						goLink('M080000', param.type+jQuery.param(param));
					}
				}else{
					if("" != ""){
						goLink("", "");
					}else {
						goLink('M080000', param.type+jQuery.param(param));
					}
				}
			}
		},
		error: function (error){
			alert("처리도중 오류가 발생하였습니다. 다시 시도해주세요.");
		},
		beforeSend: function() {
			ajaxRequest = "Y";
	    },
	    complete: function() {
	    	ajaxRequest = null;
	    }
	});
}

</script>
<script type="text/javascript">
	_TRK_PI = "WP_14";	
	_TRK_CP = "매장검색";
</script>

<!-- container -->
<div id="container">
	<section id="content">
		<div class="sub-type store">
			<div class="inner-box">
				<div class="page-title-wrap">
					<h2 class="page-title">매장검색</h2>
					<div class="depth-area">
						<ol>
							<li><a href="Main.do">홈</a></li>
							<li><strong>매장검색</strong></li>
						</ol>
					</div>
				</div>
				<div class="store-wrap">
					<div class="btn-wrap">
						<a href="#" class="btn-type v4"
							onclick="openLayerPopup('detail_map'); return false;">전체매장
							보기</a>
					</div>
					<div class="store-map-area">
						<div class="store-map-wrap">
							<div class="store-map" id="map_canvas"></div>
						</div>
						<div class="store-search">
							<div class="tab-type5 js_tab">
								<ul>
									<li class="active"><a href="#storeSrch1"
										onclick="navTabs('address', this); return false;">지역 검색</a></li>
									<li><a href="#storeSrch2"
										onclick="navTabs('name', this); return false;">매장명</a></li>
								</ul>
							</div>
							<!-- 지역 검색 -->
							<div class="tab-content active" id="storeSrch1">
								<div class="address-set-wrap store">
									<div class="form-group srch-type">
										<form id="branchfrm" name="branchfrm" action="./StoreSearchAction.st" method="post">
										<div class="form-item">
											<div class="select-type type2">
												<select id="region_code_1" onchange="getRegionSubList();" >
													<option value="">시/도</option>
													<option value="서울"
															 selected >서울</option>
													<option value="인천"
															>인천</option>
													<option value="경기"
															>경기</option>
													<option value="강원"
															>강원</option>
													<option value="충남"
															>충남</option>
													<option value="충북"
															>충북</option>
													<option value="대전"
															>대전</option>
													<option value="경남"
															>경남</option>
													<option value="경북"
															>경북</option>
													<option value="대구"
															>대구</option>
													<option value="전남"
															>전남</option>
													<option value="전북"
															>전북</option>
													<option value="광주"
															>광주</option>
													<option value="울산"
															>울산</option>
													<option value="부산"
															>부산</option>
													<option value="제주"
															>제주</option>
													<option value="세종특별자치시"
															>세종특별자치시</option>
													</select>
											</div>
										</div>
										<div class="form-item" style="float: left;">
											<div class="select-type type2">
												<select id="region_code_2">
													<option value="">구/군</option>
													<option value="강남구"
															>강남구</option>
													<option value="강동구"
															>강동구</option>
													<option value="강북구"
															>강북구</option>
													<option value="강서구"
															>강서구</option>
													<option value="관약구"
															>관악구</option>
													<option value="광진구"
															>광진구</option>
													<option value="구로구"
															>구로구</option>
													<option value="금천구"
															>금천구</option>
													<option value="노원구"
															>노원구</option>
													<option value="도봉구"
															>도봉구</option>
													<option value="동대문구"
															>동대문구</option>
													<option value="동작구"
															>동작구</option>
													<option value="마포구"
															>마포구</option>
													<option value="서대문구"
															>서대문구</option>
													<option value="서초구"
															>서초구</option>
													<option value="성동구"
															>성동구</option>
													<option value="성북구"
															>성북구</option>
													<option value="송파구"
															>송파구</option>
													<option value="양천구"
															>양천구</option>
													<option value="영등포구"
															>영등포구</option>
													<option value="용산구"
															>용산구</option>
													<option value="은평구"
															>은평구</option>
													<option value="종로구"
															>종로구</option>
													<option value="중구"
															 selected >중구</option>
													<option value="중랑구"
															>중랑구</option>
													</select>
											</div>
										</div>
										<div class="form-item" style="float: left;">
											<button type="button" class="btn-search"
												onclick="findBranch('address'); return false;">검색</button>
										</div>
									</div>
									<!-- <div class="text-link-area">
										<a href="#" onclick="schAllPrmt(); return false;">
											<span>특별할인 진행 매장</span>
										</a>
									</div>
									<p class="notice-text">
										<a href="javascript:openLayerPopup('promotion');" >이용안내</a>
									</p> -->

									<div class="srch-option">
										<div class="switch-btn" onclick="toggleSpclPrmtn_address();">
											<label class="switch">
												<input type="checkbox" id="switch">
												<a class="slider" id="schPrmt">
													<span class="off">OFF</span>
													<span class="on">ON</span>
												</a>
											</label>
											<p>특별할인 진행 전체 매장</p>
										</div>
										<p class="notice-text">
											<a href="javascript:openLayerPopup('promotion');">이용안내</a>
										</p>
									</div>

								</div>
							</div>
							<!-- //지역 검색 -->

							<!-- 매장명 -->
							<div class="tab-content" id="storeSrch2">
								<div class="address-set-wrap store">
									<div class="form-group srch-type">
										<div class="form-item">
											<input type="text" id="branch_name" placeholder="매장명을 검색하세요.">
										</div>
										<div class="form-item">
											<button type="button" class="btn-search"
												onclick="findBranch('name'); return false;">검색</button>
										</div>
									</div>

									<div class="srch-option">
										<div class="switch-btn"  onclick="toggleSpclPrmtn_name();">
											<label class="switch">
												<input type="checkbox" id="switch2">
												<a class="slider" id="schPrmt">
													<span class="off">OFF</span>
													<span class="on">ON</span>
												</a>
											</label>
											<p>특별할인 진행 전체 매장</p>
										</div>
										<p class="notice-text">
											<a href="javascript:openLayerPopup('promotion');">이용안내</a>
										</p>
									</div>

								</div>
							</div>
							<!-- //매장명 -->
							<div class="store-address-list">
								<ul id="ul_shop_list"></ul>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- 전체 매장 보기 -->
	<div class="pop-layer pop-full" id="pop-store-all">
		<div class="dim"></div>
		<div class="pop-wrap">
			<div class="pop-title-wrap type2">
				<h2 class="pop-title"
					onclick="openLayerPopup('detail_map'); return false;">전체 매장 보기</h2>
			</div>
			<div class="pop-content">
				<div class="store-map-area" id="map_large_canvas">
					<!-- MAP 영역 -->

				</div>
			</div>
			<a href="#" class="btn-close"></a>
		</div>
	</div>
	<!--//전체 매장 보기 -->
	<!-- 이용안내 보기 -->
	<div class="pop-layer" id="pop-store-info"></div>
	<!--//이용안내 보기 -->
	<!-- 매장상세 -->
	<div class="pop-layer pop-full" id="pop-store">
		<div class="dim"></div>
		<div class="pop-wrap">
			<div class="pop-title-wrap">
				<h2 class="pop-title">매장 상세정보</h2>
			</div>
			<div class="pop-content">
				<div class="store-view">
					<div class="store-info-box">
						<ul>
							<li>
								<h3 id="detail_name">김포구래점</h3>
								<p class="promotion">
									<span class="type" id="detail_on_sale">온라인 방문포장 30%</span><span
										class="type2" id="detail_off_sale">오프라인 방문포장 30%</span>
								</p>
								<div class="btn-wrap">
									<a href="#" class="btn-type v3" id="detail_basket_wrapp">포장주문</a>
								</div>
							</li>
							<li>
								<dl>
									<dt>전화번호</dt>
									<dd id="detail_tel">091-996-30525</dd>
								</dl>
								<dl>
									<dt>주소</dt>
									<dd id="detail_address">경기도 김포시 김포한강9로 12번길 97-10</dd>
								</dl>
								<dl>
									<dt>영업시간</dt>
									<dd id="detail_business_hours">11:00 ~ 22:00</dd>
								</dl>
								<dl>
									<dt>위치정보</dt>
									<dd id="detail_location_info">나비마을 나비초등학교 사거리 계롱리슈빌 203동
										후문</dd>
								</dl>
								<dl>
									<dt>주차정보</dt>
									<dd id="detail_parking_info">매장 후면 1대</dd>
								</dl>
								<dl>
									<dt>
										Notice &amp;<br>Event
									</dt>
									<dd id="detail_notice"></dd>
								</dl>
								<dl>
									<dt>특이사항</dt>
									<dd id="detail_etc">-</dd>
								</dl>
							</li>
						</ul>
					</div>
					<div class="store-map-area" id="map_detail_canvas">
						<!-- MAP 영역 -->
						<div class="store-spot" style="right: 20%; top: 50%;"></div>
					</div>
					<div class="store-slider" id="detail_photos"></div>
				</div>
			</div>
			<a href="#" class="btn-close"></a>
		</div>
	</div>
</div>
<!-- //매장 상세보기 팝업(e) -->
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
					<li><a href="contents/law.html">이용약관</a></li>
					<li class="on"><a href="contents/privacy.html">개인정보처리방침</a></li>
					<li><a href="bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a></li>
					<li><a href="company/jobListe3b0.html?type=R">인재채용</a></li>
					<li><a href="company/contents/chainstore1.html">가맹점모집</a></li>
					<li><a href="order/groupOrder.html">단체주문</a></li>
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
						<img src="../cdn.dominos.co.kr/domino/pc/images/list_awards.png" alt="">
						<p>식품안전<br>경영시스템 인증</p>
					</li>
					<li>
						<img src="../cdn.dominos.co.kr/domino/pc/images/list_awards2.png" alt="">
						<p>지식경제부<br>우수디자인 선정</p>
					</li>
					<li>
						<img src="../cdn.dominos.co.kr/domino/pc/images/list_awards3.png" alt="">
						<p>고객이 가장 추천하는 기업<br>피자전문점 부문 7년 연속 1위</p>
					</li>
					<li>
						<img src="../cdn.dominos.co.kr/domino/pc/images/list_awards4.png" alt="">
						<p>2019년 한국산업 고객만족도<br>피자전문점 부문 5년 연속 1위</p>
					</li>
					<li>
						<img src="../cdn.dominos.co.kr/domino/pc/images/list_awards5.png" alt="">
						<p>2020 프리미엄브랜드지수<br>피자전문점 부문 5년 연속 1위 수상</p>
					</li>
					<li>
						<img src="../cdn.dominos.co.kr/domino/pc/images/list_awards6.png" alt="">
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
  })(window,document,'script','../www.google-analytics.com/analytics.js','ga');
  
  ga('create', 'UA-40278626-1', 'auto', {'allowLinker': true});
  ga('require', 'linker');
  ga('linker:autoLink', ['cdn.dominos.co.kr'] );
  ga('send', 'pageview');

</script>
<!-- LOGGER(TM) TRACKING SCRIPT V.40 FOR logger.co.kr / 21550 : COMBINE TYPE / DO NOT ALTER THIS SCRIPT. -->
	<script type="text/javascript">var _TRK_LID="21550";var _L_TD="ssl.logger.co.kr";var _TRK_CDMN=".dominos.co.kr";</script>
	<script type="text/javascript">var _CDN_DOMAIN = location.protocol == "https:" ? "https://fs.bizspring.net" : "http://fs.bizspring.net";
	(function(b,s){var f=b.getElementsByTagName(s)[0],j=b.createElement(s);j.async=true;j.src='../fs.bizspring.net/fs4/bstrk.1.js';f.parentNode.insertBefore(j,f);})(document,'script');</script>
	<noscript><img alt="Logger Script" width="1" height="1" src="http://ssl.logger.co.kr/tracker.tsp?u=21550&amp;js=N" /></noscript>
	<!-- END OF LOGGER TRACKING SCRIPT -->
	
	<!-- BS CTS TRACKING SCRIPT V.20 / 15484 : CTS / DO NOT ALTER THIS SCRIPT. -->
	<!-- COPYRIGHT (C) 2002-2020 BIZSPRING INC. L4AD ALL RIGHTS RESERVED. -->
	<script type="text/javascript">
	(function(b,s,t,c,k){b[k]=s;b[s]=b[s]||function(){(b[s].q=b[s].q||[]).push(arguments)};  var f=t.getElementsByTagName(c)[0],j=t.createElement(c);j.async=true;j.src='../fs.bizspring.net/fs4/l4cts.v4.2.js';f.parentNode.insertBefore(j,f);})(window,'_tcts_m',document,'script','BSAnalyticsObj');
	_tcts_m('15484','BCTS');
	</script>
	<!-- END OF BS CTS TRACKING SCRIPT -->
	
	<!-- Naver Anlytics 공통-->
	<script type="text/javascript" src="../wcs.naver.net/wcslog.js"> </script>
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
	'../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f);
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

<!-- Mirrored from web.dominos.co.kr/branch by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Sep 2020 11:22:52 GMT -->
</html>
