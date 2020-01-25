<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="XMLBinding.aspx.cs" Inherits="BeforeWebForms.ControlSamples.TreeView.XMLBinding" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

        <h2>TreeView XML Data Binding Example</h2>

    <p>Here is a simple treeview with XML Databinding.  This sample is lifted DIRECTLY from the documentation at:
    <a href="https://docs.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.treeview?view=netframework-4.8#examples">https://docs.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.treeview?view=netframework-4.8#examples</a>
    </p>

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

      <h3>Generates the following HTML:</h3>

  <pre>
    <%:
@"<div id=""MainContent_BookTreeView"">
	<table style=""border-width:0;"" cellspacing=""0"" cellpadding=""0"">
		<tbody><tr>
			<td><a id=""MainContent_BookTreeViewn0"" href=""javascript:TreeView_ToggleNode(MainContent_BookTreeView_Data,0,document.getElementById('MainContent_BookTreeViewn0'),' ',document.getElementById('MainContent_BookTreeViewn0Nodes'))""><img title=""Collapse Book Title"" style=""border-width:0;"" alt=""Collapse Book Title"" src=""/WebResource.axd?d=-n2KnhPEOy8tY2UhU96Dm0_29U_O0E7SS6V3wOrrqI9gktPKa67Rz7xU4BBL-V-ujIAc1B6YDnkehWQWJKnzV7-CTsOalBnSgEKo-VUJfSo1&amp;t=637113066486964599""></a></td><td style=""white-space:nowrap;""><a class=""MainContent_BookTreeView_0"" id=""MainContent_BookTreeViewt0"" onclick=""TreeView_SelectNode(MainContent_BookTreeView_Data, this,'MainContent_BookTreeViewt0');"" href=""javascript:__doPostBack('ctl00$MainContent$BookTreeView','sBook Title')"">Book Title</a></td>
		</tr>
	</tbody></table><div id=""MainContent_BookTreeViewn0Nodes"" style=""display:block;"">
		<table style=""border-width:0;"" cellspacing=""0"" cellpadding=""0"">
			<tbody><tr>
				<td><div style=""width:20px;height:1px""></div></td><td><a id=""MainContent_BookTreeViewn1"" href=""javascript:TreeView_ToggleNode(MainContent_BookTreeView_Data,1,document.getElementById('MainContent_BookTreeViewn1'),' ',document.getElementById('MainContent_BookTreeViewn1Nodes'))""><img title=""Collapse Chapter 1"" style=""border-width:0;"" alt=""Collapse Chapter 1"" src=""/WebResource.axd?d=-n2KnhPEOy8tY2UhU96Dm0_29U_O0E7SS6V3wOrrqI9gktPKa67Rz7xU4BBL-V-ujIAc1B6YDnkehWQWJKnzV7-CTsOalBnSgEKo-VUJfSo1&amp;t=637113066486964599""></a></td><td style=""white-space:nowrap;""><a class=""MainContent_BookTreeView_0"" id=""MainContent_BookTreeViewt1"" onclick=""TreeView_SelectNode(MainContent_BookTreeView_Data, this,'MainContent_BookTreeViewt1');"" href=""javascript:__doPostBack('ctl00$MainContent$BookTreeView','sBook Title\\Chapter 1')"">Chapter 1</a></td>
			</tr>
		</tbody></table><div id=""MainContent_BookTreeViewn1Nodes"" style=""display:block;"">
			<table style=""border-width:0;"" cellspacing=""0"" cellpadding=""0"">
				<tbody><tr>
					<td><div style=""width:20px;height:1px""></div></td><td><div style=""width:20px;height:1px""></div></td><td><img alt="""" src=""/WebResource.axd?d=Vnw6Nul5Gi8dLBSg8ZsULQ9MvaqDydlccm5AXNPnWp_eYv9ZeMQBLvZo7LUleTfnEyO4dTVpZBKFjkgn7k2Wk7FmYC9TlLH8rcGpOR1m5881&amp;t=637113066486964599""></td><td style=""white-space:nowrap;""><a class=""MainContent_BookTreeView_0"" id=""MainContent_BookTreeViewt2"" onclick=""TreeView_SelectNode(MainContent_BookTreeView_Data, this,'MainContent_BookTreeViewt2');"" href=""javascript:__doPostBack('ctl00$MainContent$BookTreeView','sBook Title\\Chapter 1\\Section 1')"">Section 1</a></td>
				</tr>
			</tbody></table><table style=""border-width:0;"" cellspacing=""0"" cellpadding=""0"">
				<tbody><tr>
					<td><div style=""width:20px;height:1px""></div></td><td><div style=""width:20px;height:1px""></div></td><td><img alt="""" src=""/WebResource.axd?d=Vnw6Nul5Gi8dLBSg8ZsULQ9MvaqDydlccm5AXNPnWp_eYv9ZeMQBLvZo7LUleTfnEyO4dTVpZBKFjkgn7k2Wk7FmYC9TlLH8rcGpOR1m5881&amp;t=637113066486964599""></td><td style=""white-space:nowrap;""><a class=""MainContent_BookTreeView_0"" id=""MainContent_BookTreeViewt3"" onclick=""TreeView_SelectNode(MainContent_BookTreeView_Data, this,'MainContent_BookTreeViewt3');"" href=""javascript:__doPostBack('ctl00$MainContent$BookTreeView','sBook Title\\Chapter 1\\Section 2')"">Section 2</a></td>
				</tr>
			</tbody></table>
		</div><table style=""border-width:0;"" cellspacing=""0"" cellpadding=""0"">
			<tbody><tr>
				<td><div style=""width:20px;height:1px""></div></td><td><a id=""MainContent_BookTreeViewn4"" href=""javascript:TreeView_ToggleNode(MainContent_BookTreeView_Data,4,document.getElementById('MainContent_BookTreeViewn4'),' ',document.getElementById('MainContent_BookTreeViewn4Nodes'))""><img title=""Collapse Chapter 2"" style=""border-width:0;"" alt=""Collapse Chapter 2"" src=""/WebResource.axd?d=-n2KnhPEOy8tY2UhU96Dm0_29U_O0E7SS6V3wOrrqI9gktPKa67Rz7xU4BBL-V-ujIAc1B6YDnkehWQWJKnzV7-CTsOalBnSgEKo-VUJfSo1&amp;t=637113066486964599""></a></td><td style=""white-space:nowrap;""><a class=""MainContent_BookTreeView_0"" id=""MainContent_BookTreeViewt4"" onclick=""TreeView_SelectNode(MainContent_BookTreeView_Data, this,'MainContent_BookTreeViewt4');"" href=""javascript:__doPostBack('ctl00$MainContent$BookTreeView','sBook Title\\Chapter 2')"">Chapter 2</a></td>
			</tr>
		</tbody></table><div id=""MainContent_BookTreeViewn4Nodes"" style=""display:block;"">
			<table style=""border-width:0;"" cellspacing=""0"" cellpadding=""0"">
				<tbody><tr>
					<td><div style=""width:20px;height:1px""></div></td><td><div style=""width:20px;height:1px""></div></td><td><img alt="""" src=""/WebResource.axd?d=Vnw6Nul5Gi8dLBSg8ZsULQ9MvaqDydlccm5AXNPnWp_eYv9ZeMQBLvZo7LUleTfnEyO4dTVpZBKFjkgn7k2Wk7FmYC9TlLH8rcGpOR1m5881&amp;t=637113066486964599""></td><td style=""white-space:nowrap;""><a class=""MainContent_BookTreeView_0"" id=""MainContent_BookTreeViewt5"" onclick=""TreeView_SelectNode(MainContent_BookTreeView_Data, this,'MainContent_BookTreeViewt5');"" href=""javascript:__doPostBack('ctl00$MainContent$BookTreeView','sBook Title\\Chapter 2\\Section 1')"">Section 1</a></td>
				</tr>
			</tbody></table>
		</div>
	</div>
</div>"
%>
  </pre>
</asp:Content>
