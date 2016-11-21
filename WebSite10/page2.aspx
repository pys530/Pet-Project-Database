<%@ Page Title="Page 2" Language="C#" MasterPageFile="~/Patrick.Master" AutoEventWireup="true" CodeFile="page2.aspx.cs" Inherits="_Page2" %>

<script runat="server">
      void Button_Click(Object sender, EventArgs e) 
      {
         Label1.Text = "You selected Product ID: " + 
         DropDownList1.SelectedItem.Value + ".";         
      }
</script>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Associate page2.aspx to the Master Page named Patrick.master-->
    <div class="jumbotron">
        <h2>Page 2 - Manage Products</h2>
        <p class="lead"></p>

    <!--Page2.aspx functionality:
        o An option that uses the selected value from the DropDownList control to display all columns of the selected record.-->
        <label>Select Product:</label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="PRODUCT_NAME" 
            DataValueField="PRODUCT_ID">
        </asp:DropDownList>
        &nbsp;
        <asp:Button ID="Button1" Text="Submit" OnClick="Button_Click" runat="server" />
        <br />
        <asp:Label ID="Label1" runat="server" />

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource1" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" ReadOnly="True" SortExpression="PRODUCT_ID" />
                <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY" />
                <asp:BoundField DataField="DESC_SHORT" HeaderText="DESC_SHORT" SortExpression="DESC_SHORT" />
                <asp:BoundField DataField="UNIT_WEIGHT" HeaderText="UNIT_WEIGHT" SortExpression="UNIT_WEIGHT" />
                <asp:BoundField DataField="CATEGORY_ID" HeaderText="CATEGORY_ID" SortExpression="CATEGORY_ID" />
                <asp:BoundField DataField="PRODUCT_NAME" HeaderText="PRODUCT_NAME" SortExpression="PRODUCT_NAME" />
                <asp:BoundField DataField="UNIT_PRICE" HeaderText="UNIT_PRICE" SortExpression="UNIT_PRICE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fall16_g3ConnectionString2 %>" SelectCommand="SELECT [PRODUCT_ID], [QUANTITY], [DESC_SHORT], [UNIT_WEIGHT], [CATEGORY_ID], [PRODUCT_NAME], [UNIT_PRICE] FROM [PRODUCT]" DeleteCommand="DELETE FROM [PRODUCT] WHERE [PRODUCT_ID] = @PRODUCT_ID" InsertCommand="INSERT INTO [PRODUCT] ([PRODUCT_ID], [QUANTITY], [DESC_SHORT], [UNIT_WEIGHT], [CATEGORY_ID], [PRODUCT_NAME], [UNIT_PRICE]) VALUES (@PRODUCT_ID, @QUANTITY, @DESC_SHORT, @UNIT_WEIGHT, @CATEGORY_ID, @PRODUCT_NAME, @UNIT_PRICE)" UpdateCommand="UPDATE [PRODUCT] SET [QUANTITY] = @QUANTITY, [DESC_SHORT] = @DESC_SHORT, [UNIT_WEIGHT] = @UNIT_WEIGHT, [CATEGORY_ID] = @CATEGORY_ID, [PRODUCT_NAME] = @PRODUCT_NAME, [UNIT_PRICE] = @UNIT_PRICE WHERE [PRODUCT_ID] = @PRODUCT_ID">
            <DeleteParameters>
                <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
                <asp:Parameter Name="QUANTITY" Type="Int32" />
                <asp:Parameter Name="DESC_SHORT" Type="String" />
                <asp:Parameter Name="UNIT_WEIGHT" Type="String" />
                <asp:Parameter Name="CATEGORY_ID" Type="Int32" />
                <asp:Parameter Name="PRODUCT_NAME" Type="String" />
                <asp:Parameter Name="UNIT_PRICE" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="QUANTITY" Type="Int32" />
                <asp:Parameter Name="DESC_SHORT" Type="String" />
                <asp:Parameter Name="UNIT_WEIGHT" Type="String" />
                <asp:Parameter Name="CATEGORY_ID" Type="Int32" />
                <asp:Parameter Name="PRODUCT_NAME" Type="String" />
                <asp:Parameter Name="UNIT_PRICE" Type="Decimal" />
                <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>



    </div>


</asp:Content>
