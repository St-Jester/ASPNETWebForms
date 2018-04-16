<%@ Page Title="News" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Site2.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
    <link rel ="stylesheet" href ="style/style.css" />
    
     <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="style/blog.css" rel="stylesheet">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">News</a>
          </div>
        </div>
      </header>

    <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex justify-content-between">
          <a class="p-2 text-muted" href="#">World</a>
          <a class="p-2 text-muted" href="#">Games</a>
          <a class="p-2 text-muted" href="#">Technology</a>
          <a class="p-2 text-muted" href="#">Sport</a>
        </nav>
      </div>

  <div class="row mb-2">
    <% 
        var news = db.News.ToList();

        foreach (var i in news)
        {
        %>
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 box-shadow h-md-250">
              <%--<div class ="rightpost">
                <img class="card-img-right flex-auto d-none d-lg-block" src ="<%=i.Image %>"  alt="Card image cap">
              </div>--%>
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-primary"><%=i.Theme %></strong>
              <h3 class="mb-0"> 
                  <a class="text-dark" href="#"><%=i.Title %></a></h3>
             
              <div class="mb-1 text-muted"><%=i.Publish%></div>
              <p class="card-text mb-auto"><%=i.Shot%></p>
              <a href="#">Continue reading</a>
            </div>
              
          </div>
        </div>
      <% 
            }
            %>

       </div>
 
    <div class="blog-post">
            <h2 class="blog-post-title"><%= news[FeaturedId].Title%></h2>
            <p class="blog-post-meta"><%= news[FeaturedId].Publish%></p>

            <p><%= news[FeaturedId].Shot%></p>
            <hr>
           
            <p><%= news[FeaturedId].Full%></p>
         <img  src ="<%=news[FeaturedId].Image%>"  alt="Card image cap">
          </div><!-- /.blog-post -->

    

</asp:Content>


<%--protected void Feature_ServerClick(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            var news = db.News.ToList();
            var selected = (from article in news
                            where article.Title == i.Title
                            select article).FirstOrDefault();

            FeaturedId = news.IndexOf(selected);
        }
        </script>--%>