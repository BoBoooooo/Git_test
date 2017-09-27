<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DbBackup.aspx.cs" Inherits="WC.WebUI.Manage.Sys.DbBackup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/><title>数据库备份操作</title>
<link type="text/css" href="../Style/Backup_Style.css" rel="stylesheet" rev="stylesheet" media="all" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <ul id='mt'>
    <div  align="center" style=" margin-top:18px;"><strong>在线备份数据库：(此功能 将备份本系统Access数据库文件)</strong></div></ul> 
    
    <table border="0" align="center" width="100%" cellpadding="0" cellspacing="0">
    <tr align="center"><td><br /><asp:Label ID="l1" runat="server" Visible="false"></asp:Label><br /><br /></td></tr>
    <tr align="center"><td><asp:Button ID="Sub" runat="server" OnClick="Submit" CssClass="button" Text="开始备份" />
    <span style="color: red"> 成功后文件将备份至程序主目录下Files文件夹！<br /><br /></span>
    <span style="color: red;"> 注意：基于计算机安全策略,
数据库文件扩展名为：.config,
<br /><br /></span>
    <span style="color: red;"> 系统数据库路径(根目录下)：/App_Data/DataBase.config 
<br /><br /></span>
    </td></tr>
    </table>       
    </div>
    </form>
</body>
</html>
