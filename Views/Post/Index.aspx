<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<geraldBlog.Models.Post>>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentHolder" runat="server">
<div class="post_main">
<% foreach (var item in Model) { %>
    <div id="post-<%:item.PostID %>" class="post">
        <h2><%:item.Title%></h2>
        <div class="info">
            <span class="data"><%:item.AddTime %></span>
            <span class="author"><%:item.UserID %></span>
        </div>
        <div class="content"><%:item.Content %></div>
    </div>
<% } %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" runat="server">
</asp:Content>
