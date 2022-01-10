<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreeViewSample.aspx.cs" Inherits="TreeViewSample.TreeViewSample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TreeView ID="TreeView1" runat="server">
                <Nodes>
                    <asp:TreeNode Text="Home" NavigateUrl="~/Home.aspx" Target="_blank" />
                    <asp:TreeNode Text="Employee" NavigateUrl="~/Employee.aspx" Target="_blank" />
                    <asp:TreeNode Text="Upload Resume" NavigateUrl="~/Upload_Resume.aspx" Target="_blank" />
                    <asp:TreeNode Text="Edit Resume" NavigateUrl="~/Edit_Resume.aspx" Target="_blank" />
                    <asp:TreeNode Text="View Resume" NavigateUrl="~/View_Resume.aspx" Target="_blank" />
                    <asp:TreeNode Text="Employer" NavigateUrl="~/Employer.aspx" Target="_blank">
                        <asp:TreeNode Text="Upload Job" NavigateUrl="~/Upload_Job.aspx" Target="_blank" />
                        <asp:TreeNode Text="Edit Job" NavigateUrl="~/Edit_Job.aspx" Target="_blank" />
                        <asp:TreeNode Text="View Job" NavigateUrl="~/View_Job.aspx" Target="_blank" />
                    </asp:TreeNode>
                    <asp:TreeNode Text="Admin" NavigateUrl="~/Admin.aspx" Target="_blank">
                        <asp:TreeNode Text="Add User" NavigateUrl="~/Add_User.aspx" Target="_blank" />
                        <asp:TreeNode Text="Edit User" NavigateUrl="~/Edit_Use.aspx" Target="_blank" />
                        <asp:TreeNode Text="View User" NavigateUrl="~/View_User.aspx" Target="_blank" />
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </div>
    </form>
</body>
</html>
