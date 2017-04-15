<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shipment.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="type_name" HeaderText="type_name" 
                SortExpression="type_name" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:INF205_THIENNXPH04402_ASS1ConnectionString %>" 
        DeleteCommand="DELETE FROM [shipment_type] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [shipment_type] ([type_name], [id]) VALUES (@type_name, @id)" 
        SelectCommand="SELECT [type_name], [id] FROM [shipment_type]" 
        UpdateCommand="UPDATE [shipment_type] SET [type_name] = @type_name WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="type_name" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="type_name" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>

