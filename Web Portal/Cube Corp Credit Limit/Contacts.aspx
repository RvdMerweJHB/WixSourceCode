<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/NotAuthenticatedC.Master" CodeBehind="Contacts.aspx.vb" Inherits="CUBE.Contacts" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
            
.RadComboBox_Default
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox
{
	vertical-align: middle;
}

.RadComboBox
{
	text-align: left;
}

.RadComboBox_Default
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox
{
	vertical-align: middle;
}

.RadComboBox
{
	text-align: left;
}

.RadComboBox *
{
	margin: 0;
	padding: 0;
}

.RadComboBox *
{
	margin: 0;
	padding: 0;
}

.RadComboBox_Default .rcbInputCellLeft
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2009.3.1208.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbInputCellLeft
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbInputCellLeft
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2009.3.1208.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbInputCellLeft
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox_Default .rcbInput
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox .rcbInput
{
	text-align: left;
}

.RadComboBox_Default .rcbInput
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox .rcbInput
{
	text-align: left;
}

.RadComboBox_Default .rcbArrowCellRight
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2009.3.1208.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbArrowCellRight
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbArrowCellRight
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2009.3.1208.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbArrowCellRight
{
	background-color: transparent;
	background-repeat: no-repeat;
}

        .RadUpload_Default
{
    font: normal 11px/10px "Segoe UI", Arial, sans-serif;
}

.RadUpload
{
	/*default*/
	text-align: left;
}

.RadUpload .ruInputs
{
	list-style:none;
	margin:0;
	padding:0;
}

.RadUpload .ruInputs
{
	zoom:1;/*IE fix - removing items on the client*/
}

.RadUpload_Default .ruFakeInput
{
    border-color: #abadb3 #dbdfe6 #e3e9ef #e2e3ea;
    color: #333;
}

.RadUpload .ruFakeInput
{
    height: 16px;
    margin-right: -1px;
    vertical-align: middle;
    background-position: 0 -93px;
    background-repeat: repeat-x;
    background-color: #fff;
    
    line-height /*\**/: 20px\9; /* IE8 Standards still broken + old hacks don't work */
    height /*\**/: 20px\9;
    padding-top /*\**/: 0\9;
}

.RadUpload .ruFakeInput
{
	float: none;
	vertical-align:top;
}

.RadUpload .ruFakeInput
{
    border-width: 1px;
    border-style: solid;
    line-height: 18px;
    padding: 4px 4px 0 4px;

    -moz-box-sizing: content-box; /* Quirksmode height fix */
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
}

.RadUpload_Default .ruButton
{
    background-image: url('mvwres://Telerik.Web.UI, Version=2009.3.1208.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.Upload.ruSprite.png');
    color: #000;
}

.RadUpload .ruBrowse
{
    width: 65px;
    margin-left: 4px;
    background-position: 0 0;
}

.RadUpload .ruButton
{
    width: 79px;
    height: 22px;
    border: 0;
    padding-bottom: 2px;
    background-position: 0 -23px;
    background-repeat: no-repeat;
    background-color: transparent;
    text-align: center;
}

.RadUpload .ruButton
{
	float: none;
	vertical-align:top;
}

        </style>
      <script type="text/javascript">
          var GB_ROOT_DIR = "./greybox/";
           </script>

     <script type="text/javascript">
          function popup(url) {

              var width = 640;

              var height = 480;

              var left = (screen.width - width) / 2;

              var top = (screen.height - height) / 2;

              var params = 'width=' + width + ', height=' + height;

              params += ', top=' + top + ', left=' + left;

              params += ', directories=no';

              params += ', location=no';

              params += ', menubar=no';

              params += ', resizable=no';

              params += ', scrollbars=no';

              params += ', status=no';

              params += ', toolbar=no';

              newwin = window.open(url, 'windowname5', params);

              if (window.focus) { newwin.focus() }
              return false;
          }
           </script>
         

    <script type="text/javascript" src="greybox/AJS.js"></script>
    <script type="text/javascript" src="greybox/AJS_fx.js"></script>
    <script type="text/javascript" src="greybox/gb_scripts.js"></script>
    
    <link rel="stylesheet" href="greybox/gb_styles.css" type="text/css" media="all"  />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="clear">&nbsp;</div>
<div class="header">
    <h1>Inform Contacts</h1>
    
</div>

<div>
<div id="clear">
   <h2><asp:Label ID="Label1" runat="server" Text="Select Provider"></asp:Label></h2>
   <h6>Vox Amvia does not store any data sent or received from this application</h6>
</div>
<div id="clear"></div>

