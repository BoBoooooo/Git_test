<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocBodyView.aspx.cs" Inherits="WC.WebUI.Manage.Flow.DocBodyView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/><title>查看打印</title>
<link type="text/css" href="/manage/style.css" rel="stylesheet" rev="stylesheet" media="all" />   
    <link rel="stylesheet" href="/KindEditor4/themes/default/default.css" />
	<link rel="stylesheet" href="/KindEditor4/plugins/code/prettify.css" />
	<script type="text/javascript" charset="utf-8" src="/KindEditor4/kindeditor.js"></script>
	<script type="text/javascript" charset="utf-8" src="/KindEditor4/lang/zh_CN.js"></script>
	<script type="text/javascript" charset="utf-8" src="/KindEditor4/plugins/code/prettify.js"></script>
    
	<script type="text/javascript">
	    KindEditor.ready(function (K) {
	        var editor1 = K.create('#DocBody', {
	            cssPath: '/KindEditor4/plugins/code/prettify.css',
	            uploadJson: '/KindEditor4/upload_json.aspx',
	            fileManagerJson: '/KindEditor4/file_manager_json.aspx'
	        });
	        prettyPrint();
	    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table class="table subsubmenu">
  <thead>
	<tr>
	  <td><a href="#">&gt;&gt;&nbsp;查看内容</a>
	  <a href=# onclick='javascript:window.close()'>关闭页面</a>
	  </td>
	  <td style="text-align:right">
	  </td>
	</tr>
  </thead>
</table>

<table class="table1">
<tr>
	<th style="width:1px; font-weight:bold;"></th>
	<td align=center>
	<span style="color:#0077ff">提示：工具栏最后第二个为打印按钮</span>
		<textarea id="DocBody" style="width:80%;height:735px;visibility:hidden;" 
		runat="server" enableviewstate=false></textarea>
	</td>
</tr>

</table>

    </div>
    </form>
</body>
</html>
