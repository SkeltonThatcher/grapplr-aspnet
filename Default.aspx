<%@ Page Title="Home Page - Grapplr-ASPNET" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Grapplr-ASP.NET</h1>
        <p class="lead">Grapplr is a log sending tool for testing log aggregation</p>
        <p><a href="https://github.com/SkeltonThatcher/grapplr-aspnet" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                This ASP.NET version of Grapplr allows you to generate log events both <a href="Interactive.aspx">interactively</a> and <a href="Automatic.aspx">automatically</a>.
            </p>
        </div>
    </div>
</asp:Content>
