<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Servers.aspx.vb" Inherits="CUBE.Servers" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div id="header" class="header">
   <h1>RF Servers</h1>
</div>
<div id="clear">&nbsp;</div>
<div>
    <telerik:RadGrid ID="rgServers" runat="server" 
        GridLines="None" DataSourceID="dsServers" AllowPaging="True" 
        AutoGenerateColumns="False" DataMember="DefaultView" 
        AllowAutomaticUpdates="True" AllowAutomaticDeletes="True" 
        AllowAutomaticInserts="True" AllowFilteringByColumn="True">
        <MasterTableView CommandItemDisplay="Top" DataMember="DefaultView" 
            EditMode="EditForms" datakeynames="ID" datasourceid="dsServers">
            <RowIndicatorColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>
            <ExpandCollapseColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>
            <EditFormSettings>
                <EditColumn UniqueName="EditCommandColumn1">
                </EditColumn>
            </EditFormSettings>
            <Columns>
                <telerik:GridEditCommandColumn ButtonType="ImageButton" EditImageUrl="~/UserContent/default/Edit.gif"   >
                    <HeaderStyle Width="11px" />
                    <ItemStyle HorizontalAlign="Center" Width="11px" />
                </telerik:GridEditCommandColumn>
                <telerik:GridBoundColumn DataField="ID" DataType="System.Int32" HeaderText="ID" 
                    ReadOnly="True" SortExpression="ID" UniqueName="ID" Display="False" >
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Name" HeaderText="Name" 
                    SortExpression="Name" UniqueName="Name">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="IPAddress" HeaderText="IPAddress" 
                    SortExpression="IPAddress" UniqueName="IPAddress" AllowFiltering="False">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Username" 
                    HeaderText="Username" SortExpression="Username" UniqueName="Username">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="Password" EmptyDataText="&amp;nbsp;" 
                    HeaderText="Password" SortExpression="Password" UniqueName="Password" 
                    AllowFiltering="False">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="MaxUsers" DataType="System.Int64" 
                    EmptyDataText="&amp;nbsp;" HeaderText="MaxUsers" SortExpression="MaxUsers" 
                    UniqueName="MaxUsers" AllowFiltering="False">
                </telerik:GridBoundColumn>
            </Columns>
        </MasterTableView>
        <ClientSettings>
            <Selecting AllowRowSelect="True" />
        </ClientSettings>

<FilterMenu EnableTheming="True">
<CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
</FilterMenu>
    </telerik:RadGrid>
    <asp:SqlDataSource ID="dsServers" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        
        SelectCommand="SELECT * FROM server order by ID ASC" 
        InsertCommand="INSERT INTO server
(Name,IPAddress,UserName,Password,MaxUsers) 
VALUES (@Name,@IPAddress, @UserName,@Password,@MaxUsers)" 
        UpdateCommand="UPDATE server SET 
Name = @Name,
IPAddress = @IPAddress,
UserName = @UserName,
Password = @Password,
MaxUsers = @MaxUsers
WHERE
ID = @ID">
        <UpdateParameters>
            <asp:Parameter Name="Name" />
            <asp:Parameter Name="IPAddress" />
            <asp:Parameter Name="UserName" />
            <asp:Parameter Name="Password" />
            <asp:Parameter Name="MaxUsers" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" />
            <asp:Parameter Name="IPAddress" />
            <asp:Parameter Name="UserName" />
            <asp:Parameter Name="Password" />
            <asp:Parameter Name="MaxUsers" />
        </InsertParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>
