<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="oauth2callback.aspx.vb" Inherits="CUBE.oauth2callback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script language="javascript" type="text/javascript">
          function closepopup(a) {
              window.opener.startgrabbingoauth(a);
              window.self.close();
          }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <telerik:RadWindowManager ID="RadWindowManager1" runat="server">
        </telerik:RadWindowManager>
        <telerik:RadScriptManager ID="RadScriptManager1" Runat="server">
        </telerik:RadScriptManager>
    
    </div>
    </form>
</body>
</html>
