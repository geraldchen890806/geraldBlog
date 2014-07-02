<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<geraldBlog.Models.Post>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHolder" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Blog</legend>

    <div class="display-label">UserID</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UserID) %>
    </div>

    <div class="display-label">Title</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Title) %>
    </div>

    <div class="display-label">Content</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Content) %>
    </div>

    <div class="display-label">AddTime</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.AddTime) %>
    </div>

    <div class="display-label">UpdateTime</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UpdateTime) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.BlogID }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleHolder" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" runat="server">
</asp:Content>
