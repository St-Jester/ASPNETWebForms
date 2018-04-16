<%@ Page Title="Main page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site2.Default" %>

<%@ Register Src="~/AdsUserControl.ascx" TagPrefix="uc1" TagName="AdsUserControl" %>
<%@ Register Src="~/InfoControl.ascx" TagPrefix="uc1" TagName="InfoControl" %>
<%@ Register Src="~/NavUserControl.ascx" TagPrefix="uc1" TagName="NavUserControl" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Main Page</h2>
    <uc1:AdsUserControl runat="server" id="AdsUserControl" />
    <uc1:InfoControl runat="server" id="InfoControl" />
</asp:Content>
