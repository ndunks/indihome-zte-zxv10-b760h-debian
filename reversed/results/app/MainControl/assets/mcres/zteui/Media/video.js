/*
播放频道或者点播内容
{\"type\":\"channel\", \"PlayCmd\":\"play\",\"ChannelNum\":4, \"TimeShift\":1}频道播放虚拟事件，timeshift表示是否支持时移，为1表示支持时移，此时快进快退，本地页面需要同步显示进度条，为0不支持时移，不显示快进快退等进度条。
{\"type\":\"vod\",\"PlayCmd\":\"play\",\"Url\":\"rtsp://172.16.90.70:554/vod/00000000020000003039.mpg?userid=10086&stbip=172.18.152.156&clienttype=1&mediaid=0000000003020000001245&ifcharge=1&time=20130702142048+08&life=172800&usersessionid=1117923&vcdnid=001&boid=001&srcboid=001&columnid=011C&backupagent=172.16.90.70:554&ctype=1&playtype=0&Drm=0&EpgId=epg_nj_001&programid=00000000020000003039&contname=&fathercont=&bp=1233&authid=11480628&tscnt=0&tstm=0&tsflow=0&ifpricereqsnd=1&nodelevel=3&usercharge=7C482E302DFADD4DE280F04AD109C95E\"}
其他播控虚拟事件格式：
{\"type\":\"channel\", \"PlayCmd\":\"pause\"}--------暂停播放
{\"type\":\"channel\", \"PlayCmd\":\"resume\"}--------恢复播放
{\"type\":\"channel\", \"PlayCmd\":\"ff\",\"speed\":4}--------快进4倍速播放
{\"type\":\"channel\", \"PlayCmd\":\"rw\"，\"speed\":4}----------快退4倍速播放
{\"type\":\"channel\", \"PlayCmd\":\"stop\"}---------停止播放
*/
var media =  new MediaPlayer();//媒体播放器
var epgSize = ztebw.ioctlRead("EPGSizeType");//获取epg制式
//epgSize = 4;
alert("===parseInt(epgSize)  " + parseInt(epgSize));
var jinduAllW = 0;//创建一个进度条的总长度
var allTime = "";//获取总时间长度
var danTime = "";//获取当前时间长度
var evtObj = "";// 用于保存解析后的虚拟事件结果
var jinduType = "";// 用于判断是绘制直播还是点播的进度条
var unmberW = 0;// 保存百分比的宽度
var fixedAllDuration = 120;// 设置直播固定时长 单位为分钟
var ULdisplay =  false;//全局变量是否显示进度条

 media.setVideoDisplayMode(1); //全屏播放
 media.refreshVideoDisplay();
