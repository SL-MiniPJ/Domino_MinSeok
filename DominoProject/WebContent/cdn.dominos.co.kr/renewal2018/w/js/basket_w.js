var ajaxBasketRequest = null;
var addCommonBasket = function(params, callback, returnUrl) {
	if(ajaxBasketRequest != null) {
		alert("ó������ �۾��� �ֽ��ϴ�. ����Ŀ� �ٽ� �õ��� �ּ���.");
		return;
	}

	var basketInitMsg = getBasketInitMsg("O");

	if(basketInitMsg == "" || confirm(basketInitMsg)){
		//alert(p_idx);
		$.ajax({
			type: "POST",
			url: "/basket/basketProc",
			data: params,
			success:function(data) {
				if(data.resultData.result != "success") {
					if (data.resultData.msg=='�ش� ���θ���� ���� 1�� �ֹ� �� 1ȸ ���� ���� �մϴ�.'&&params.p_idx=='1599'){
		        		if(confirm("�� �̺�Ʈ�� ���� �ֹ� �ÿ��� ������ �����մϴ�.\n�ֹ��������� �̵��Ͻðڽ��ϱ�?")) {
							location.href = "/goods/list?dsp_ctgr=C0101";
						} else {
							return;
						}
		        	}else{
		        		if(data.resultData.result != "needreload"){
		        			alert(data.resultData.msg);
		        		}
						
						if(data.resultData.result == "needreload"){
							location.reload();
						}
		        	}
				} else {
					//TODO ���μ������� �߰� - ���弱�� ���� ��� ��� ���� ������������ �̵�
					//alert(data.resultData.branch_code);

					if(data.resultData.branch_code == "") { // ���弱�� ���� ��� ��� ���� ������������ �̵�
                       
						if (params.order_flag == "W") {
							location.href = "/basket/branch?order_gubun=W&returnUrl="+encodeURIComponent(returnUrl);
						} else {
						    location.href = "/basket/branch?returnUrl="+encodeURIComponent(returnUrl);	
						}
						
					}else{
						var strBasketCnt = $(".btn_cart span.cart_count").text();
						var basketCnt = 0;

						if($(".btn_cart span.cart_count").text() == "") {
							basketCnt = parseInt(params.goods_count);
						} else {
							basketCnt = parseInt($(".btn_cart span.cart_count").text()) + parseInt(params.goods_count);
						}

						if(strBasketCnt == "") {
							basketCnt = parseInt(params.goods_count);
						}
						$(".btn_cart span.cart_count").text(basketCnt);

						if(jQuery.isFunction(callback))
							callback(returnUrl);
						
						if (params.order_flag != "RPZ" && params.order_flag != "SIDE") {
							$('.pop_toast').fadeIn(200, function() {
								window.setTimeout(function(){$('.pop_toast').fadeOut(200);}, 500);
							});
						}
					}
				}
			},
			error: function (error){
				alert("��ٱ��� ����.");
				location.reload();
			},
			/*beforeSend: function() {
				ajaxBasketRequest = "Y";
				$("#defaultLoading").show();
		    },*/
		    complete: function() {
		    	ajaxBasketRequest = null;
		    	$("#defaultLoading").hide();
		    }
		});
	}

};


var addBasket = function(action_code, goods_code, goods_count, toppingStr, p_idx, callback, returnUrl, order_flag) {
	var param = {
		action_code : action_code
		, goods_code : goods_code
		, goods_count : goods_count
		, toppingStr : toppingStr
		, p_idx : p_idx
		, order_flag : order_flag
	};

	addCommonBasket(param, callback, returnUrl);
};

var addBasketList = function(action_code, goods_code, goods_count, toppingStr, p_idx, callback, returnUrl, order_flag, sideStr) {
	
	var param = {
		action_code : action_code
		, goods_code : goods_code
		, goods_count : goods_count
		, toppingStr : toppingStr
		, p_idx : p_idx
		, order_flag : order_flag
		, sideStr : sideStr
	};

	addCommonBasket(param, callback, returnUrl);
};

var addBasketListAll = function(action_code, goods_code, goods_count, toppingStr, p_idx, callback, returnUrl, menuCode, order_flag, sideStr, drinkEtcStr) {
	var param = {
		action_code : action_code
		, goods_code : goods_code
		, goods_count : goods_count
		, toppingStr : toppingStr
		, p_idx : p_idx
		, order_flag : order_flag
		, sideStr : sideStr
		, drinkEtcStr : drinkEtcStr
	};
	addCommonBasket(param, callback, returnUrl, menuCode);
};

var addEcoupon = function(action_code, goods_code, goods_count, dc_input_code, dc_info2, dc_info3, toppingStr, p_idx, callback) {
	var param = {
		action_code : action_code
		, goods_code : goods_code
		, goods_count : goods_count
		, dc_input_code : dc_input_code
		, dc_info2 : dc_info2
		, dc_info3 : dc_info3
		, toppingStr : toppingStr
		, p_idx : p_idx
	};
	addCommonBasket(param, callback, "/basket/detail");
};