<div id="Provider">
    <table cellpadding="0" cellspacing="1" class="style1">
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
               <a id="A"  href="javascript: void(0)" onclick="popup('oauth2callback.aspx?id=gmail')">
               <asp:Image ID="Image1" runat="server" ImageUrl="~/Logo Images/gmail_logo.png" style="border:none" />
            </a>
 
            </td>
            <td style="width:250px">
              <a id="A1" href="ContactsImport.aspx?id=Aol" title="Import AOL Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Logo Images/aol_logo.png" style="border:none" />
                </a>
            </td>
            <td style="width:250px">
             <a id="A2" href="javascript: void(0)" onclick="popup('oauth2callback.aspx?id=hotmail')">
                <asp:Image ID="Image4" runat="server" 
                    ImageUrl="~/Logo Images/hotmail_logo.png" style="border:none" /> </a> 
            </td>
            <td style="width:250px">
                <a id="A3" href="javascript: void(0)" onclick="popup('oauth2callback.aspx?id=msn')">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Logo Images/msn_logo.png" style="border:none" />
                </a> 
            </td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
              <a id="A4" href="ContactsImport.aspx?id=Opera" title="Import Opera Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image9" runat="server" ImageUrl="~/Logo Images/opera_logo.png" style="border:none" />
                </a> 
            </td>
            <td style="width:250px">
             <a id="A21" href="ContactsImport.aspx?id=Pingg" title="Import Pingg Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image24" runat="server" 
                    ImageUrl="~/Logo Images/pingg_logo.png" style="border:none" />
                    </a> 
            </td>
            <td style="width:250px">
                   <a id="A14" href="ContactsImport.aspx?id=Plaxo" title="Import Plaxo Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image10" runat="server" 
                    ImageUrl="~/Logo Images/plaxo_logo.png" style="border:none" />
                    </a> </td>
            <td style="width:250px">
             <a id="A7"  href="javascript: void(0)" onclick="popup('oauth2callback.aspx?id=yahoo')" >
                <asp:Image ID="Image6" runat="server" ImageUrl="~/Logo Images/yahoo_logo.png" style="border:none" />
                </a> 
            </td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
             <a id="A8" href="ContactsImport.aspx?id=Outlook" title="Import Outlook Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Logo Images/outlook_logo.png" style="border:none" />
                </a> 
            </td>
            <td style="width:250px">
             <a id="A9" href="ContactsImport.aspx?id=Mail2World" title="Import Mail 2 World Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image17" runat="server" ImageUrl="~/Logo Images/mail2world_logo.png" style="border:none" /> </a> 
            </td>
            <td style="width:250px">
             <a id="A10" href="ContactsImport.aspx?id=Aim" title="Import Aim Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Logo Images/aim_logo.png" style="border:none" />
                </a> 
            </td>
            <td style="width:250px">
                  <a id="A18" href="ContactsImport.aspx?id=Fastmail" title="Import FastMail Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image13" runat="server" 
                    ImageUrl="~/Logo Images/fastmail_logo.png" style="border:none" />
                    </a> 
            </td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
              <a id="A12" href="ContactsImport.aspx?id=In" title="Import In.com Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image22" runat="server" ImageUrl="~/Logo Images/in_logo.png" style="border:none" />
                </a> 
            </td>
            <td style="width:250px">
              <a id="A13" href="ContactsImport.aspx?id=BigString" title="Import Big String Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image18" runat="server" ImageUrl="~/Logo Images/bigstring_logo.png" style="border:none" />
                </a> 
            </td>
            <td style="width:250px">
             <a id="A23" href="ContactsImport.aspx?id=Eolii" title="Import Eolii.com Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image19" runat="server" 
                    ImageUrl="~/Logo Images/eolii-com_logo.png" style="border:none" />
                    </a>
            </td>
            <td style="width:250px">
            <a id="A15" href="ContactsImport.aspx?id=Rediffmail" title="Import Rediff Mail Contacts" 
                    rel="gb_page_center[640, 480]" >
                <asp:Image ID="Image14" runat="server" ImageUrl="~/Logo Images/rediffmail_logo.png" style="border:none" />
                </a> 
            </td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
            
            </td>
            <td style="width:250px">
           
            </td>
            <td style="width:250px">
        
            </td>
            <td style="width:250px">
          
            </td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
            
            </td>
            <td style="width:250px">
           
            </td>
            <td style="width:250px">
          
            </td>
            <td style="width:250px">
         
            </td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                <telerik:RadWindowManager ID="RadWindowManager1" runat="server">
                </telerik:RadWindowManager>
            </td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
            <td style="width:250px">
                &nbsp;</td>
        </tr>
    </table>
    </div>

    <div id="clear"></div>
    </div>
 <div>
   </div>
</asp:Content>
