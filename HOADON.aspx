﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HOADON.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
        Height="50px" Width="428px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ID" />
            <asp:BoundField DataField="MASP" HeaderText="MASP" SortExpression="MASP" />
            <asp:BoundField DataField="LOAISP" HeaderText="LOAISP" 
                SortExpression="LOAISP" />
            <asp:BoundField DataField="GIA" HeaderText="GIA" SortExpression="GIA" />
            <asp:BoundField DataField="NGAYMUAHANG" HeaderText="NGAYMUAHANG" 
                SortExpression="NGAYMUAHANG" />
            <asp:BoundField DataField="SOLUONG" HeaderText="SOLUONG" 
                SortExpression="SOLUONG" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\B.mdf;Integrated Security=True;User Instance=True" 
        DeleteCommand="DELETE FROM [HOADON1] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [HOADON1] ([ID], [MASP], [LOAISP], [GIA], [NGAYMUAHANG], [SOLUONG]) VALUES (@ID, @MASP, @LOAISP, @GIA, @NGAYMUAHANG, @SOLUONG)" 
        ProviderName="System.Data.SqlClient" 
        SelectCommand="SELECT [ID], [MASP], [LOAISP], [GIA], [NGAYMUAHANG], [SOLUONG] FROM [HOADON1]" 
        UpdateCommand="UPDATE [HOADON1] SET [MASP] = @MASP, [LOAISP] = @LOAISP, [GIA] = @GIA, [NGAYMUAHANG] = @NGAYMUAHANG, [SOLUONG] = @SOLUONG WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="String" />
            <asp:Parameter Name="MASP" Type="String" />
            <asp:Parameter Name="LOAISP" Type="String" />
            <asp:Parameter Name="GIA" Type="String" />
            <asp:Parameter Name="NGAYMUAHANG" Type="String" />
            <asp:Parameter Name="SOLUONG" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MASP" Type="String" />
            <asp:Parameter Name="LOAISP" Type="String" />
            <asp:Parameter Name="GIA" Type="String" />
            <asp:Parameter Name="NGAYMUAHANG" Type="String" />
            <asp:Parameter Name="SOLUONG" Type="String" />
            <asp:Parameter Name="ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>

