<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KHACHHANG.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="599px" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
        AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ID" />
            <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" 
                SortExpression="USERNAME" />
            <asp:BoundField DataField="PASS" HeaderText="PASS" SortExpression="PASS" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\B.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True" 
        DeleteCommand="DELETE FROM [KHACHHANG] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [KHACHHANG] ([ID], [USERNAME], [PASS]) VALUES (@ID, @USERNAME, @PASS)" 
        ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT [ID], [USERNAME], [PASS] FROM [KHACHHANG]" 
        UpdateCommand="UPDATE [KHACHHANG] SET [USERNAME] = @USERNAME, [PASS] = @PASS WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="String" />
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="PASS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="PASS" Type="String" />
            <asp:Parameter Name="ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>

