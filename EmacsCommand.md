<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
</head>
<body>
<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<Li> <a href="#sec-1"> 1. Files and Directories </a>
<ul>
<li><a href="#sec-1-1">1.1. Helm-files.el</a></li>
<li><a href="#sec-1-2">1.2. 目录遍历</a></li>
</ul>
</ Li>
<li><a href="#sec-2">2. 光标移动</a>
<ul>
<li><a href="#sec-2-1">2.1. smartparens.el</a></li>
<li><a href="#sec-2-2">2.2. lisp.el</a></li>
<li><a href="#sec-2-3">2.3. whitespace.el</a></li>
<li><a href="#sec-2-4">2.4. discover-my-major.el</a></li>
</ul>
</ Li>
<li><a href="#sec-3">3. 文本编辑</a>
<ul>
<li><a href="#sec-3-1">3.1. 删除命令</a></li>
<li><a href="#sec-3-2">3.2. 段落和区域操作</a></li>
<li><a href="#sec-3-3">3.3. 位置变换</a></li>
<li><a href="#sec-3-4">3.4. 大小写处理</a></li>
<li><a href="#sec-3-5">3.5. 矩形操作（列操作）</a></li>
<li><a href="#sec-3-6">3.6. 搜索</a></li>
</ul>
</ Li>
<li><a href="#sec-4">4. 撤销停止操作</a></li>
<li><a href="#sec-5">5. 全局grep</a></li>
<li><a href="#sec-6">6. buffer控制</a></li>
<li><a href="#sec-7">7. frame和buffer 的控制</a></li>
<li><a href="#sec-8">8. 文本阅读</a></li>
<li><a href="#sec-9">9. 编码</a></li>
<li><a href="#sec-10">10. 代码阅读</a></li>
<li><a href="#sec-11">11. Lisp代码编写支持</a></li>
<li><a href="#sec-12">12. HELP(帮助)</a></li>
<li><a href="#sec-13">13. helm</a></li>
<li><a href="#sec-14">14. projectile</a></li>
<li><a href="#sec-15">15. 分类不明确</a></li>
</ul>
</div>
</div>

<P> Most of these commands are available in this configuration file based on the </ p>

<H1 id = "files and directories aidsec-1namesec-1a"> files and directories <a id="sec-1" name="sec-1"> </a> </ h1>

<p>C-x C-f find-file</p>

<p>C-x C-v find-alternate-file</p>

<P> Cx i insert-file inserts the contents of a file at the cursor </ p>

<p>C-x C-s save-buffer</p>

<p>C-x C-w write-file</p>

<p>C-x C-c save-buffers-kill-emacs 存储所有修改，退出emacs</p>

<p>C-z 挂起emacs</p>

<p>S-^ kill-some-buffers</p>

<h2 id="helm-files.elaidsec-1-1namesec-1-1a">Helm-files.el<a id="sec-1-1" name="sec-1-1"></a></h2>

<P> Cx Cf put the cursor on a string in a buffer in the file name rule (/home/usr/a.txt),Cx Cf can open a file </ p>

<H2 id = "directory traversal aidsec-1-2namesec-1-2a"> directory traversal <a id="sec-1-2" name="sec-1-2"> </a> </ h2>

<P> Cx d directory open, place the cursor in the list of subdirectories, it commands to expand the contents of subdirectories </ p> In this buffer

<h1 id="光标移动aidsec-2namesec-2a">光标移动<a id="sec-2" name="sec-2"></a></h1>

<P> Cf forward-char move forward one character </ p>

<P> Cb backward-char move back one character </ p>

<p>C-p previous-line</p>

<p>C-n next-line</p>

<p>M-f forward-word</p>

<p>M-b backwoard-word</p>

<p>C-a beginning-of-line</p>

<p>C-e end-of-line</p>

<p>M-a backward-sentence</p>

<p>M-e org-forward-sentence</p>

<p>C-v scroll-up</p>

<p>M-v Scroll-down</p>

<p>C-x [ backward-page</p>

<p>C-x ] forward-page</p>

<p>M-&gt; end-of-buffer</p>

<p>M-&lt; beginning-of-buffer</p>

<p>C-l recenter</p>

<p>M-(a number) digi-argument </p>

<h2 id="smartparens.elaidsec-2-1namesec-2-1a">smartparens.el<a id="sec-2-1" name="sec-2-1"></a></h2>

