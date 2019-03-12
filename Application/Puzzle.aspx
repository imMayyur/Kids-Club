<%@ Page Title="" Language="C#" MasterPageFile="~/Application/MasterPageFlash.master" AutoEventWireup="true" CodeFile="Puzzle.aspx.cs" Inherits="Application_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentFlash" Runat="Server">
     <object id="obj1"  codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0">
         <embed src="../Flash/Puzzle.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="910px" height="590px"></embed>
     </object>
</asp:Content>

