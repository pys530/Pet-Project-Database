<%@ Page Title="Page 3" Language="C#" MasterPageFile="~/Shi.Master" AutoEventWireup="true" CodeFile="page3.aspx.cs" Inherits="_Page3" %>

<script runat="server">
      void Button_Click(Object sender, EventArgs e) 
      {
         Label1.Text = "You selected Order ID: " + 
         DropDownList1.SelectedItem.Value + ".";         
      }
</script>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Stylesheet.css" type="text/css" />

    <div class="jumbotron">
        <h2>Page 3 - Manage Orders</h2>
        <p class="lead"></p>

        <!--DDL sorted by text field and value display of primary key from product ID in product table #ps-->
        <label>Select Order:</label>
        <!--Associate page3.aspx to the Master Page named Shi.master #ps-->
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ORDER_ID" 
            DataValueField="ORDER_ID"></asp:DropDownList>
        &nbsp;
        <asp:Button ID="Button1" Text="Submit" OnClick="Button_Click" runat="server" />
        <br />
        <asp:Label ID="Label1" runat="server" />

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ORDER_ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="ORDER_ID" HeaderText="ORDER_ID" ReadOnly="True" SortExpression="ORDER_ID" InsertVisible="False" />
                <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" SortExpression="CUSTOMER_ID" />
                <asp:BoundField DataField="ORDER_COST" HeaderText="ORDER_COST" SortExpression="ORDER_COST" />
                <asp:BoundField DataField="ORDER_DATE_PAID" HeaderText="ORDER_DATE_PAID" SortExpression="ORDER_DATE_PAID" />
                <asp:BoundField DataField="ORDER_DATE_PLACED" HeaderText="ORDER_DATE_PLACED" SortExpression="ORDER_DATE_PLACED" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fall16_g3ConnectionString4 %>" SelectCommand="SELECT [ORDER_ID], [CUSTOMER_ID], [ORDER_COST], [ORDER_DATE_PAID], [ORDER_DATE_PLACED] FROM [CUSTOMER_ORDERS]" DeleteCommand="DELETE FROM [CUSTOMER_ORDERS] WHERE [ORDER_ID] = @ORDER_ID" InsertCommand="INSERT INTO [CUSTOMER_ORDERS] ([CUSTOMER_ID], [ORDER_COST], [ORDER_DATE_PAID], [ORDER_DATE_PLACED]) VALUES (@CUSTOMER_ID, @ORDER_COST, @ORDER_DATE_PAID, @ORDER_DATE_PLACED)" UpdateCommand="UPDATE [CUSTOMER_ORDERS] SET [CUSTOMER_ID] = @CUSTOMER_ID, [ORDER_COST] = @ORDER_COST, [ORDER_DATE_PAID] = @ORDER_DATE_PAID, [ORDER_DATE_PLACED] = @ORDER_DATE_PLACED WHERE [ORDER_ID] = @ORDER_ID">
            <DeleteParameters>
                <asp:Parameter Name="ORDER_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CUSTOMER_ID" Type="Int32" />
                <asp:Parameter Name="ORDER_COST" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="ORDER_DATE_PAID" />
                <asp:Parameter DbType="Date" Name="ORDER_DATE_PLACED" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CUSTOMER_ID" Type="Int32" />
                <asp:Parameter Name="ORDER_COST" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="ORDER_DATE_PAID" />
                <asp:Parameter DbType="Date" Name="ORDER_DATE_PLACED" />
                <asp:Parameter Name="ORDER_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>



    </div>


</asp:Content>