<p>C-M-f</p>

<p>C-M-b</p>

<p>C-M-k</p>

<h2 id="lisp.elaidsec-2-2namesec-2-2a">lisp.el<a id="sec-2-2" name="sec-2-2"></a></h2>

<P> CM- @ mark-sexp (Note I have not take CM-SPC) </ p>

<P> CMa beginning-of-defun to the front of a function to </ p>

<p>C-M-e end-of-defun</p>

<p>C-M-h mark-defun</p>

<h2 id="whitespace.elaidsec-2-3namesec-2-3a">whitespace.el<a id="sec-2-3" name="sec-2-3"></a></h2>

<P> Cc w show spaces </ p>

<h2 id="discover-my-major.elaidsec-2-4namesec-2-4a">discover-my-major.el<a id="sec-2-4" name="sec-2-4"></a></h2>

<p>C-h h m discover-my-major</p>

<h1 id="文本编辑aidsec-3namesec-3a">文本编辑<a id="sec-3" name="sec-3"></a></h1>

<h2 id="删除命令aidsec-3-1namesec-3-1a">删除命令<a id="sec-3-1" name="sec-3-1"></a></h2>

<p>Del backward-delete char</p>

<p>C-d delete-char</p>

<p>M-d kill-word</p>

<p>M-<DEL> backard-kill-word</p>

<p>C-k kill-line</p>

<p>M-k kill-sentence</p>

<p>C-x Del backard-kill-sentence</p>

<p>C-y yank</p>

<p>C-w kill-region</p>

<pre><code>backward-kill-paragraph
kill-paragraph
</code></pre>

<H2 id = "paragraph and regional operations aidsec-3-2namesec-3-2a"> Paragraph and regional operations <a id="sec-3-2" name="sec-3-2"> </a> < / h2>

<p>C-@ set-mark Mark the beginning (or end) of a region.<br/>
C-Spaceset-mark Ibid. </p>

<p>C-x C-p mark-page Mark the current page. </p>

<p>C-x C-x exchange-point-and-make Exchange the location of the cursor and the mark. </p>

<p>C-x h mark-whole-buffer Mark the current buffer. </p>

<P> Mq fill-paragraph Reset the paragraph. When writing a long string of text, this command automatically document processing text block width of no more than 80 of </ p>

<p>M-g fill-region Reformatindividual paragraphs with region.</p>

<p>M-h mark-paragraph Mark select paragraph. </p>

<p>C-c i &#8217;ident-region-or-buffer </p>

<P> Cu C- @ return to the previous record nice site </ p>

<h2 id="位置变换aidsec-3-3namesec-3-3a">位置变换<a id="sec-3-3" name="sec-3-3"></a></h2>

<p>C-t transpose-chars </p>

<P> Mt transpose-words fairly intelligent exchange even a word </ p>

<p>C-x C-t transpose-lines</p>

<p>transpose-sentences</p>

<p>transpose-paragraphs</p>

<H2 id = "sensitive handling aidsec-3-4namesec-3-4a"> sensitive handling <a id="sec-3-4" name="sec-3-4"> </a> </ h2 >

<p>M-c capitalize-word</p>

<p>M-u upcase-word</p>

<p>M-l downcase-word</p>

<p>C-x C-l downcase-region</p>

<p>C-x C-u upcase-region</p>

<H2 id = "rectangular operation (column operations) aidsec-3-5namesec-3-5a"> Rectangular operation (column operations) <a id="sec-3-5" name="sec-3-5"> < / a> </ h2>

<P> emacs In order to begin with Cx r rectangle operations. First with C-space or C- @ set a mark, move the cursor to another point, column operations carried out with the following command: </ p>

<P> Cx rk cut a rectangular block </ p>

<P> Cx ry copy / paste a rectangular block </ p>

<P> Cx ro Insert a rectangular block </ p>

<P> Cx rc clear a rectangular block (it goes blank) </ p>

<P> Cx rt all the columns in the selected area before inserting characters like </ p>

<P> to confirm the query-replace replace </ p>

<h2 id="搜索aidsec-3-6namesec-3-6a">搜索<a id="sec-3-6" name="sec-3-6"></a></h2>

<p>C-s isearch-forward</p>

<p>C-r isearch-backward</p>

<p>Meta Stop a successful search</p>

