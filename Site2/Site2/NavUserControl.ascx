﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavUserControl.ascx.cs" Inherits="Site2.NavUserControl" %>
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">XGame-In</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Main</a></li>
            <li><a href="About.aspx">About</a></li>
            <li><a href="Contact.aspx">Contacts</a></li>
            <li><a href="News.aspx">News</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>