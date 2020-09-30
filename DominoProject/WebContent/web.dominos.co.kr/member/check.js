var inId = document.getElementById("inputId");
var inPwd = document.getElementById("inputPwd");
var cPwd = document.getElementById("checkPwd");
var _split;
function _check() {
  console.log("1차수정완료");
  if (!checkName()) {
    return false;
  }
  if (!idCheck()) {
    return false;
  }
  if (!pwdCheck()) {
    return false;
  }
  if (!pwdEqual()) {
    return false;
  }
  if (!birthCheck()) {
  return false;
  }
  if (!phoneNumCheck()) {
  return false;
  }
  if (!checkEmail()) {
    return false;
  }


  var frm = document.getElementById("frm");
  frm.submit();
}

function idCheck() {
  var inId = document.getElementById("inputId");
  var idPattern = /^[A-za-z0-9]{4,16}$/g;
  if (inId.value == "") {
    alert("아이디를 입력해주세요");
    inId.value = "";
    inId.focus();
    return false;
  } else {
    if (!idPattern.test(inId.value)) {
      alert("4~16자 사이의 영어, 숫자 조합으로 생성해주세요.");
      inId.value = "";
      inId.focus();
      return false;
    }
    return true;
  }
}
function pwdCheck() {
  var inPwd = document.getElementById("inputPw");
  var pwPattern = /^[A-za-z0-9]{4,16}$/g;
  if (inPwd.value == "") {
    alert("비밀번호를 입력해주세요");
    inPwd.value = "";
    inPwd.focus();
    return false;
  } else {
    if (!pwPattern.test(inPwd.value)) {
      alert("4~16자 사이의 영어, 숫자 조합으로 생성해주세요.");
      inPwd.value = "";
      inPwd.focus();
      return false;
    }
  }
  isEqualId();
  return true;
}
function isEqualId() {
  var inPwd = document.getElementById("inputPw");
  var inId = document.getElementById("inputId");
  if (inPwd.value == inId.value) {
    alert("아이디와 비밀번호는 같을 수 없습니다.");
    inPwd.value = "";
    inPwd.focus();
    return false;
  }
  return true;
}
function pwdEqual() {
  var inPwd = document.getElementById("inputPw");
  var cPwd = document.getElementById("inputPwchk");
  if (inPwd.value != cPwd.value) {
    alert("비밀번호 확인을 다시 해주세요.");
    cPwd.value = "";
    cPwd.focus();
    return false;
  }
  return true;
}
function checkName() {
  var inName = document.getElementById("inputName").value;
  var invaidName = /([^가-힣\x20a-zA-Z])/i;
  if (inName == "") {
    alert("이름을 입력하세요.");
    inName.value = "";
    inName.focus();
    return false;
  } else {
    if (invaidName.test(inName)) {
      alert("이름은 한글/영어로만 구성되어야 합니다.");
      inName.value = "";
      inName.focus();
      return false;
    }
    return true;
  }
}
function checkEmail() {
  var email = document.getElementById("email").value;
  var re = /^[\w.%+\-]+@[\w.\-]+\.[A-Za-z]{2,3}$/;
  if (email == "") {
    alert("이메일을 입력하세요.");
    email.value = "";
    email.focus();
    return fasle;
  } else {
    if (!re.test(email)) {
      alert("이메일 형식이 잘못되었습니다");
      email.value = "";
      email.focus();
      return fasle;
    }
    return true;
  }
}
function birthCheck() {
  var year = document.getElementById("byear").value;
  var month = document.getElementById("bmonth").value;
  var day = document.getElementById("bday").value;
  
  var birthPattern = /^[0-9]{1,4}$/g;
  if (year.value == "" || month.value == "" || day.value == "") {
    alert("생일을 입력해주세요");
    return false;
  } else {
    if (year < 1800 || year > 2100 || month < 1 || month > 12 || day < 1 || day > 31) {
      alert("생일이 잘못되었습니다.");
      return false;
    }
    return true;
  }
}
function phoneNumCheck() {
  var tel1 = document.getElementById("tel1");
  var tel2 = document.getElementById("tel2");
  var tel3 = document.getElementById("tel3");
  
  var phoneNumPattern = /^[0-9]{3,4}$/g;
  if (tel1.value == "" || tel2.value == "" || tel3.value == "") {
    alert("전화번호를 입력해주세요");
    return false;
  } else {
    return true;
}
}