<p>C-g Stop searching and return to the starting point.</p>

<p>Del Delete an incorrect character whilst searching.</p>

<H1 id = "Undo stop operation aidsec-4namesec-4a"> Undo stop operation <a id="sec-4" name="sec-4"> </a> </ h1>

<p>C-g keyboard-quit</p>

<p>C-x u advertised-undo</p>

<p>S-u revert-buffer</p>

<h1 id="全局grepaidsec-5namesec-5a">全局grep<a id="sec-5" name="sec-5"></a></h1>

<p>helm</p>

<p>helm-do-grep</p>

<p>C-c h M g s</p>

<p>projectile</p>

<p>projectile-grep</p>

<p>C-c p s g</p>

<h1 id="buffer控制aidsec-6namesec-6a">buffer控制<a id="sec-6" name="sec-6"></a></h1>

<p>S-u revert-buffer</p>

<p>C-x C-q Read-Only mode</p>

<p>discovery-my-major C-h m</p>

<p>使用helm-X命令，要从Emacs Command History跳到Emacs Command使用C-o</p>

<H1 id = "frame buffer and control aidsec-7namesec-7a"> frame buffer and control <a id="sec-7" name="sec-7"> </a> </ h1>

<P> Cx 5 2 to open a new frame (window) </ p>

<P> Cx 5 0 to switch off the current frame </ p>

<P> Cx 4 c - seemingly open the same buffer, and does not affect previous </ p>

<h1 id="文本阅读aidsec-8namesec-8a">文本阅读<a id="sec-8" name="sec-8"></a></h1>

<P> Cx Cq to enter the read-only mode </ p>

<h1 id="编码aidsec-9namesec-9a">编码<a id="sec-9" name="sec-9"></a></h1>

<P> Cx Cm f utf & # 8211; 8-unix RET (set-buffer-file-coding-system) - encoding when you change the file storage file </ p>

<P> Cx Cm c RET Cx Cw RET Save as specify the encoding (will prompt the current file encoding) </ p>

<P> Cx RET r (revert-buffer-with-coding-system) to open the file using the specified encoding </ p>

<H1 id = "code reader aidsec-10namesec-10a"> code reader <a id="sec-10" name="sec-10"> </a> </ h1>

<p>gtags</p>

<p>gtags-pop-stack M-*</p>

<P> M-. Go to a symbol achieve </ p>

<P> M-, find a reference to a symbol code </ p>

<H1 id = "lisp code is written to support aidsec-11namesec-11a"> Lisp code is written to support <a id="sec-11" name="sec-11"> </a> </ h1>

<P> Cu CMu find the first unbalanced defun </ p>

<p>C-M-q</p>

<P> Cx Ce evaluates an expression output in the echo area </ p>

<P> Cu Cx Ce evaluates an expression in the current output buffer </ p>

<P> Mx debug-on-entry indicates that when a function is called to enter debug mode, such as mouse-drag-region </ p>

<h1 id="help帮助aidsec-12namesec-12a">HELP(帮助)<a id="sec-12" name="sec-12"></a></h1>

<P> Ch f view a specific help function </ p>

<P> Ch v view of a variable with the help of </ p>

<P> Ch k key to view a help </ p>

<P> Ch p by topic keyword search Emacs Lisp standard library </ p>

<h1 id="helmaidsec-13namesec-13a">helm<a id="sec-13" name="sec-13"></a></h1>

<P> If you use the helm, both brought great convenience, it also brings a number of small changes in usage, such as </ p>

<P> Once you've installed emacs, and no additional configuration, you call a function interactively forward-line, </ p>

<P> want to pass a parameter of the method is Cu 4 Mx forward-line, now you practice Mx (false </ p>

<P> set bound to the helm-Mx), Cn Cp (if necessary Co handover candidate region), move the cursor to the Greek </ p>

<P> Select the desired command forward-line, and then press Cu, enter the parameters you want to enter. </ P>

<h1 id="projectileaidsec-14namesec-14a">projectile<a id="sec-14" name="sec-14"></a></h1>

<H1 id = "classification is not clear aidsec-15namesec-15a"> Classification is not clear <a id="sec-15" name="sec-15"> </a> </ h1>

<p>M-; 执行comment-dwim&#8211;2 </p>

<P> CX C- + using a larger font </ p>

<P> CX C- - use a smaller font </ p>

</body>
</html>