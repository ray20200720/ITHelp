namespace ITHelpFormsApp;

partial class Form1
{
    /// <summary>
    ///  Required designer variable.
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    /// <summary>
    ///  Clean up any resources being used.
    /// </summary>
    /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
    protected override void Dispose(bool disposing)
    {
        if (disposing && (components != null))
        {
            components.Dispose();
        }
        base.Dispose(disposing);
    }

    #region Windows Form Designer generated code

    /// <summary>
    ///  Required method for Designer support - do not modify
    ///  the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
        this.menuStrip1 = new System.Windows.Forms.MenuStrip();
        this.aSPNETToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
        this.nETToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
        this.cToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
        this.winFormToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
        this.winFromToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
        this.webFromToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
        this.menuStrip1.SuspendLayout();
        this.SuspendLayout();
        // 
        // menuStrip1
        // 
        this.menuStrip1.ImageScalingSize = new System.Drawing.Size(40, 40);
        this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
        this.aSPNETToolStripMenuItem,
        this.nETToolStripMenuItem});
        this.menuStrip1.Location = new System.Drawing.Point(0, 0);
        this.menuStrip1.Name = "menuStrip1";
        this.menuStrip1.Size = new System.Drawing.Size(800, 52);
        this.menuStrip1.TabIndex = 1;
        this.menuStrip1.Text = "menuStrip1";
        // 
        // aSPNETToolStripMenuItem
        // 
        this.aSPNETToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
        this.cToolStripMenuItem});
        this.aSPNETToolStripMenuItem.Name = "aSPNETToolStripMenuItem";
        this.aSPNETToolStripMenuItem.Size = new System.Drawing.Size(161, 48);
        this.aSPNETToolStripMenuItem.Text = "ASP.NET";
        // 
        // nETToolStripMenuItem
        // 
        this.nETToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
        this.winFormToolStripMenuItem,
        this.winFromToolStripMenuItem,
        this.webFromToolStripMenuItem});
        this.nETToolStripMenuItem.Name = "nETToolStripMenuItem";
        this.nETToolStripMenuItem.Size = new System.Drawing.Size(105, 48);
        this.nETToolStripMenuItem.Text = ".NET";
        // 
        // cToolStripMenuItem
        // 
        this.cToolStripMenuItem.Name = "cToolStripMenuItem";
        this.cToolStripMenuItem.Size = new System.Drawing.Size(448, 54);
        this.cToolStripMenuItem.Text = "C#";
        this.cToolStripMenuItem.Click += new System.EventHandler(this.cToolStripMenuItem_Click);
        // 
        // winFormToolStripMenuItem
        // 
        this.winFormToolStripMenuItem.Name = "winFormToolStripMenuItem";
        this.winFormToolStripMenuItem.Size = new System.Drawing.Size(448, 54);
        this.winFormToolStripMenuItem.Text = "Console";
        // 
        // winFromToolStripMenuItem
        // 
        this.winFromToolStripMenuItem.Name = "winFromToolStripMenuItem";
        this.winFromToolStripMenuItem.Size = new System.Drawing.Size(448, 54);
        this.winFromToolStripMenuItem.Text = "WinFrom";
        // 
        // webFromToolStripMenuItem
        // 
        this.webFromToolStripMenuItem.Name = "webFromToolStripMenuItem";
        this.webFromToolStripMenuItem.Size = new System.Drawing.Size(448, 54);
        this.webFromToolStripMenuItem.Text = "WebFrom";
        // 
        // Form1
        // 
        this.AutoScaleDimensions = new System.Drawing.SizeF(18F, 38F);
        this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
        this.ClientSize = new System.Drawing.Size(800, 450);
        this.Controls.Add(this.menuStrip1);
        this.MainMenuStrip = this.menuStrip1;
        this.Name = "Form1";
        this.Text = "Form1";
        this.menuStrip1.ResumeLayout(false);
        this.menuStrip1.PerformLayout();
        this.ResumeLayout(false);
        this.PerformLayout();
    }

    private MenuStrip menuStrip1;
    private ToolStripMenuItem aSPNETToolStripMenuItem;
    private ToolStripMenuItem cToolStripMenuItem;
    private ToolStripMenuItem nETToolStripMenuItem;
    private ToolStripMenuItem winFormToolStripMenuItem;
    private ToolStripMenuItem winFromToolStripMenuItem;
    private ToolStripMenuItem webFromToolStripMenuItem;

    #endregion
}
