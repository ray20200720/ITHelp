
# Table of Contents

1.  [Basic](#org5dd3887)
    1.  [Hot-key](#org23d8e3b)
2.  [How to install evil mode manually](#orgaa994e5)
3.  [evil-mode](#orgccefb4f)
    1.  [Hot-key](#org52f9e81)
    2.  [Reference](#org3508831)
4.  [org-mode](#orge5f1d1e)
    1.  [Hot-key](#orgf22040b)
    2.  [reference](#org7442613)
5.  [Relative Line Numbers In Emacs](#org336cd00)
6.  [Reference](#org1274311)



<a id="org5dd3887"></a>

# Basic


<a id="org23d8e3b"></a>

## Hot-key

-   S-Right/Left/Up/Down : select words
-   M-w : [kill-ring-save] copy
-   C-y : [yank] paste
-   C-h : [help]
    -   ? : display detail
    -   v : [describe-variable]
    -   f : [describe-function]
    -   k : [describe-key]


<a id="orgaa994e5"></a>

# How to install evil mode manually

git clone &#x2013;depth 1 <https://github.com/emacs-evil/evil.git>

mkdir ~/.emacs.d/init.el

(add-to-list 'load-path "~/Project/ITHelp/SampleCode/Emacs/evil")
(require 'evil)
(evil-mode 1)


<a id="orgccefb4f"></a>

# evil-mode


<a id="org52f9e81"></a>

## Hot-key

-   C-b : Page Up
-   C-d : 1/2 Page Up
-   C-f : Page Down
-   C-u : 1/2 Page Down
-   ) : jump forward one sentence
-   ( : jump backward one sentence
-   { : jump forward one paragraph
-   } : jump backward one paragraph
-   H : Jump to the top of the screen
-   M : Jump to the middle of the screen
-   L : Jump to the bottom of the screen


<a id="org3508831"></a>

## Reference

-   [How To Page Up and Page Down In Vim/Vi?](<https://linuxtect.com/how-to-page-up-and-page-down-in-vim-vi/>)
-   [Vim Tip - Moving around](<https://vim.fandom.com/wiki/Moving_around>)


<a id="orge5f1d1e"></a>

# [org-mode](https://orgmode.org/)


<a id="orgf22040b"></a>

## Hot-key

-   S-Left/Right :
    1.  in head \* : [org-todo]
    2.  in list : [org-do-promote/org-do-demote]
    3.  in table : [org-table-move-column-left/right]

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />

<col  class="org-right" />
</colgroup>
<tbody>
<tr>
<td class="org-right">A</td>
<td class="org-right">B</td>
</tr>


<tr>
<td class="org-right">1</td>
<td class="org-right">2</td>
</tr>
</tbody>
</table>

-   M-Enter
-   [org-open-at-point] : C-c C-o &#x2014; open link
-   [org-insert-link]  C-c C-l : edit link
-   [org-todo]       : C-c C-t  add "TODO"
-   [org-schedule]   : C-c C-s  
    -   < : backward one month
    -   > : forward one month
    -   ? : info
    -   o : other day
    -   . : today
-   [org-deadline]   : C-c C-d
-   [org-goto]       : C-c C-j
-   [org-time-stamp] : C-c .

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">org-todo</td>
<td class="org-left">S-Left/Right</td>
<td class="org-left">add "TODO" in head</td>
</tr>


<tr>
<td class="org-left">org-do-promote/org-do-demote</td>
<td class="org-left">S-Left/Right</td>
<td class="org-left">in list</td>
</tr>


<tr>
<td class="org-left">org-table-move-column-left/right</td>
<td class="org-left">S-Left/Right</td>
<td class="org-left">in table</td>
</tr>


<tr>
<td class="org-left">org-open-at-point</td>
<td class="org-left">C-c C-o</td>
<td class="org-left">open link</td>
</tr>


<tr>
<td class="org-left">org-insert-link</td>
<td class="org-left">C-c C-l</td>
<td class="org-left">insert a link</td>
</tr>


<tr>
<td class="org-left">org-todo</td>
<td class="org-left">C-c C-t</td>
<td class="org-left">add "TODO"</td>
</tr>


<tr>
<td class="org-left">org-schedule</td>
<td class="org-left">C-c C-s</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><</td>
<td class="org-left">backward one month</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">></td>
<td class="org-left">forward one month</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">?</td>
<td class="org-left">info</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">o</td>
<td class="org-left">other day</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">.</td>
<td class="org-left">today</td>
</tr>


<tr>
<td class="org-left">org-deadline</td>
<td class="org-left">C-c C-d</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">org-goto</td>
<td class="org-left">C-c C-j</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">org-time-stamp</td>
<td class="org-left">C-c .</td>
<td class="org-left"><span class="timestamp-wrapper"><span class="timestamp">&lt;2022-01-18 Tue&gt;</span></span></td>
</tr>


<tr>
<td class="org-left">org-time-stamp-inactive</td>
<td class="org-left">C-c !</td>
<td class="org-left"><span class="timestamp-wrapper"><span class="timestamp">[2022-01-19 Wed]</span></span></td>
</tr>


<tr>
<td class="org-left">org-date-from-calendar</td>
<td class="org-left">C-c <</td>
<td class="org-left"><span class="timestamp-wrapper"><span class="timestamp">&lt;2022-01-20 Thu&gt;</span></span></td>
</tr>


<tr>
<td class="org-left">org-goto-calendar</td>
<td class="org-left">C-c ></td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">org-open-at-point</td>
<td class="org-left">C-c C-o</td>
<td class="org-left">Access the agenda for the date</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="org7442613"></a>

## reference

-   [Org Mode Official WebSite](https://orgmode.org/)
-   [Org Mode quick start](https://orgmode.org/quickstart.html)
-   [Org Mode guide](https://orgmode.org/guide/)
-   [The Org Manual](<https://orgmode.org/manual/>)
-   [The Org Manual](<https://www.gnu.org/software/emacs/manual/html_mono/org.html>)
-   [Exporting from org-mode to markdown](<https://emacs.stackexchange.com/questions/4279/exporting-from-org-mode-to-markdown>)
    1.  M-x customize-option
        1.  org-export-backends
        2.  Enter
    2.  M-x org-md-export-to-markdown


<a id="org336cd00"></a>

# [Relative Line Numbers In Emacs](https://stackoverflow.com/questions/6874516/relative-line-numbers-in-emacs)

[Relative Line Numbers In Emacs](<https://stackoverflow.com/questions/6874516/relative-line-numbers-in-emacs>)

    (global-display-line-numbers-mode 1)
    (setq display-line-numbers-type 'relative)


<a id="org1274311"></a>

# Reference

[EMACS-DOCUMENT](<http://blog.lujun9972.win/emacs-document/>)    
[一年成为Emacs高手 (像神一样使用编辑器)](<https://github.com/redguardtoo/mastering-emacs-in-one-year-guide/blob/master/guide-zh.org>)
[Evil](<https://evil.readthedocs.io/en/latest/index.html>)
[MELPA](<https://melpa.org/>)
[EMACS 新思維](<https://ithelp.ithome.com.tw/users/20084176/ironman/674?page=1>)

