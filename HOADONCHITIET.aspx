<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HOADONCHITIET.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        DataSourceID="SqlDataSource2" AllowPaging="True" AutoGenerateRows="False" 
        DataKeyNames="ID">
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ID" />
            <asp:BoundField DataField="MASP" HeaderText="MASP" SortExpression="MASP" />
            <asp:BoundField DataField="TENSP" HeaderText="TENSP" SortExpression="TENSP" />
            <asp:BoundField DataField="LOAISP" HeaderText="LOAISP" 
                SortExpression="LOAISP" />
            <asp:BoundField DataField="GIA" HeaderText="GIA" SortExpression="GIA" />
            <asp:BoundField DataField="NGAYMUAHANG" HeaderText="NGAYMUAHANG" 
                SortExpression="NGAYMUAHANG" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BConnectionString %>" 
        DeleteCommand="DELETE FROM [HOADONCHITIET1] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [HOADONCHITIET1] ([ID], [MASP], [TENSP], [LOAISP], [GIA], [NGAYMUAHANG]) VALUES (@ID, @MASP, @TENSP, @LOAISP, @GIA, @NGAYMUAHANG)" 
        SelectCommand="SELECT * FROM [HOADONCHITIET1]" 
        UpdateCommand="UPDATE [HOADONCHITIET1] SET [MASP] = @MASP, [TENSP] = @TENSP, [LOAISP] = @LOAISP, [GIA] = @GIA, [NGAYMUAHANG] = @NGAYMUAHANG WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="String" />
            <asp:Parameter Name="MASP" Type="String" />
            <asp:Parameter Name="TENSP" Type="String" />
            <asp:Parameter Name="LOAISP" Type="String" />
            <asp:Parameter Name="GIA" Type="String" />
            <asp:Parameter Name="NGAYMUAHANG" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MASP" Type="String" />
            <asp:Parameter Name="TENSP" Type="String" />
            <asp:Parameter Name="LOAISP" Type="String" />
            <asp:Parameter Name="GIA" Type="String" />
            <asp:Parameter Name="NGAYMUAHANG" Type="String" />
            <asp:Parameter Name="ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</asp:Content>

