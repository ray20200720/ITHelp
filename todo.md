
# Table of Contents

1.  [[ASP.NET] MasterPage.master Error](#orgf3f5151)
2.  [[Emacs] Emacs + git](#org0687f37)
3.  [[Visual Studio] VS2008 Upgrade to VS2019](#org653a314)
4.  [[Emacs] How do I fix "incomprehensible buffer" error when running list-packages?](#org72e7009)
5.  [[ASP.NET] How can I change Visual Studio's build order for reflection based project dependencies?](#org31ff3db)
6.  [[Emacs] org mode](#org6911d17)
7.  [[Emacs] relative line number](#orgf95d518)
8.  [[Emacs] [Swap Control and CapsLock](https://www.emacswiki.org/emacs/MovingTheCtrlKey)](#org0ca4cc9)
9.  [[Emacs] Exporting from org-mode to markdown](#org989b063)



<a id="orgf3f5151"></a>

# TODO [ASP.NET] MasterPage.master Error

<link rel="Stylesheet" href="CommonControl/jquery-ui-1.11.4/jquery-ui.css" />


<a id="org0687f37"></a>

# TODO [Emacs] Emacs + git


<a id="org653a314"></a>

# DONE [Visual Studio] VS2008 Upgrade to VS2019

1.  modify sln:

Microsoft Visual Studio Solution File, Format Version 10.00
Microsoft Visual Studio Solution File, Format Version 11.00

1.  modify csproj:

<Project ToolsVersion="3.5" DefaultTargets="Build" xmlns="<http://schemas.microsoft.com/developer/msbuild/2003>">
<Project ToolsVersion="4.0" DefaultTargets="Build" xmlns="<http://schemas.microsoft.com/developer/msbuild/2003>">

1.  remark csproj:

<ProjectTypeGuids>{14822709-B5A1-4724-98CA-57A101D1B079};{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}</ProjectTypeGuids>

1.  sln: project dependencies

Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "ITHelp.CheckModule.Filter", "ITHelp.CheckModule\ITHelp.CheckModule.Filter\ITHelp.CheckModule.Filter.csproj", "{616FFBB4-95D3-4BEA-8FF6-AB8C04F472BE}"
    ProjectSection(ProjectDependencies) = postProject
	{470AB98E-D4F7-48EE-B8EE-AB025892D618} = {470AB98E-D4F7-48EE-B8EE-AB025892D618}
    EndProjectSection
EndProject
ITHelp.CheckModule.Filter -> Build Dependencies -> Project Dependencies -> Checked  
5.Open Workflow2008.csproj then save Workflow2008.sln


<a id="org72e7009"></a>

# DONE [Emacs] [How do I fix "incomprehensible buffer" error when running list-packages?](https://emacs.stackexchange.com/questions/61997/how-do-i-fix-incomprehensible-buffer-error-when-running-list-packages)


<a id="org31ff3db"></a>

# DONE [ASP.NET] [How can I change Visual Studio's build order for reflection based project dependencies?](https://stackoverflow.com/questions/35280237/how-can-i-change-visual-studios-build-order-for-reflection-based-project-depend)


<a id="org6911d17"></a>

# DONE [Emacs] org mode

-   [Org Mode Official WebSite](https://orgmode.org/)
-   [Org Mode quick start](https://orgmode.org/quickstart.html)
-   [Org Mode guide](https://orgmode.org/guide/)
-   [The Org Manual](https://orgmode.org/manual/)


<a id="orgf95d518"></a>

# DONE [Emacs] relative line number

[Relative Line Numbers In Emacs](https://stackoverflow.com/questions/6874516/relative-line-numbers-in-emacs)
[Relative Line Numbers In Emacs](<https://stackoverflow.com/questions/6874516/relative-line-numbers-in-emacs>)

    (global-display-line-numbers-mode 1)
    (setq display-line-numbers-type 'relative)


<a id="org0ca4cc9"></a>

# DONE [Emacs] [Swap Control and CapsLock](<https://www.emacswiki.org/emacs/MovingTheCtrlKey>)

-   In Antix:
    setxkbmap -option ctrl:swapcaps     # Swap Left Control and Caps Lock
    setxkbmap -option ctrl:nocaps       # Make Caps Lock a Control key


<a id="org989b063"></a>

# DONE [Emacs] [Exporting from org-mode to markdown](https://emacs.stackexchange.com/questions/4279/exporting-from-org-mode-to-markdown)