var addVoucherBasket = function(orderGubun, code){
	var basketInitMsg = getBasketInitMsg(orderGubun);

	if(basketInitMsg == "" || confirm(basketInitMsg)){
		var param = {
			actionCode : 'add'
			, orderGubun : orderGubun
			, code : code
			, pcnt : $("#"+code+"_qty").val()
		};
		voucherBasketProc(param);
	}
};

var changeVoucherBasket = function(orderGubun, code, sub_action){
	$(".btn-minus").click(function(e){
		return false;
	});
	
	$(".btn-plus").click(function(e){
		return false;
	});
	
	if(sub_action === 'plus'){
		var changeCnt = parseInt($("."+code+"_qty").val()) + 1;
		/*if(changeCnt > 99){
			alert('�ִ� ������ 99�� �Դϴ�.')
			return false;
		}*/
		$("."+code+"_qty").val(changeCnt);
		
	}else if (sub_action === 'minus'){
		var changeCnt = parseInt($("."+code+"_qty").val()) - 1;
		if(changeCnt === 0){
			changeCnt = 1;
		}
			
		$("."+code+"_qty").val(changeCnt);
	}
	
	var param = {
		actionCode : 'change'
		, orderGubun : orderGubun
		, code : code
		, pcnt : $("."+code+"_qty").val()
		
	};
	voucherBasketProc(param);
};

var removeVoucherBasket = function(orderGubun, code, deleteCode){
	if(confirm("�ش� ��ǰ�� ��ٱ��Ͽ��� �����Ͻðڽ��ϱ�?")){
		var param = {
			actionCode : 'change'
			, orderGubun : orderGubun
			, code : code
			, pcnt : 0
			, deleteCode : deleteCode
		};
		voucherBasketProc(param);
	}
};

var voucherBasketProc = function(param){
	if(ajaxBasketRequest != null) {
		alert("ó������ �۾��� �ֽ��ϴ�. ����Ŀ� �ٽ� �õ��� �ּ���.");
		return;
	}
	$.ajax({
		type: "POST",
		url: "/voucher/basket/basketProc",
		data: param,
		success:function(data) {
			if(data.resultData.result != "success") {
				alert(data.resultData.msg);
				location.reload();
			} else {
				if(param.actionCode == "add"){
					$(".btn-cart > strong ").addClass("cart-count");
					$(".btn-cart strong.cart_count").text(parseInt(data.resultData.goodsCnt));
					$('.pop_toast').fadeIn(200, function() {
						window.setTimeout(function(){$('.pop_toast').fadeOut(200);}, 500);
					});

				}else{
					location.reload();
				}
			}
		},
		error: function (error){
			alert("��ٱ��� ����.");
			location.reload();
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

var getBasketInitMsg = function(orderGubun){
	var msg = "";

	$.ajax({
		type: "POST",
		url: "/basket/basket_type_info",
		async: false,
		success:function(data) {
			
			//�Ķ���� ���������� ����������� ���� �ϵ� �ڵ� �Ǿ� �־�  ������ ������� �ƴҰ�쿡�� PASS �ϰ� ���� 2018.10.19
			if (orderGubun != data.resultData.basketType && data.resultData.goodsCnt > 0){
				if (orderGubun == "J"){
					msg = "������ǰ���� ��ٱ��Ͽ� �߰��Ͻ� ���, ��ٱ��� ���� �Ϲ� ��ǰ, ���θ� ����, ����� ��ǰ���� ��� �����˴ϴ�. ����Ͻðڽ��ϱ�?";
				} else if (orderGubun == "M"){
					msg = "����ϻ�ǰ���� ��ٱ��Ͽ� �߰��Ͻ� ���, ��ٱ��� ���� �Ϲ� ��ǰ, ���θ� ����, ������ǰ���� ��� �����˴ϴ�. ����Ͻðڽ��ϱ�?";
				} else if (data.resultData.basketType == "J" || data.resultData.basketType == "M") {
					msg = "��ǰ�� ��ٱ��Ͽ� �߰��Ͻ� ���, ��ٱ��� ���� ���θ� ����, ���� ��ǰ��, ����� ��ǰ���� ��� �����˴ϴ�. ����Ͻðڽ��ϱ�?";
				}
			}
		},
		error: function (error){
		}
	});

	return msg;
}

//�׺���̼� �˾� ����
var openNaviPop = function(gubun) {
	
    $("#naviLayer_pop").html("");

    $.ajax({
  	    type: "POST",
  		url: "/goods/naviLayer",
  		data: {'code_01': $("#size").val(),
  			   'gubun' : gubun},
  		success:function(data) {
  		 	$("#naviLayer_pop").html(data);
  		 	$("#naviLayer_pop").addClass("open");
  		 	var top = $(window).scrollTop();
  		 	$("#naviLayer_pop").find('.pop_wrap').css('top',top+30+'px');
  		},
  		error: function (error){
  			alert("�ٽ� �õ����ּ���.");
  		}
  	});
}

var closeNaviLayer = function(gubun) {
	
	if (gubun == "A") {
		$("#naviLayer_pop").removeClass("open");
		location.href = "/goods/list?dsp_ctgr=C0101";
	} else {
		$("#naviLayer_pop").removeClass("open");
	}
	
}