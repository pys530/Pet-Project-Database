<%@ Page Title="Page 1" Language="C#" MasterPageFile="~/Patrick.Master" AutoEventWireup="true" CodeFile="page1.aspx.cs" Inherits="_Page1" %>

<%--<script runat="server">
    void Button_Click(Object sender, EventArgs e)
    {
        Label1.Text = "You selected Product ID: " +
        DropDownList1.SelectedItem.Value + ".";


    }
</script>--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Associate page1.aspx to the Master Page named Patrick.master-->
    <div class="jumbotron">
        <h2>Page 1</h2>
        <p class="lead">Page should contain a DropDownList with its options’ values and text populated from two fields in Product table. 
            Option values should be set to the value of the primary key from the table. DDL should be sorted by text field.</p>

        <!--DDL sorted by text field and value display of primary key from product ID in product table #ps-->
        <label>Select Product:</label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="PRODUCT_NAME" 
            DataValueField="PRODUCT_ID"></asp:DropDownList>
        &nbsp;
        <asp:Button ID="Button1" Text="Submit" OnClick="Button_Click" runat="server" />
        <br />
        <asp:Label ID="Label1" runat="server" />
        <div>
            
            <asp:Label ID="Label2" runat="server" CssClass="alert alert-info" />
            <asp:Label ID="Label3" runat="server" CssClass="alert alert-info" />

        </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" ReadOnly="True" SortExpression="PRODUCT_ID" />
                <asp:BoundField DataField="CATEGORY_ID" HeaderText="CATEGORY_ID" SortExpression="CATEGORY_ID" />
                <asp:BoundField DataField="PRODUCT_NAME" HeaderText="PRODUCT_NAME" SortExpression="PRODUCT_NAME" />
                <asp:BoundField DataField="SUBCATEGORY_ID" HeaderText="SUBCATEGORY_ID" SortExpression="SUBCATEGORY_ID" />
                <asp:BoundField DataField="DESC_SHORT" HeaderText="DESC_SHORT" SortExpression="DESC_SHORT" />
                <asp:BoundField DataField="DESC_LONG" HeaderText="DESC_LONG" SortExpression="DESC_LONG" />
                <asp:BoundField DataField="UNIT_WEIGHT" HeaderText="UNIT_WEIGHT" SortExpression="UNIT_WEIGHT" />
                <asp:BoundField DataField="IMAGELOCLRG" HeaderText="IMAGELOCLRG" SortExpression="IMAGELOCLRG" />
                <asp:BoundField DataField="MANUFACTURER" HeaderText="MANUFACTURER" SortExpression="MANUFACTURER" />
                <asp:BoundField DataField="KEYWORDS" HeaderText="KEYWORDS" SortExpression="KEYWORDS" />
                <asp:BoundField DataField="IMAGELOCSML" HeaderText="IMAGELOCSML" SortExpression="IMAGELOCSML" />
                <asp:BoundField DataField="UNIT_PRICE" HeaderText="UNIT_PRICE" SortExpression="UNIT_PRICE" />
                <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" ReadOnly="True" SortExpression="PRODUCT_ID" />
                <asp:BoundField DataField="PRODUCT_NAME" HeaderText="PRODUCT_NAME" SortExpression="PRODUCT_NAME" />
                <asp:BoundField DataField="CATEGORY_ID" HeaderText="CATEGORY_ID" ReadOnly="True" />
                <asp:BoundField DataField="SUBCATEGORY_ID" HeaderText="SUBCATEGORY_ID" SortExpression="SUBCATEGORY_ID" />
                <asp:BoundField DataField="DESC_SHORT" HeaderText="DESC_SHORT" SortExpression="DESC_SHORT" />
                <asp:BoundField DataField="DESC_LONG" HeaderText="DESC_LONG" SortExpression="DESC_LONG" />
                <asp:BoundField DataField="UNIT_WEIGHT" HeaderText="UNIT_WEIGHT" SortExpression="UNIT_WEIGHT" />
                <asp:BoundField DataField="IMAGELOCLRG" HeaderText="IMAGELOCLRG" SortExpression="IMAGELOCLRG" />
                <asp:BoundField DataField="MANUFACTURER" HeaderText="MANUFACTURER" SortExpression="MANUFACTURER" />
                <asp:BoundField DataField="KEYWORDS" HeaderText="KEYWORDS" SortExpression="KEYWORDS" />
                <asp:BoundField DataField="IMAGELOCSML" HeaderText="IMAGELOCSML" SortExpression="IMAGELOCSML" />
                <asp:BoundField DataField="UNIT_PRICE" HeaderText="UNIT_PRICE" SortExpression="UNIT_PRICE" />
                <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=&quot;128.172.188.42, 14330&quot;;Initial Catalog=fall16_g3;Persist Security Info=True;User ID=fall16_g3;Password=Fallgrp3!" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [PRODUCT]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fall16_g3ConnectionString3 %>" SelectCommand="SELECT [PRODUCT_ID], [CATEGORY_ID], [PRODUCT_NAME], [SUBCATEGORY_ID], [DESC_SHORT], [DESC_LONG], [UNIT_WEIGHT], [IMAGELOCLRG], [MANUFACTURER], [KEYWORDS], [IMAGELOCSML], [UNIT_PRICE], [QUANTITY] FROM [PRODUCT]"></asp:SqlDataSource>



    </div>

 
</asp:Content>
