/*
 * �ܺΰ��������� KG������� Mcash�� �����ϱ� ���� include �� javascript ����
 */
var PG_URL = "";
var MCASH_MAIN_URL = "https://auth.mobilians.co.kr/goCashMain.mcash";
var M_PG_URL = "";


var PAY_WIN;

function MCASH_PAYMENT(mcashForm){

	// ��ǥĳ������ �ִ°�� �켱���� 	
	if( mcashForm.CASH_GB.value != "" ){		
		try {
			if( eval("mcashForm." + mcashForm.CASH_GB.value + "_SVCID.value") == "" )
				mcashForm.CASH_GB.value = "";			
		} catch (exception){
			mcashForm.CASH_GB.value = "";
		}			
	} 
	
	if( mcashForm.CASH_GB.value == "" ){	
		mcashForm.CASH_GB.value = "CI";
	}
	
	var mobile_flag = false;	
    if(window.navigator.userAgent.indexOf("Mobile") >= 0 ||
       window.navigator.userAgent.indexOf("Phone") >= 0 ||
       window.navigator.userAgent.indexOf("Opera") >= 0 ||
       window.navigator.userAgent.indexOf("Safari") >= 0) mobile_flag = true;
    
    var UserAgent = navigator.userAgent;
    if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null 
   		|| UserAgent.match(/LG|SAMSUNG|Samsung/) != null) mobile_flag = true;
    else mobile_flag = false;
        
    //�Ǽ������ �̸� ���� URL �� ��ȯ
	if(mcashForm.PAY_MODE.value == '10' ){
		MCASH_MAIN_URL = "https://auth.mobilians.co.kr/goCashMain.mcash";
	}else{
		MCASH_MAIN_URL = "http://1.255.59.22/goCashMain.mcash";
	}
		
	mcashForm.action = MCASH_MAIN_URL;
	if(mcashForm.CALL_TYPE.value == "SELF"){
		mcashForm.target="_self"; 
	}else if(mcashForm.CALL_TYPE.value == "I"){  // 2013.01.24 �߰�
		mcashForm.target = mcashForm.IFRAME_NAME.value; 			
    }else{
    	if(mobile_flag) {		    		
    		PAY_WIN = window.open("","PAY_WIN","fullscreen=yes,toolbar=yes,menubar=yes,scrollbars=no,resizable=no");
    	}else{
   			PAY_WIN = window.open("","PAY_WIN","width=400,height=631,toolbar=no,menubar=no,scrollbars=no,resizable=yes");
    		PAY_WIN.opener = self;
    	}
		PAY_WIN.focus();
		mcashForm.target="PAY_WIN";
    }
	/*
    mcashForm.method="post";
    
    // ������ charset ������ 
    var orgCharset = document.charset;	    
    
    mcashForm.acceptCharset='euc-kr';
    // ������� charset euc-kr �̹Ƿ� ��������  	    
    document.charset = mcashForm.acceptCharset; 
    	    
    mcashForm.submit();
    
    // ������ charset ����
    document.charset = orgCharset;
    */
    try{
    	mcashForm.method="post";
    } catch(e){
    }
    
    var orgCharset = document.charset;
    
    try{
    	// ������ charset ������ 
        mcashForm.acceptCharset='euc-kr';
    	// ������� charset euc-kr �̹Ƿ� ��������
    	document.charset = mcashForm.acceptCharset;
    	mcashForm.submit();
        // ������ charset ����
        document.charset = orgCharset;
    }catch(e){
    	mcashForm.submit();
    }
}