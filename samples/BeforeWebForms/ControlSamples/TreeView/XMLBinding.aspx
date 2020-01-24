<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XMLBinding.aspx.cs" Inherits="BeforeWebForms.ControlSamples.TreeView.XMLBinding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>TreeView XML Data Binding Example</h3>

        <asp:TreeView ID="BookTreeView"
            DataSourceID="BookXmlDataSource"
            runat="server">

            <DataBindings>
                <asp:TreeNodeBinding DataMember="Book" TextField="Title" />
                <asp:TreeNodeBinding DataMember="Chapter" TextField="Heading" />
                <asp:TreeNodeBinding DataMember="Section" TextField="Heading" />
            </DataBindings>

        </asp:TreeView>

        <asp:XmlDataSource ID="BookXmlDataSource"
            DataFile="Book.xml"
            runat="server"></asp:XmlDataSource>
    </form>
</body>
</html>
