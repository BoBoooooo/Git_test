<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WC.WebUI.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/><title>协同管理系统</title>
    <script type="text/javascript">
var browser={
    versions:function(){
        var u = navigator.userAgent, app = navigator.appVersion;
        return {
            trident: u.indexOf('Trident') > -1, //IE内核
            presto: u.indexOf('Presto') > -1, //opera内核
            webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
            gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1,//火狐内核
            mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
            ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
            android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或者uc浏览器
            iPhone: u.indexOf('iPhone') > -1 , //是否为iPhone或者QQHD浏览器
            iPad: u.indexOf('iPad') > -1, //是否iPad
            webApp: u.indexOf('Safari') == -1, //是否web应该程序，没有头部与底部
            weixin: u.indexOf('MicroMessenger') > -1, //是否微信 （2015-01-22新增）
            qq: u.match(/\sQQ/i) == " qq" //是否QQ
        };
    }(),
    language:(navigator.browserLanguage || navigator.language).toLowerCase()
}



        function IsPC() {
            var ie6 = ! -[1, ] && !window.XMLHttpRequest;

	    if(browser.versions.mobile||browser.versions.android||browser.versions.ios)
	    {
		this.window.location = '/Mobile/Index.aspx';
	    }
            //PC端
            else {
                if (ie6) {
                    this.window.location = '/manage/default1.aspx';
                } else {
                    var t = <%=et %> +'';
                    if(t == '1'){
                    this.window.location = '/manage/default.aspx';}
                    else {
                    this.window.location = '/manage/default1.aspx';}
                }
            }

        }
    </script>

</head>
<body onload=IsPC()>
<noscript>
<div style=" position:absolute; z-index:100000; height:2046px;top:0px;left:0px; width:100%; background:white; text-align:center;">
    <img src="manage/images/noscript.gif" alt='抱歉，请开启脚本支持！' />
</div></noscript>
    <form id="form1" runat="server">
    </form>
</body>
</html>
