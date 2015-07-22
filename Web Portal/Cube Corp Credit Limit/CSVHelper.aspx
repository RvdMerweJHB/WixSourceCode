<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/NotAuthenticatedC.Master" CodeBehind="CSVHelper.aspx.vb" Inherits="CUBE.CSVHelper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            color: #33CC33;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>CSV Generation Help</h2>
<br />
<h3>Export Your Outlook Contacts to a CSV File</h3>

<p>To save your contacts from Outlook to a CSV file:

    <ol>
        <li>Select <i>File | Import and Export...</i> from the menu (File | Open | Import for Outlook 2010).
        <li>Make sure <i>Export to a file</i> is highlighted.
        <li class="style3">Click <i>Next &gt;</i>.
        <li>Now make sure <i>Comma Separated Values (Windows)</i> is selected.

        <li>Click <i>Next &gt;</i> again.
        <li>Highlight the <i>Contacts</i> folder.
        <li class="style3">Click <i>Next &gt;</i>.
        <li>Use the <i>Browse...</i> button to specify a location and file name for the exported contacts. Something like "Outlook.csv" or "ol-contacts.csv" on your 
            <i>Desktop</i> should work fine.

        <li class="style3">Click <i>Next &gt;</i> (once more).
        <li>Now click <i>Finish</i>.
    </ol>
<br />
<h3>Export Contacts and Email Addresses from Windows Live Hotmail</h3>

    <p>
        To save your Windows Live Hotmail address book to a CSV file:

    <ol>
        <li>Select <i>Contacts \ Manage \ Export</i><li>Follow the Instructions.

        <li>Click <i>Export</i>.
    </ol>
<br />
<h3>Export Contacts and Email Addresses from Google Mail</h3>

<p>To save your Google Mail Contacts to a CSV file:

    <ol>
        <li>Select <i>Contacts \ More Actions \ Export </i>
        <li>Select all contacts and Google CSV Option
        <li>Click <i>Export</i>.
    </ol>
<br />
<h3>Export Contacts and Email Addresses from Yahoo Mail</h3>

<p>To save your Yahoo Mail Contacts to a CSV file:

    <ol>
        <li>Select <i>Contacts \ Tools \ Export </i>
        <li>Next to Yahoo CSV:
        <li>Click <i>Export Now</i>.
    </ol>
</asp:Content>
