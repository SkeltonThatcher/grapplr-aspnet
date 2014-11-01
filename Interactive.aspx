<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Interactive.aspx.cs" Inherits="Interactive" MasterPageFile="~/Site.master" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Grapplr-ASP.NET - Interactive Log Events</h1>
    </div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Choose an event type (log level):"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Selected="True">Debug</asp:ListItem>
                <asp:ListItem>Info</asp:ListItem>
                <asp:ListItem>Warning</asp:ListItem>
                <asp:ListItem>Error</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="Label2" runat="server" Text="Enter a message for the log (or choose pre-canned):"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Width="310px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="&lt;&lt; Pre-canned text" />
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Add an Exception" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="FIRE THE EVENT" OnClick="Button2_Click" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <br />
            <asp:Label ID="Label3" runat="server" Text="Event details:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="137px" ReadOnly="True" TextMode="MultiLine" Width="476px"></asp:TextBox>
        </asp:Panel>

</asp:Content>