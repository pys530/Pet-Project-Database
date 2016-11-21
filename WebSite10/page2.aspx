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
        <h2>Page 2 - Edit Products</h2>
        <p class="lead">Edit Products</p>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" ReadOnly="True" SortExpression="PRODUCT_ID" />
                <asp:BoundField DataField="CATEGORY_ID" HeaderText="CATEGORY_ID" SortExpression="CATEGORY_ID" />
                <asp:BoundField DataField="SUBCATEGORY_ID" HeaderText="SUBCATEGORY_ID" SortExpression="SUBCATEGORY_ID" />
                <asp:BoundField DataField="MANUFACTURER" HeaderText="MANUFACTURER" SortExpression="MANUFACTURER" />
                <asp:BoundField DataField="PRODUCT_NAME" HeaderText="PRODUCT_NAME" SortExpression="PRODUCT_NAME" />
                <asp:BoundField DataField="DESC_LONG" HeaderText="DESC_LONG" SortExpression="DESC_LONG" />
                <asp:BoundField DataField="UNIT_WEIGHT" HeaderText="UNIT_WEIGHT" SortExpression="UNIT_WEIGHT" >
                </asp:BoundField>
                <asp:BoundField DataField="IMAGELOCLRG" HeaderText="IMAGELOCLRG" SortExpression="IMAGELOCLRG" />
                <asp:BoundField DataField="IMAGELOCSML" HeaderText="IMAGELOCSML" SortExpression="IMAGELOCSML" />
                <asp:BoundField DataField="KEYWORDS" HeaderText="KEYWORDS" SortExpression="KEYWORDS" />
                <asp:BoundField DataField="UNIT_PRICE" HeaderText="UNIT_PRICE" SortExpression="UNIT_PRICE" />
                <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY" />
                <asp:BoundField DataField="DESC_SHORT" HeaderText="DESC_SHORT" SortExpression="DESC_SHORT" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fall16_g3ConnectionString2 %>" SelectCommand="SELECT [PRODUCT_ID], [CATEGORY_ID], [SUBCATEGORY_ID], [MANUFACTURER], [PRODUCT_NAME], [DESC_LONG], [UNIT_WEIGHT], [IMAGELOCLRG], [IMAGELOCSML], [KEYWORDS], [UNIT_PRICE], [QUANTITY], [DESC_SHORT] FROM [PRODUCT] ORDER BY [PRODUCT_ID]" DeleteCommand="DELETE FROM [PRODUCT] WHERE [PRODUCT_ID] = @PRODUCT_ID" InsertCommand="INSERT INTO [PRODUCT] ([PRODUCT_ID], [CATEGORY_ID], [SUBCATEGORY_ID], [MANUFACTURER], [PRODUCT_NAME], [DESC_LONG], [UNIT_WEIGHT], [IMAGELOCLRG], [IMAGELOCSML], [KEYWORDS], [UNIT_PRICE], [QUANTITY], [DESC_SHORT]) VALUES (@PRODUCT_ID, @CATEGORY_ID, @SUBCATEGORY_ID, @MANUFACTURER, @PRODUCT_NAME, @DESC_LONG, @UNIT_WEIGHT, @IMAGELOCLRG, @IMAGELOCSML, @KEYWORDS, @UNIT_PRICE, @QUANTITY, @DESC_SHORT)" UpdateCommand="UPDATE [PRODUCT] SET [CATEGORY_ID] = @CATEGORY_ID, [SUBCATEGORY_ID] = @SUBCATEGORY_ID, [MANUFACTURER] = @MANUFACTURER, [PRODUCT_NAME] = @PRODUCT_NAME, [DESC_LONG] = @DESC_LONG, [UNIT_WEIGHT] = @UNIT_WEIGHT, [IMAGELOCLRG] = @IMAGELOCLRG, [IMAGELOCSML] = @IMAGELOCSML, [KEYWORDS] = @KEYWORDS, [UNIT_PRICE] = @UNIT_PRICE, [QUANTITY] = @QUANTITY, [DESC_SHORT] = @DESC_SHORT WHERE [PRODUCT_ID] = @PRODUCT_ID">
            <DeleteParameters>
                <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
                <asp:Parameter Name="CATEGORY_ID" Type="Int32" />
                <asp:Parameter Name="SUBCATEGORY_ID" Type="Int32" />
                <asp:Parameter Name="MANUFACTURER" Type="String" />
                <asp:Parameter Name="PRODUCT_NAME" Type="String" />
                <asp:Parameter Name="DESC_LONG" Type="String" />
                <asp:Parameter Name="UNIT_WEIGHT" Type="String" />
                <asp:Parameter Name="IMAGELOCLRG" Type="String" />
                <asp:Parameter Name="IMAGELOCSML" Type="String" />
                <asp:Parameter Name="KEYWORDS" Type="String" />
                <asp:Parameter Name="UNIT_PRICE" Type="Decimal" />
                <asp:Parameter Name="QUANTITY" Type="Int32" />
                <asp:Parameter Name="DESC_SHORT" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CATEGORY_ID" Type="Int32" />
                <asp:Parameter Name="SUBCATEGORY_ID" Type="Int32" />
                <asp:Parameter Name="MANUFACTURER" Type="String" />
                <asp:Parameter Name="PRODUCT_NAME" Type="String" />
                <asp:Parameter Name="DESC_LONG" Type="String" />
                <asp:Parameter Name="UNIT_WEIGHT" Type="String" />
                <asp:Parameter Name="IMAGELOCLRG" Type="String" />
                <asp:Parameter Name="IMAGELOCSML" Type="String" />
                <asp:Parameter Name="KEYWORDS" Type="String" />
                <asp:Parameter Name="UNIT_PRICE" Type="Decimal" />
                <asp:Parameter Name="QUANTITY" Type="Int32" />
                <asp:Parameter Name="DESC_SHORT" Type="String" />
                <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>



    </div>


</asp:Content>