/*
** 设置元素的left和top位置
*/
function setElementLeftTop(ElementId,leftpx,toppx){
	//将元素脱离文档流
	document.getElementById(ElementId).style.position = "absolute";
	//设置位置
	document.getElementById(ElementId).style.left = leftpx;
	document.getElementById(ElementId).style.top = toppx;
}
/*
	拼接时间
	h 时
	m 分
	s 秒
	时间和分种为比传  秒钟和选择不传
	return string
*/
function spliceTime(h,m,s){
    if(h <= 0){
        h = "00";
    }else if(h <= 9){
        h = "0" + h;
    }
    if(m <= 0){
        m = "00";
    }else if(m <= 9){
        m = "0" + m;
    }
    alert("arguments.length ======  " + arguments.length);
    if(s <= 0){
        s = "00";
    }else if(s <= 9){
        s = "0" + s;
    }
    
    // 通过对函数的参数个数判断显示那种格式的时间
    return arguments.length > 2 ? (h+":"+m+":"+s) : (h+":"+m);
}
/*
	将时间转换成分钟
*/
function setTimeChangeMinute(h,m) {
  h = h * 60;//将小时转换成分钟
  alert("h+m ==== " + h + " + " + m + " = " + (h+m));
  //返回总分钟数
  return h + m;
}
/*
** 计算百分比 返回的结果为像素
** allW 中宽度
** unmberW 百分比值
*/
function Calculate_the_percentage(allW){
    alert("function Calculate_the_percentage(" + allW + ")");
	danTime = media.getCurrentPlayTime();//媒体播放到的当前时间点 有两种时间格式
	alert("allW ==========  " + allW + "   media.getMediaDuration() === " + media.getMediaDuration());
	allTime = allW == 0 ? media.getMediaDuration() : allW;
	
	alert("allW =======  " + allW + "  danTime ==============   " + danTime);
	
	var timeStr = "";//创建一个变量用来保存需要显示的时间
	alert("evtObj.type ====== " + evtObj.type);
	if(evtObj.type == "vod"){// 点播
	    //解析获取到的时间，将获取到的时间单位由秒转化成分
	    //解析当前时间
	    var d_h = parseInt(danTime / 3600);
	    var d_m = parseInt((danTime/60) - (d_h * 60));
	    var d_s = (danTime) - (parseInt(danTime/60)*60);
	    //解析视频总时间
	    var a_h = parseInt(allTime / 3600);
        var a_m = parseInt((allTime/60) - (a_h * 60));
        var a_s = (allTime) - (parseInt(allTime/60)*60);
	    
	    
		timeStr = spliceTime(d_h,d_m,d_s) + "/" + spliceTime(a_h,a_m);// 拼接时间字符串
		alert("unmberW ==== parseInt("+danTime+" / ("+allTime+" / 100)) ======== " + unmberW);
		unmberW = parseInt(danTime / (allTime / 100));//计算百分比
		//设置当前时间和总时间在页面上显示
        alert("document.getElementById(\"timeli\").innerHTML = " + timeStr);
		document.getElementById("timeli").innerHTML = timeStr;// 注入时间字符串
	}else if(evtObj.type == "channel"){// 直播
		alert("function Calculate_the_percentage in danTime ====== " + danTime);
		danTime.substring(danTime.indexOf("T")+1,danTime.indexOf(".")).substring(0,2);
		var shi = parseInt(danTime.substring(danTime.indexOf("T")+1,danTime.indexOf(".")).substring(0,2))+8;
		shi = shi >= 24 ? shi - 24 : shi;
		var fen = danTime.substring(danTime.indexOf("T")+1,danTime.indexOf(".")).substring(2,4);
		var miao = danTime.substring(danTime.indexOf("T")+1,danTime.indexOf(".")).substring(4,danTime.indexOf("."));
		timeStr = shi + ":" + fen + ":" + miao;
		alert("timeStr = = = = = shi = " + shi + " fen == + " + fen + "  miao ===== " + miao);
		// 判断是否已经获取到了当前时间
		if(shi == "NaN" || fen.toString().length <= 0 || miao.toString().length <= 0){
		    timeStr = "";
		}
		
		var myDate = new Date();
        var hoursEnd = myDate.getHours();       //获取当前小时数(0-23)
        var minutesEnd = myDate.getMinutes();     //获取当前分钟数(0-59)
        var hoursBigen = hoursEnd - 2;
        if(hoursBigen < 0){// 判断跨天
            hoursBigen = 24 + hoursBigen;
        }
        //计算时差
        var timeDifference = setTimeChangeMinute(parseInt(hoursEnd),parseInt(minutesEnd)) - setTimeChangeMinute(parseInt(shi),parseInt(fen));
        alert("###############  timeDifference ############  " + timeDifference);
        //设置当前时间和总时间在页面上显示
        alert("document.getElementById(\"timeli\").innerHTML = " + spliceTime(hoursBigen,minutesEnd)+"/"+spliceTime(hoursEnd,minutesEnd));
        document.getElementById("timeli").innerHTML = spliceTime(hoursBigen,minutesEnd)+"/"+spliceTime(hoursEnd,minutesEnd);
        //显示直播的当前时间 channelDanTime
        alert("document.getElementById(\"channelDanTime\").innerHTML = " + timeStr);
		document.getElementById("channelDanTime").innerHTML = timeStr;
		//设置进度条显示
		alert(jinduAllW + " ---- " + fixedAllDuration + " ---- " + timeDifference);
		var zhiboJD = parseInt(Math.abs(jinduAllW * ((fixedAllDuration - timeDifference) / fixedAllDuration)));//计算进度条百分比宽度像素
		alert("parseInt(Math.abs(jinduAllW * (fixedAllDuration / (fixedAllDuration - timeDifference)))) ===== " + zhiboJD);
		if(zhiboJD > jinduAllW){// 对计算出来的像素做一个保护使进度条不至于超出原始进度条的两端
		    zhiboJD = jinduAllW;
		}else if(zhiboJD <= 0){
		    zhiboJD = 0;
		}
		alert("**********  Math.abs(jinduAllW * (120 / (fixedAllDuration - timeDifference)))"+ zhiboJD);
		
		document.getElementById("jindutiao").style.width = zhiboJD + "px";
		return ;
	}else{
	    document.getElementById("timeli").innerHTML = "00:00/00:00";
	    return ;
	}
	//这里只是点播的进度条了
	document.getElementById("jindutiao").style.width = ((jinduAllW / 100) * unmberW) + "px";//设置默认百分比
	return "";
}
//document.getElementById("jindutiao").style.width = Calculate_the_percentage(jinduAllW,0);//设置默认百分比
/*
** 页面加载
*/
function videoLoad(){
	//确定进度条组件的位置
	switch (parseInt(epgSize)){
		case 1:
			jinduAllW = 370;//设置进度条的总长度
			setElementLeftTop("Progress_bar_ul","40px","484px");//设置进度条组件位置
			document.getElementById("TimeShiftImage").style.left = "544px";
			document.getElementById("PDH").style.left = "400px";//设置频道号位置
			document.getElementById("PDH").style.fontSize = "40px";//设置频道号字号
			break;
		case 2:
			jinduAllW = 370;//设置进度条的总长度
			setElementLeftTop("Progress_bar_ul","38px","406px");//设置时移图标位置
			document.getElementById("TimeShiftImage").style.left = "540px";//设置时移图标位置
			document.getElementById("PDH").style.left = "400px";//设置频道号位置
			document.getElementById("PDH").style.fontSize = "30px";//设置频道号字号
			break;
		case 4:
			jinduAllW = 370;//设置进度条的总长度
			setElementLeftTop("Progress_bar_ul","245px","670px");//设置时移图标位置
			document.getElementById("TimeShiftImage").style.left = "1180px";//设置时移图标位置
			document.getElementById("PDH").style.left = "1000px";//设置频道号位置
			document.getElementById("PDH").style.fontSize = "60px";//设置频道号字号
			break;
		case 6:
			jinduAllW = 600;//设置进度条的总长度
			setElementLeftTop("Progress_bar_ul","565px","1758px");//设置时移图标位置
			document.getElementById("TimeShiftImage").style.left = "1820px";//设置时移图标位置
			document.getElementById("PDH").style.left = "1570px";//设置频道号位置
			document.getElementById("PDH").style.fontSize = "90px";//设置频道号字号
			break;
		default :
			//默认设置在原点    这里是测试的时候用的 完全可以不写的 这个 如果
			setElementLeftTop("Progress_bar_ul","0px","0px");//设置时移图标位置
			break;
	}
	//设置默认的显示时间
	document.getElementById("timeli").innerHTML = "00:00/00:00";
}
/*
	拼接点播地址
*/
function toJson(url)
{ 
        return '[{mediaUrl:"'+url
        +'",mediaCode: "code1",'
        +'mediaType:2,'
        +'audioType:1,'
        +'videoType:1,'
        +'streamType:1,'
        +'drmType:1,'
        +'fingerPrint:0,'
        +'copyProtection:1,'
        +'allowTrickmode:1,'
        +'startTime:0,'
        +'endTime:500,'
        +'entryID:"entry1"}]';  
}
var typeUmberValue = 0;// 测试计算调用了多少次事件
var myTimerID = "";//创建一个变量来保存定时器的id
/*
** 页面绑定按钮事件 获取虚拟事件
*/
document.onkeypress = doMyKeyPress;
function doMyKeyPress(evt)
{
	alert("function doMyKeyPress(evt).....");
    evt = evt ? evt : window.event;
    var keyCode = evt.which ? evt.which : evt.keyCode;
	if(keyCode == 0x8){//按返回键重新登录
		alert("$$$$ in back");
		if (typeof(UDevice) != "undefined")
        {
			alert("$$$$ begin relogin");
            var player = new UDevice("TV_Client");
            var returnString = player.ioctl('{"cmd":"login","session":0}');
        }
	}
	var evtStr = "";//保存虚拟事件结果
	if(keyCode == 0x300){//键值判断
		evtStr = Utility.getEvent();//获取虚拟事件结果
	}
	alert("Utility.getEvent().toString() ======  " + Utility.getEvent().toString());
	if(Utility.getEvent().toString().indexOf("BEGINING") > 0){//恢复播放
	    alert('Utility.getEvent().toString().indexOf("BEGINING") ======  ' + Utility.getEvent().toString().indexOf("BEGINING"));
	    document.getElementById("TimeShiftImage").style.display = "none";
        document.getElementById("Progress_bar_ul").style.display = "none";
	    media.resume();
	}else if(Utility.getEvent().toString().indexOf("END") > 0){// 视频移动到结束位置暂停播放
	    alert('Utility.getEvent().toString().indexOf("END")   ======  ' + Utility.getEvent().toString().indexOf("END"));
        document.getElementById("TimeShiftImage").style.display = "none";
        document.getElementById("Progress_bar_ul").style.display = "none";
        media.pause();
	}
	
	
	alert("Utility.getEvent() ========= " + evtStr);
	//判断是否已经获得了虚拟事件
	if(evtStr == "" || evtStr.lenght == 0){
		return ;
	}
	alert("Utility.getEvent() =====  " + evtStr);
	if(eval("("+evtStr+")").type != "channel" && eval("("+evtStr+")").type !== "vod"){// 判断规则
        alert("evtObj.type is not channel or vod ... ...");
        return ;
    }
	//将获得的虚拟事件结果解析成对象
	evtObj = eval("("+evtStr+")");
	
	//判断虚拟事件类型
	switch (evtObj.type){
		case "channel"://换台play、暂停播放pause、恢复播发resume、快进ff、快退rw、停止播放stop
			switch(evtObj.PlayCmd){
				case "play"://换台play
					document.getElementById("PDH").innerHTML = evtObj.ChannelNum;//显示频道号
					setTimeout("document.getElementById('PDH').innerHTML='';",5000);//消除频道号
					if(evtObj.TimeShift == "1"){//支持时移
					     ULdisplay = true;
						//显示可支持时移图标
						document.getElementById("TimeShiftImage").style.display = "block";
						document.getElementById("Progress_bar_ul").style.display = "block";
					}else{//不支持事移
					     ULdisplay = false;
						//不显示可支持时移图标
						document.getElementById("TimeShiftImage").style.display = "none";
						document.getElementById("Progress_bar_ul").style.display = "none";
					}
					media.joinChannel(parseInt(evtObj.ChannelNum));//userchannelid频道号 return 0成功 -1失败 参数为int类型
					
					allTime = media.getMediaDuration();//获取当前播放的媒体的总时长 return 整数，以秒为单位
					alert("allTime = media.getMediaDuration(); ======== " + allTime);
					if(myTimerID != ""){//如果这个定时器不为空
						clearInterval(myTimerID);//关闭定时器
					}
					
					myTimerID = setInterval("Calculate_the_percentage('" + allTime + "');",200);//创建一个定时器
					setTimeout("document.getElementById(\"TimeShiftImage\").style.display = \"none\";",3000);
					setTimeout("document.getElementById(\"Progress_bar_ul\").style.display = \"none\";",3000);
					break;
				default :
						if(ULdisplay){//如果支持时移就绘制进度条
						   defaultCZ(evtObj);//暂停、恢复、时移、停止 
						}
					break;
			}
			break;
		case "vod"://点播
		    //将直播的当前时间置空
            document.getElementById("channelDanTime").innerHTML = "";
			switch(evtObj.PlayCmd){
				case "play"://换台play
					//var mediastr = "[{mediaUrl:\"" + playUrl + "\",mediaCode: \"code1\",mediaType:2,audioType:1,videoType:1,streamType:1,drmType:1,fingerPrint:0,copyProtection:1,allowTrickmode:1,"+sectionParam+",entryID:\"entry1\"}]";
					alert("evtObj.Url ======= " + toJson(evtObj.Url));
					media.setSingleMedia(toJson(evtObj.Url));//设置单一媒体?
					media.playFromStart(); //从开始玩?
					if(myTimerID != ""){//如果这个定时器不为空
					    alert("vod myTimeID is not null ... ... clearInterval(myTimeID)");
						clearInterval(myTimerID);//关闭定时器
					}
					allTime = media.getMediaDuration();//获取当前播放的媒体的总时长 return 整数，以秒为单位
                    alert(typeUmberValue + " ------------  >>>>>>>  " + allTime);
					alert("media.getMediaDuration() ============ " + allTime);
					myTimerID = setInterval("Calculate_the_percentage('"+ allTime +"')",200);//创建一个定时器
					setTimeout("document.getElementById(\"TimeShiftImage\").style.display = \"none\";",3000);
					setTimeout("document.getElementById(\"Progress_bar_ul\").style.display = \"none\";",3000);
					break;
				default :
						defaultCZ(evtObj);//暂停、恢复、时移、停止
					break;
		}
	}
}

