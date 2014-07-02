<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<geraldBlog.Models.Post>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHolder" runat="server">

<h2>Edit</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Blog</legend>

        <%: Html.HiddenFor(model => model.BlogID) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UserID) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.UserID) %>
            <%: Html.ValidationMessageFor(model => model.UserID) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Title) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Title) %>
            <%: Html.ValidationMessageFor(model => model.Title) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Content) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Content) %>
            <%: Html.ValidationMessageFor(model => model.Content) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.AddTime) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.AddTime) %>
            <%: Html.ValidationMessageFor(model => model.AddTime) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UpdateTime) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.UpdateTime) %>
            <%: Html.ValidationMessageFor(model => model.UpdateTime) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleHolder" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" runat="server">
</asp:Content>
