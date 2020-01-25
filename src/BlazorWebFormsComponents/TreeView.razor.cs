using BlazorWebFormsComponents.Enums;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Rendering;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace BlazorWebFormsComponents
{
	public partial class TreeView : BaseWebFormsComponent, IHasStyle
	{

		[Parameter]
		public TreeNodeCollection Nodes { get; set; } = new TreeNodeCollection();

		[Parameter]
		public RenderFragment ChildContent { get; set; }

		[Parameter]
		public DataBindings DataBindings { get; set; }

		[Parameter]
		public object DataSource { get; set; }

		[Parameter]
		public TreeNodeTypes ShowCheckBoxes { get; set; }

		[Parameter]
		public bool ShowExpandCollapse { get; set; } = true;

		#region IHasStyle

		[Parameter] public WebColor BackColor { get; set; }
		[Parameter] public WebColor BorderColor { get; set; }
		[Parameter] public BorderStyle BorderStyle { get; set; }
		[Parameter] public Unit BorderWidth { get; set; }
		[Parameter] public string CssClass { get; set; }
		[Parameter] public WebColor ForeColor { get; set; }
		[Parameter] public Unit Height { get; set; }
		[Parameter] public Unit Width { get; set; }
		[Parameter] public bool Font_Bold { get; set; }
		[Parameter] public bool Font_Italic { get; set; }
		[Parameter] public string Font_Names { get; set; }
		[Parameter] public bool Font_Overline { get; set; }
		[Parameter] public FontUnit Font_Size { get; set; }
		[Parameter] public bool Font_Strikeout { get; set; }
		[Parameter] public bool Font_Underline { get; set; }

		#endregion

		#region Events

		protected override async Task OnAfterRenderAsync(bool firstRender)
		{

			await base.OnAfterRenderAsync(firstRender);

			if (firstRender && DataSource != null) await DataBind();

		}

		[Parameter]
		public EventHandler<TreeNodeEventArgs> OnTreeNodeExpanded { get; set; }

		[Parameter]
		public EventHandler<TreeNodeEventArgs> OnTreeNodeCollapsed { get; set; }

		[Parameter]
		public EventHandler<TreeNodeEventArgs> OnTreeNodeCheckChanged { get; set; }

		#endregion

		#region DataBinding

		public RenderFragment ChildNodesRenderFragment { get; set; }

		private new Task DataBind() {

			if (DataSource is XmlDocument) return DataBindXml(DataSource as XmlDocument);

			return Task.CompletedTask;

		}

		private Task DataBindXml(XmlDocument src) {

			ChildNodesRenderFragment = b =>
			{
				var seq = 100;
				if (_TreeNodeBindings?.Count > 0)
				{
					var nodeName = _TreeNodeBindings[0].DataMember;
					var attrName = _TreeNodeBindings[0].TextField;
					var nodes = src.SelectNodes($".//{nodeName}");
					foreach (XmlElement node in nodes)
					{
						b.OpenRegion(seq++);
						b.OpenComponent<TreeNode>(seq++);
						b.AddAttribute(seq++, "Value", node.GetAttribute(attrName));
						b.AddAttribute(seq++, "Text", node.GetAttribute(attrName));
						//seq = RenderNodes(node, b, seq, 1);
						b.CloseComponent();
						b.CloseRegion();
					}
				}
				Console.WriteLine("=========== FRAMES ==============");
				foreach (var frame in b.GetFrames().Array)
				{
					Console.WriteLine($"Frame {frame.Sequence} {frame.FrameType} {frame.ComponentId} {frame.ComponentSubtreeLength}");
				}
			};

			StateHasChanged();

			return Task.CompletedTask;

			int RenderNodes(XmlElement src, RenderTreeBuilder b, int seq, int level)
			{
				if (level < _TreeNodeBindings.Count)
				{
					var nodeName = _TreeNodeBindings[level].DataMember;
					var attrName = _TreeNodeBindings[level].TextField;
					var nodes = src.SelectNodes($".//{nodeName}");
					foreach (XmlElement node in nodes)
					{
						b.OpenComponent<TreeNode>(seq++);
						b.AddAttribute(seq++, "Value", node.GetAttribute(attrName));
						b.AddAttribute(seq++, "Text", node.GetAttribute(attrName));
						b.CloseComponent();
					}
				}

				return seq;
			}
		}

		private List<TreeNodeBinding> _TreeNodeBindings = new List<TreeNodeBinding>();
		internal void AddTreeNodeBinding(TreeNodeBinding treeNodeBinding)
		{
			_TreeNodeBindings.Add(treeNodeBinding);
		}

		#endregion

	}


}



