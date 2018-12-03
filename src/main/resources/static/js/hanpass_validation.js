/**
  * 영문만 허용
  * 
  * @return boolean
  */
function regExpEn(str, minLen, maxLen) {
	try {
		var pattern = "^[A-Za-z+]{" + minLen + "," +  maxLen + "}$";
		var regExp = new RegExp(pattern, "i");
		return regExp.test(str);
	} catch (e) {
		alert("[ regExpEn(str, minLen, maxLen) ] " + e.message);
	}
}

/**
 * 한글만 허용
 * 
 * @return boolean
 */
function regExpKr(str, minLen, maxLen) {
	try {
		var pattern = "^[가-힣+]{" + minLen + "," +  maxLen + "}$";
		var regExp = new RegExp(pattern, "i");
		return regExp.test(str);
	} catch (e) {
		alert("[ regExpEn(str, minLen, maxLen) ] " + e.message);
	}
}

/**
 * 숫자만 허용
 * 
 * @return boolean
 */
function regExpNum(str, minLen, maxLen) {
	try {
		var pattern = "^[0-9+]{" + minLen + "," +  maxLen + "}$";
		var regExp = new RegExp(pattern, "i");
		return regExp.test(str);
	} catch (e) {
		alert("[ regExpEn(str, minLen, maxLen) ] " + e.message);
	}
}

/**
 * 영문, 한글만 허용
 * 
 * @return boolean
 */
function regExpEnKr(str, minLen, maxLen) {
	try {
		var pattern = "^[A-Za-z가-힣+]{" + minLen + "," +  maxLen + "}$";
		var regExp = new RegExp(pattern, "i");
		return regExp.test(str);
	} catch (e) {
		alert("[ regExpEn(str, minLen, maxLen) ] " + e.message);
	}
}

/**
 * 영문, 숫자만 허용
 * 
 * @return boolean
 */
function regExpEnNum(str, minLen, maxLen) {
	try {
		var pattern = "^[A-Za-z0-9+]{" + minLen + "," +  maxLen + "}$";
		var regExp = new RegExp(pattern, "i");
		return regExp.test(str);
	} catch (e) {
		alert("[ regExpEn(str, minLen, maxLen) ] " + e.message);
	}
}

/**
 * 영문, 한글, 숫자만 허용
 * 
 * @return boolean
 */
function regExpEnKrNum(str, minLen, maxLen) {
	try {
		var pattern = "^[A-Za-z0-9가-힣+]{" + minLen + "," +  maxLen + "}$";
		var regExp = new RegExp(pattern, "i");
		return regExp.test(str);
	} catch (e) {
		alert("[ regExpEn(str, minLen, maxLen) ] " + e.message);
	}
}

/**
 * 사람이름(영문, 한글, 띄어씌기, single quote만 허용)
 * 
 * @return boolean
 */
function regExpEnPersonName(str, minLen, maxLen) {
	try {
		var pattern = "^[A-Za-z가-힣'\\s+]{" + minLen + "," +  maxLen + "}$";
		var regExp = new RegExp(pattern, "i");
		return regExp.test(str);
	} catch (e) {
		alert("[ regExpEnPersonName(str, minLen, maxLen) ] " + e.message);
	}
}

/**
 * 이메일
 * 
 * @return boolean
 */
function regExpEmail(str) {
	try {
		var pattern = "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$";
		var regExp = new RegExp(pattern, "i");
		return regExp.test(str);
	} catch (e) {
		alert("[ regExpEnPersonName(str, minLen, maxLen) ] " + e.message);
	}
}

/**
 * 아이디
 * 
 * @return boolean
 */
function regExpId(str, minLen, maxLen) {
	try {
		var pattern = "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z]){" + minLen + "," +  maxLen + "}$";
		var regExp = new RegExp(pattern, "i");
		return regExp.test(str);
	} catch (e) {
		alert("[ regExpEnPersonName(str, minLen, maxLen) ] " + e.message);
	}
}

/**
 * 비밀번호
 * 
 * @return boolean
 */
function regExpPassword(str, minLen, maxLen) {
	try {
		var pattern = "^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{" + minLen + "," + maxLen + "}$";
		var regExp = new RegExp(pattern, "i");
		return regExp.test(str);
	} catch (e) {
		alert("[ regExpEnPersonName(str, minLen, maxLen) ] " + e.message);
	}
}