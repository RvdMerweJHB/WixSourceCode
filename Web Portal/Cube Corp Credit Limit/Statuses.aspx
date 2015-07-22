<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Statuses.aspx.vb" Inherits="CUBE.Statuses" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="clear">&nbsp;</div>
<div id="header" class="header">
   <h1>Statuses</h1>
</div>
<div id="clear">&nbsp;</div>
<div>

    <telerik:RadGrid ID="rgStatuses" runat="server" AllowAutomaticDeletes="True" 
        AllowAutomaticUpdates="True" AllowFilteringByColumn="True" AllowPaging="True" 
        AutoGenerateColumns="False" DataMember="DefaultView" DataSourceID="dsStatuses" 
        GridLines="None">
        

<mastertableview allowautomaticinserts="False" cellspacing="-1" datakeynames="ID" 
        datamember="DefaultView" datasourceid="dsStatuses" editmode="EditForms">
            <rowindicatorcolumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </rowindicatorcolumn>
            <expandcollapsecolumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </expandcollapsecolumn>

<editformsettings>
<editcolumn uniquename="EditCommandColumn1"></editcolumn>
</editformsettings>
            <Columns>
                
<telerik:GridEditCommandColumn ButtonType="ImageButton" 
                    EditImageUrl="~\UserContent\default\edit.gif">
                    
<HeaderStyle Width="11px" />
                    

<ItemStyle HorizontalAlign="Center" Width="11px" />
                
</telerik:GridEditCommandColumn>
                
<telerik:GridClientDeleteColumn ButtonType="ImageButton" CommandName="Delete" 
                    ConfirmText="Delete this status?" ImageUrl="~\UserContent\default\delete.gif" 
                    Text="Delete" UniqueName="DeleteColumn">
                    
<HeaderStyle Width="11px" />
                    

<ItemStyle HorizontalAlign="Center" Width="15px" />
                
</telerik:GridClientDeleteColumn>
                
<telerik:GridBoundColumn DataField="ID" DataType="System.Int32" Display="false" HeaderText="ID" 
                    ReadOnly="True" SortExpression="ID" UniqueName="ID">
                </telerik:GridBoundColumn>
                
<telerik:GridBoundColumn DataField="Status" HeaderText="Status" SortExpression="Status" 
                    UniqueName="Status">
                </telerik:GridBoundColumn>
                
<telerik:GridCheckBoxColumn DataField="IsBillable" DataType="System.Boolean" HeaderText="Billable" 
                    SortExpression="IsBillable" UniqueName="IsBillable">
                </telerik:GridCheckBoxColumn>
            
</Columns>
        
</mastertableview>
        
<clientsettings>
            
<selecting allowrowselect="True" />
        
</clientsettings>
    
</telerik:RadGrid>
    <asp:SqlDataSource ID="dsStatuses" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CUBE.My.MySettings.cnn %>" 
        DeleteCommand="UPDATE Status set Deleted = 'True' where ID = @ID" 
        InsertCommand="INSERT INTO Status(Status, IsBillable) VALUES (@Status, @IsBillable)" 
        SelectCommand="SELECT Status.* FROM Status where Status.Deleted = 'False' order by Status ASC" 
        
        UpdateCommand="UPDATE Status SET Status = @Status, IsBillable = @IsBillable WHERE (ID = @ID)">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Status" />
            <asp:Parameter Name="IsBillable" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Status" />
            <asp:Parameter Name="IsBillable" />
        </InsertParameters>
    </asp:SqlDataSource>

</div>                        
</asp:Content>