function defaultCZ(defaultType){
	switch(defaultType.PlayCmd){
		case "pause"://暂停播放pause
			//clearInterval(myTimerID);//关闭定时器
			document.getElementById("Progress_bar_ul").style.display = "block";
			document.getElementById("playimgid").src = "../media_images/pause.png";
			document.getElementById("fforrwtext").innerHTML = "";
			media.pause();
			//setTimeout("document.getElementById(\"Progress_bar_ul\").style.display = \"none\";",3000);
			break;
		case "resume"://恢复播发resume
		    alert("resume is begin ... ...");
			allTime = media.getMediaDuration();//获取当前播放的媒体的总时长 return 整数，以秒为单位
			alert("allTime = media.getMediaDuration(); ======== " + allTime);
			myTimerID = setInterval("Calculate_the_percentage('"+allTime+"');",200);//创建一个定时器
			
			document.getElementById("playimgid").src = "../media_images/play.png";
			document.getElementById("fforrwtext").innerHTML = "";
			media.resume();
			document.getElementById("TimeShiftImage").style.display = "none";
			document.getElementById("Progress_bar_ul").style.display = "none";
			
			alert("resume is end ... ...");
			break;
		case "ff"://快进ff {"type":"channel","PlayCmd":"ff","speed":2}
			//获得快进的速度  evtObj.speed;
			document.getElementById("TimeShiftImage").style.display = "block";
			document.getElementById("Progress_bar_ul").style.display = "block";
			document.getElementById("playimgid").src = "../media_images/forward.png";
			document.getElementById("fforrwtext").innerHTML = defaultType.speed + "X";
			alert("alert(ParseInt(defaultType.speed)) =========== " + parseInt(defaultType.speed));
			media.fastForward(parseInt(defaultType.speed));//parseInt(defaultType.speed)
			break;
		case "rw"://快退rw
			//获得快退的速度  evtObj.speed;
			document.getElementById("TimeShiftImage").style.display = "block";
			document.getElementById("Progress_bar_ul").style.display = "block";
			document.getElementById("playimgid").src = "../media_images/back.png";
			document.getElementById("fforrwtext").innerHTML = defaultType.speed + "X";
			alert("alert(ParseInt(defaultType.speed)) =========== " + parseInt(defaultType.speed));
			media.fastRewind(parseInt(defaultType.speed));//parseInt(defaultType.speed)
			break;
		case "stop"://停止播放stop
			clearInterval(myTimerID);//关闭定时器
			document.getElementById("playimgid").src = "../media_images/play.png";
			document.getElementById("fforrwtext").innerHTML = "";
			//将直播的当前时间置空
			document.getElementById("channelDanTime").innerHTML = "";
			alert("chenjun media.stop() begin");
			if(defaultType.type == "channel")
			{
			    media.leaveChannel();
			}else
			{
			    media.stop();
			}
			
			alert("chenjun media.stop() end");
			document.getElementById("TimeShiftImage").style.display = "none";
			document.getElementById("Progress_bar_ul").style.display = "none";
			break;
	}
}