/**
 * 입력된 dateStr을 iso 타입으로 변환한다.
 * formatType=date : yyyy-MM-dd
 * formatType=time : HH:mm:ss
 * else : yyyy-MM-dd HH:mm:ss
 */
function convertStringToIsoDateFormat(dateStr, formatType) {
	try {
		var convertedDate = new Date(dateStr);
		
		var year = convertedDate.getFullYear();
		var month = (convertedDate.getMonth() + 1) > 9 ? (convertedDate.getMonth() + 1) : "0" + (convertedDate.getMonth() + 1);
		var date = convertedDate.getDate() > 9 ? convertedDate.getDate() : "0" + convertedDate.getDate();
		var time = convertedDate.getHours() > 9 ? convertedDate.getHours() : "0" + convertedDate.getHours();
		var minute = convertedDate.getMinutes() > 9 ? convertedDate.getMinutes() : "0" + convertedDate.getMinutes();
		var second = convertedDate.getSeconds() > 9 ? convertedDate.getSeconds() : "0" + convertedDate.getSeconds();
		
		var tempDate = year + "-" + month + "-" + date;
		var tempTime = time + ":" + minute + ":" + second;
		
		if(formatType == "date") {
			return year + "-" + month + "-" + date;
		} else if(formatType == "time") {
			return time + ":" + minute + ":" + second;
		} else {
			return year + "-" + month + "-" + date + " " + time + ":" + minute + ":" + second;
		}
	} catch(e) {
		alert("[convertStringToIsoDateFormat(date, type)]" + e.message);
	}
}