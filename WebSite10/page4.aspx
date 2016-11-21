<%@ Page Title="Page 4" Language="C#" MasterPageFile="~/Shi.Master" AutoEventWireup="true" CodeFile="page4.aspx.cs" Inherits="_Page4" %>

<script runat="server">
      void Button_Click(Object sender, EventArgs e) 
      {
         Label1.Text = "You selected Customer ID: " + 
         DropDownList1.SelectedItem.Value + ".";         
      }
</script>

<asp:content id="BodyContent" contentplaceholderid="MainContent" runat="server">
    <!--Associate page4.aspx to the Master Page named Shi.master-->
    <div class="jumbotron">
        <h2>Page 4 - Manage Customer Information</h2>
        <p class="lead"></p>

    <!--Page4.aspx functionality:
        o An option that uses the selected value from the DropDownList control to display all columns of the selected record.-->
        <label>Select Customer ID:</label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CUSTOMER_ID" 
            DataValueField="CUSTOMER_ID"></asp:DropDownList>
        &nbsp;
        <asp:Button ID="Button1" Text="Submit" OnClick="Button_Click" runat="server" />
        <br />
        <asp:Label ID="Label1" runat="server" />

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" ReadOnly="True" SortExpression="CUSTOMER_ID" />
                <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
                <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL">
                </asp:BoundField>
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                <asp:BoundField DataField="BILLING_ADDRESS" HeaderText="BILLING_ADDRESS" SortExpression="BILLING_ADDRESS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fall16_g3ConnectionString2 %>" SelectCommand="SELECT [CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [USERNAME], [BILLING_ADDRESS] FROM [CUSTOMER]" DeleteCommand="DELETE FROM [CUSTOMER] WHERE [CUSTOMER_ID] = @CUSTOMER_ID" InsertCommand="INSERT INTO [CUSTOMER] ([CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [USERNAME], [BILLING_ADDRESS]) VALUES (@CUSTOMER_ID, @FIRST_NAME, @LAST_NAME, @EMAIL, @USERNAME, @BILLING_ADDRESS)" UpdateCommand="UPDATE [CUSTOMER] SET [FIRST_NAME] = @FIRST_NAME, [LAST_NAME] = @LAST_NAME, [EMAIL] = @EMAIL, [USERNAME] = @USERNAME, [BILLING_ADDRESS] = @BILLING_ADDRESS WHERE [CUSTOMER_ID] = @CUSTOMER_ID">
            <DeleteParameters>
                <asp:Parameter Name="CUSTOMER_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CUSTOMER_ID" Type="Int32" />
                <asp:Parameter Name="FIRST_NAME" Type="String" />
                <asp:Parameter Name="LAST_NAME" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="USERNAME" Type="String" />
                <asp:Parameter Name="BILLING_ADDRESS" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FIRST_NAME" Type="String" />
                <asp:Parameter Name="LAST_NAME" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="USERNAME" Type="String" />
                <asp:Parameter Name="BILLING_ADDRESS" Type="String" />
                <asp:Parameter Name="CUSTOMER_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>



    </div>


</asp:Content>
