<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<geraldBlog.Models.Post>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleHolder" runat="server">
陈佳人
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentHolder" runat="server">
    <div class="main">
        <form action="save" method="post" class="post create">
            <div class="title">
                <label>标题：</label>
                <input name="title"/>
            </div>
            <div class="content">
                <label>内容：</label>
                <textarea name="content"></textarea>
            </div>
            <div class="submit">
                <input type="submit" value="提交" />
            </div>
        </form>    
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" runat="server">
</asp:Content>
