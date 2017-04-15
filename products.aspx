<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="product_name" HeaderText="product_name" 
                SortExpression="product_name" />
            <asp:BoundField DataField="product_description" 
                HeaderText="product_description" SortExpression="product_description" />
            <asp:BoundField DataField="unit" HeaderText="unit" SortExpression="unit" />
            <asp:BoundField DataField="price_per_unit" HeaderText="price_per_unit" 
                SortExpression="price_per_unit" />
            <asp:BoundField DataField="product_type_id" HeaderText="product_type_id" 
                SortExpression="product_type_id" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:INF205_THIENNXPH04402_ASS1ConnectionString %>" 
        DeleteCommand="DELETE FROM [product] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [product] ([id], [product_name], [product_description], [unit], [price_per_unit], [product_type_id]) VALUES (@id, @product_name, @product_description, @unit, @price_per_unit, @product_type_id)" 
        SelectCommand="SELECT [id], [product_name], [product_description], [unit], [price_per_unit], [product_type_id] FROM [product]" 
        UpdateCommand="UPDATE [product] SET [product_name] = @product_name, [product_description] = @product_description, [unit] = @unit, [price_per_unit] = @price_per_unit, [product_type_id] = @product_type_id WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="product_name" Type="String" />
            <asp:Parameter Name="product_description" Type="String" />
            <asp:Parameter Name="unit" Type="String" />
            <asp:Parameter Name="price_per_unit" Type="Decimal" />
            <asp:Parameter Name="product_type_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="product_name" Type="String" />
            <asp:Parameter Name="product_description" Type="String" />
            <asp:Parameter Name="unit" Type="String" />
            <asp:Parameter Name="price_per_unit" Type="Decimal" />
            <asp:Parameter Name="product_type_id" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>

