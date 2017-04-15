<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Client.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="first_name" HeaderText="first_name" 
                SortExpression="first_name" />
            <asp:BoundField DataField="last_name" HeaderText="last_name" 
                SortExpression="last_name" />
            <asp:BoundField DataField="company_name" HeaderText="company_name" 
                SortExpression="company_name" />
            <asp:BoundField DataField="VAT_ID" HeaderText="VAT_ID" 
                SortExpression="VAT_ID" />
            <asp:BoundField DataField="client_address" HeaderText="client_address" 
                SortExpression="client_address" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:INF205_THIENNXPH04402_ASS1ConnectionString %>" 
        DeleteCommand="DELETE FROM [client] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [client] ([id], [first_name], [last_name], [company_name], [VAT_ID], [client_address]) VALUES (@id, @first_name, @last_name, @company_name, @VAT_ID, @client_address)" 
        SelectCommand="SELECT [id], [first_name], [last_name], [company_name], [VAT_ID], [client_address] FROM [client]" 
        UpdateCommand="UPDATE [client] SET [first_name] = @first_name, [last_name] = @last_name, [company_name] = @company_name, [VAT_ID] = @VAT_ID, [client_address] = @client_address WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="company_name" Type="String" />
            <asp:Parameter Name="VAT_ID" Type="String" />
            <asp:Parameter Name="client_address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="company_name" Type="String" />
            <asp:Parameter Name="VAT_ID" Type="String" />
            <asp:Parameter Name="client_address" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>

