<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HOADON.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="508px" 
        AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ID" />
            <asp:BoundField DataField="MASP" HeaderText="MASP" SortExpression="MASP" />
            <asp:BoundField DataField="LOAISP" HeaderText="LOAISP" 
                SortExpression="LOAISP" />
            <asp:BoundField DataField="SOLUONG" HeaderText="SOLUONG" 
                SortExpression="SOLUONG" />
            <asp:BoundField DataField="NGAYMUAHANG" HeaderText="NGAYMUAHANG" 
                SortExpression="NGAYMUAHANG" />
            <asp:BoundField DataField="GIA" HeaderText="GIA" SortExpression="GIA" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BConnectionString %>" 
        DeleteCommand="DELETE FROM [HOADON1] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [HOADON1] ([ID], [MASP], [LOAISP], [SOLUONG], [NGAYMUAHANG], [GIA]) VALUES (@ID, @MASP, @LOAISP, @SOLUONG, @NGAYMUAHANG, @GIA)" 
        SelectCommand="SELECT * FROM [HOADON1]" 
        UpdateCommand="UPDATE [HOADON1] SET [MASP] = @MASP, [LOAISP] = @LOAISP, [SOLUONG] = @SOLUONG, [NGAYMUAHANG] = @NGAYMUAHANG, [GIA] = @GIA WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="String" />
            <asp:Parameter Name="MASP" Type="String" />
            <asp:Parameter Name="LOAISP" Type="String" />
            <asp:Parameter Name="SOLUONG" Type="String" />
            <asp:Parameter Name="NGAYMUAHANG" Type="String" />
            <asp:Parameter Name="GIA" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MASP" Type="String" />
            <asp:Parameter Name="LOAISP" Type="String" />
            <asp:Parameter Name="SOLUONG" Type="String" />
            <asp:Parameter Name="NGAYMUAHANG" Type="String" />
            <asp:Parameter Name="GIA" Type="String" />
            <asp:Parameter Name="ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>

