<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><!-- 
This manual (28 May 2021) is for GNU M4 (version
1.4.19), a package containing an implementation of the m4 macro
language.

Copyright (C) 1989-1994, 2004-2014, 2016-2017, 2020-2021
Free Software Foundation, Inc.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License,
Version 1.3 or any later version published by the Free Software
Foundation; with no Invariant Sections, no Front-Cover Texts, and no
Back-Cover Texts.  A copy of the license is included in the section
entitled "GNU Free Documentation License." --><!-- Created by GNU Texinfo 6.7, http://www.gnu.org/software/texinfo/ --><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GNU M4 1.4.19 macro processor</title>

<meta name="description" content="GNU M4 1.4.19 macro processor">
<meta name="keywords" content="GNU M4 1.4.19 macro processor">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<link href="#Top" rel="start" title="Top">
<link href="#Indices" rel="index" title="Indices">
<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<link href="https://www.gnu.org/manual" rel="up" title="(dir)">
<style type="text/css">
<!--
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
div.lisp {margin-left: 3.2em}
kbd {font-style: oblique}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
ul.no-bullet {list-style: none}
-->
</style>
<link rel="stylesheet" type="text/css" href="GNU%20M4%201.4.19%20macro%20processor_files/manual.css">


</head>

<body lang="en">
<h1 class="settitle" align="center">GNU M4 1.4.19 macro processor</h1>








<span id="SEC_Contents"></span>
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="no-bullet">
  <li><a id="toc-Introduction-and-preliminaries" href="#Preliminaries">1 Introduction and preliminaries</a>
  <ul class="no-bullet">
    <li><a id="toc-Introduction-to-m4" href="#Intro">1.1 Introduction to <code>m4</code></a></li>
    <li><a id="toc-Historical-references" href="#History">1.2 Historical references</a></li>
    <li><a id="toc-Problems-and-bugs" href="#Bugs">1.3 Problems and bugs</a></li>
    <li><a id="toc-Using-this-manual" href="#Manual">1.4 Using this manual</a></li>
  </ul></li>
  <li><a id="toc-Invoking-m4-1" href="#Invoking-m4">2 Invoking <code>m4</code></a>
  <ul class="no-bullet">
    <li><a id="toc-Command-line-options-for-operation-modes" href="#Operation-modes">2.1 Command line options for operation modes</a></li>
    <li><a id="toc-Command-line-options-for-preprocessor-features" href="#Preprocessor-features">2.2 Command line options for preprocessor features</a></li>
    <li><a id="toc-Command-line-options-for-limits-control" href="#Limits-control">2.3 Command line options for limits control</a></li>
    <li><a id="toc-Command-line-options-for-frozen-state" href="#Frozen-state">2.4 Command line options for frozen state</a></li>
    <li><a id="toc-Command-line-options-for-debugging" href="#Debugging-options">2.5 Command line options for debugging</a></li>
    <li><a id="toc-Specifying-input-files-on-the-command-line" href="#Command-line-files">2.6 Specifying input files on the command line</a></li>
  </ul></li>
  <li><a id="toc-Lexical-and-syntactic-conventions" href="#Syntax">3 Lexical and syntactic conventions</a>
  <ul class="no-bullet">
    <li><a id="toc-Macro-names" href="#Names">3.1 Macro names</a></li>
    <li><a id="toc-Quoting-input-to-m4" href="#Quoted-strings">3.2 Quoting input to <code>m4</code></a></li>
    <li><a id="toc-Comments-in-m4-input" href="#Comments">3.3 Comments in <code>m4</code> input</a></li>
    <li><a id="toc-Other-kinds-of-input-tokens" href="#Other-tokens">3.4 Other kinds of input tokens</a></li>
    <li><a id="toc-How-m4-copies-input-to-output" href="#Input-processing">3.5 How <code>m4</code> copies input to output</a></li>
  </ul></li>
  <li><a id="toc-How-to-invoke-macros" href="#Macros">4 How to invoke macros</a>
  <ul class="no-bullet">
    <li><a id="toc-Macro-invocation" href="#Invocation">4.1 Macro invocation</a></li>
    <li><a id="toc-Preventing-macro-invocation" href="#Inhibiting-Invocation">4.2 Preventing macro invocation</a></li>
    <li><a id="toc-Macro-arguments" href="#Macro-Arguments">4.3 Macro arguments</a></li>
    <li><a id="toc-On-Quoting-Arguments-to-macros" href="#Quoting-Arguments">4.4 On Quoting Arguments to macros</a></li>
    <li><a id="toc-Macro-expansion-1" href="#Macro-expansion">4.5 Macro expansion</a></li>
  </ul></li>
  <li><a id="toc-How-to-define-new-macros" href="#Definitions">5 How to define new macros</a>
  <ul class="no-bullet">
    <li><a id="toc-Defining-a-macro" href="#Define">5.1 Defining a macro</a></li>
    <li><a id="toc-Arguments-to-macros" href="#Arguments">5.2 Arguments to macros</a></li>
    <li><a id="toc-Special-arguments-to-macros" href="#Pseudo-Arguments">5.3 Special arguments to macros</a></li>
    <li><a id="toc-Deleting-a-macro" href="#Undefine">5.4 Deleting a macro</a></li>
    <li><a id="toc-Renaming-macros" href="#Defn">5.5 Renaming macros</a></li>
    <li><a id="toc-Temporarily-redefining-macros" href="#Pushdef">5.6 Temporarily redefining macros</a></li>
    <li><a id="toc-Indirect-call-of-macros" href="#Indir">5.7 Indirect call of macros</a></li>
    <li><a id="toc-Indirect-call-of-builtins" href="#Builtin">5.8 Indirect call of builtins</a></li>
  </ul></li>
  <li><a id="toc-Conditionals_002c-loops_002c-and-recursion" href="#Conditionals">6 Conditionals, loops, and recursion</a>
  <ul class="no-bullet">
    <li><a id="toc-Testing-if-a-macro-is-defined" href="#Ifdef">6.1 Testing if a macro is defined</a></li>
    <li><a id="toc-If_002delse-construct_002c-or-multibranch" href="#Ifelse">6.2 If-else construct, or multibranch</a></li>
    <li><a id="toc-Recursion-in-m4" href="#Shift">6.3 Recursion in <code>m4</code></a></li>
    <li><a id="toc-Iteration-by-counting" href="#Forloop">6.4 Iteration by counting</a></li>
    <li><a id="toc-Iteration-by-list-contents" href="#Foreach">6.5 Iteration by list contents</a></li>
    <li><a id="toc-Working-with-definition-stacks" href="#Stacks">6.6 Working with definition stacks</a></li>
    <li><a id="toc-Building-macros-with-macros" href="#Composition">6.7 Building macros with macros</a></li>
  </ul></li>
  <li><a id="toc-How-to-debug-macros-and-input" href="#Debugging">7 How to debug macros and input</a>
  <ul class="no-bullet">
    <li><a id="toc-Displaying-macro-definitions" href="#Dumpdef">7.1 Displaying macro definitions</a></li>
    <li><a id="toc-Tracing-macro-calls" href="#Trace">7.2 Tracing macro calls</a></li>
    <li><a id="toc-Controlling-debugging-output" href="#Debug-Levels">7.3 Controlling debugging output</a></li>
    <li><a id="toc-Saving-debugging-output" href="#Debug-Output">7.4 Saving debugging output</a></li>
  </ul></li>
  <li><a id="toc-Input-control" href="#Input-Control">8 Input control</a>
  <ul class="no-bullet">
    <li><a id="toc-Deleting-whitespace-in-input" href="#Dnl">8.1 Deleting whitespace in input</a></li>
    <li><a id="toc-Changing-the-quote-characters" href="#Changequote">8.2 Changing the quote characters</a></li>
    <li><a id="toc-Changing-the-comment-delimiters" href="#Changecom">8.3 Changing the comment delimiters</a></li>
    <li><a id="toc-Changing-the-lexical-structure-of-words" href="#Changeword">8.4 Changing the lexical structure of words</a></li>
    <li><a id="toc-Saving-text-until-end-of-input" href="#M4wrap">8.5 Saving text until end of input</a></li>
  </ul></li>
  <li><a id="toc-File-inclusion" href="#File-Inclusion">9 File inclusion</a>
  <ul class="no-bullet">
    <li><a id="toc-Including-named-files" href="#Include">9.1 Including named files</a></li>
    <li><a id="toc-Searching-for-include-files" href="#Search-Path">9.2 Searching for include files</a></li>
  </ul></li>
  <li><a id="toc-Diverting-and-undiverting-output" href="#Diversions">10 Diverting and undiverting output</a>
  <ul class="no-bullet">
    <li><a id="toc-Diverting-output" href="#Divert">10.1 Diverting output</a></li>
    <li><a id="toc-Undiverting-output" href="#Undivert">10.2 Undiverting output</a></li>
    <li><a id="toc-Diversion-numbers" href="#Divnum">10.3 Diversion numbers</a></li>
    <li><a id="toc-Discarding-diverted-text" href="#Cleardivert">10.4 Discarding diverted text</a></li>
  </ul></li>
  <li><a id="toc-Macros-for-text-handling" href="#Text-handling">11 Macros for text handling</a>
  <ul class="no-bullet">
    <li><a id="toc-Calculating-length-of-strings" href="#Len">11.1 Calculating length of strings</a></li>
    <li><a id="toc-Searching-for-substrings" href="#Index-macro">11.2 Searching for substrings</a></li>
    <li><a id="toc-Searching-for-regular-expressions" href="#Regexp">11.3 Searching for regular expressions</a></li>
    <li><a id="toc-Extracting-substrings" href="#Substr">11.4 Extracting substrings</a></li>
    <li><a id="toc-Translating-characters" href="#Translit">11.5 Translating characters</a></li>
    <li><a id="toc-Substituting-text-by-regular-expression" href="#Patsubst">11.6 Substituting text by regular expression</a></li>
    <li><a id="toc-Formatting-strings-_0028printf_002dlike_0029" href="#Format">11.7 Formatting strings (printf-like)</a></li>
  </ul></li>
  <li><a id="toc-Macros-for-doing-arithmetic" href="#Arithmetic">12 Macros for doing arithmetic</a>
  <ul class="no-bullet">
    <li><a id="toc-Decrement-and-increment-operators" href="#Incr">12.1 Decrement and increment operators</a></li>
    <li><a id="toc-Evaluating-integer-expressions" href="#Eval">12.2 Evaluating integer expressions</a></li>
  </ul></li>
  <li><a id="toc-Macros-for-running-shell-commands" href="#Shell-commands">13 Macros for running shell commands</a>
  <ul class="no-bullet">
    <li><a id="toc-Determining-the-platform" href="#Platform-macros">13.1 Determining the platform</a></li>
    <li><a id="toc-Executing-simple-commands" href="#Syscmd">13.2 Executing simple commands</a></li>
    <li><a id="toc-Reading-the-output-of-commands" href="#Esyscmd">13.3 Reading the output of commands</a></li>
    <li><a id="toc-Exit-status" href="#Sysval">13.4 Exit status</a></li>
    <li><a id="toc-Making-temporary-files" href="#Mkstemp">13.5 Making temporary files</a></li>
  </ul></li>
  <li><a id="toc-Miscellaneous-builtin-macros" href="#Miscellaneous">14 Miscellaneous builtin macros</a>
  <ul class="no-bullet">
    <li><a id="toc-Printing-error-messages" href="#Errprint">14.1 Printing error messages</a></li>
    <li><a id="toc-Printing-current-location" href="#Location">14.2 Printing current location</a></li>
    <li><a id="toc-Exiting-from-m4" href="#M4exit">14.3 Exiting from <code>m4</code></a></li>
  </ul></li>
  <li><a id="toc-Fast-loading-of-frozen-state" href="#Frozen-files">15 Fast loading of frozen state</a>
  <ul class="no-bullet">
    <li><a id="toc-Using-frozen-files-1" href="#Using-frozen-files">15.1 Using frozen files</a></li>
    <li><a id="toc-Frozen-file-format-1" href="#Frozen-file-format">15.2 Frozen file format</a></li>
  </ul></li>
  <li><a id="toc-Compatibility-with-other-versions-of-m4" href="#Compatibility">16 Compatibility with other versions of <code>m4</code></a>
  <ul class="no-bullet">
    <li><a id="toc-Extensions-in-GNU-M4" href="#Extensions">16.1 Extensions in GNU M4</a></li>
    <li><a id="toc-Facilities-in-System-V-m4-not-in-GNU-m4" href="#Incompatibilities">16.2 Facilities in System V <code>m4</code> not in GNU <code>m4</code></a></li>
    <li><a id="toc-Other-incompatibilities" href="#Other-Incompatibilities">16.3 Other incompatibilities</a></li>
  </ul></li>
  <li><a id="toc-Correct-version-of-some-examples" href="#Answers">17 Correct version of some examples</a>
  <ul class="no-bullet">
    <li><a id="toc-Solution-for-exch" href="#Improved-exch">17.1 Solution for <code>exch</code></a></li>
    <li><a id="toc-Solution-for-forloop" href="#Improved-forloop">17.2 Solution for <code>forloop</code></a></li>
    <li><a id="toc-Solution-for-foreach" href="#Improved-foreach">17.3 Solution for <code>foreach</code></a></li>
    <li><a id="toc-Solution-for-copy" href="#Improved-copy">17.4 Solution for <code>copy</code></a></li>
    <li><a id="toc-Solution-for-m4wrap" href="#Improved-m4wrap">17.5 Solution for <code>m4wrap</code></a></li>
    <li><a id="toc-Solution-for-cleardivert" href="#Improved-cleardivert">17.6 Solution for <code>cleardivert</code></a></li>
    <li><a id="toc-Solution-for-capitalize" href="#Improved-capitalize">17.7 Solution for <code>capitalize</code></a></li>
    <li><a id="toc-Solution-for-fatal_005ferror" href="#Improved-fatal_005ferror">17.8 Solution for <code>fatal_error</code></a></li>
  </ul></li>
  <li><a id="toc-How-to-make-copies-of-the-overall-M4-package" href="#Copying-This-Package">Appendix A How to make copies of the overall M4 package</a>
  <ul class="no-bullet">
    <li><a id="toc-License-for-copying-the-M4-package" href="#GNU-General-Public-License">A.1 License for copying the M4 package</a></li>
  </ul></li>
  <li><a id="toc-How-to-make-copies-of-this-manual" href="#Copying-This-Manual">Appendix B How to make copies of this manual</a>
  <ul class="no-bullet">
    <li><a id="toc-License-for-copying-this-manual" href="#GNU-Free-Documentation-License">B.1 License for copying this manual</a></li>
  </ul></li>
  <li><a id="toc-Indices-of-concepts-and-macros" href="#Indices">Appendix C Indices of concepts and macros</a>
  <ul class="no-bullet">
    <li><a id="toc-Index-for-all-m4-macros" href="#Macro-index" rel="index">C.1 Index for all <code>m4</code> macros</a></li>
    <li><a id="toc-Index-for-many-concepts" href="#Concept-index" rel="index">C.2 Index for many concepts</a></li>
  </ul></li>
</ul>
</div>


<span id="Top"></span><div class="header">
<p>
Next: <a href="#Preliminaries" accesskey="n" rel="next">Preliminaries</a>, Up: <a href="https://www.gnu.org/manual" accesskey="u" rel="up">(dir)</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="GNU-M4"></span><h1 class="top">GNU M4</h1>

<p>This manual (28 May 2021) is for GNU M4 (version
1.4.19), a package containing an implementation of the m4 macro
language.
</p>
<p>Copyright © 1989–1994, 2004–2014, 2016–2017, 2020–2021
Free Software Foundation, Inc.
</p>
<blockquote>
<p>Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License,
Version 1.3 or any later version published by the Free Software
Foundation; with no Invariant Sections, no Front-Cover Texts, and no
Back-Cover Texts.  A copy of the license is included in the section
entitled “GNU Free Documentation License.”
</p></blockquote>

<p>GNU <code>m4</code> is an implementation of the traditional UNIX macro
processor.  It is mostly SVR4 compatible, although it has some
extensions (for example, handling more than 9 positional parameters
to macros).  <code>m4</code> also has builtin functions for including
files, running shell commands, doing arithmetic, etc.  Autoconf needs
GNU <code>m4</code> for generating <samp>configure</samp> scripts, but not for
running them.
</p>
<p>GNU <code>m4</code> was originally written by René Seindal, with
subsequent changes by François Pinard and other volunteers
on the Internet.  All names and email addresses can be found in the
files <samp>m4-1.4.19/AUTHORS</samp> and
<samp>m4-1.4.19/THANKS</samp> from the GNU M4
distribution.
</p>
<p>This is release 1.4.19.  It is now considered stable:  future
releases in the 1.4.x series are only meant to fix bugs, increase speed,
or improve documentation.  However…
</p>
<p>An experimental feature, which would improve <code>m4</code> usefulness,
allows for changing the syntax for what is a <em>word</em> in <code>m4</code>.
You should use:
</p><div class="example">
<pre class="example">./configure --enable-changeword
</pre></div>
<p>if you want this feature compiled in.  The current implementation
slows down <code>m4</code> considerably and is hardly acceptable.  In the
future, <code>m4</code> 2.0 will come with a different set of new features
that provide similar capabilities, but without the inefficiencies, so
changeword will go away and <em>you should not count on it</em>.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Preliminaries" accesskey="1">Preliminaries</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Introduction and preliminaries
</td></tr>
<tr><td valign="top" align="left">• <a href="#Invoking-m4" accesskey="2">Invoking m4</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Invoking <code>m4</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Syntax" accesskey="3">Syntax</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Lexical and syntactic conventions
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
</pre></th></tr><tr><td valign="top" align="left">• <a href="#Macros" accesskey="4">Macros</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">How to invoke macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Definitions" accesskey="5">Definitions</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">How to define new macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Conditionals" accesskey="6">Conditionals</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Conditionals, loops, and recursion
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
</pre></th></tr><tr><td valign="top" align="left">• <a href="#Debugging" accesskey="7">Debugging</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">How to debug macros and input
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
</pre></th></tr><tr><td valign="top" align="left">• <a href="#Input-Control" accesskey="8">Input Control</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Input control
</td></tr>
<tr><td valign="top" align="left">• <a href="#File-Inclusion" accesskey="9">File Inclusion</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">File inclusion
</td></tr>
<tr><td valign="top" align="left">• <a href="#Diversions">Diversions</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Diverting and undiverting output
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
</pre></th></tr><tr><td valign="top" align="left">• <a href="#Text-handling">Text handling</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Macros for text handling
</td></tr>
<tr><td valign="top" align="left">• <a href="#Arithmetic">Arithmetic</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Macros for doing arithmetic
</td></tr>
<tr><td valign="top" align="left">• <a href="#Shell-commands">Shell commands</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Macros for running shell commands
</td></tr>
<tr><td valign="top" align="left">• <a href="#Miscellaneous">Miscellaneous</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Miscellaneous builtin macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Frozen-files">Frozen files</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Fast loading of frozen state
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
</pre></th></tr><tr><td valign="top" align="left">• <a href="#Compatibility">Compatibility</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Compatibility with other versions of <code>m4</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Answers">Answers</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Correct version of some examples
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
</pre></th></tr><tr><td valign="top" align="left">• <a href="#Copying-This-Package">Copying This Package</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">How to make copies of the overall M4 package
</td></tr>
<tr><td valign="top" align="left">• <a href="#Copying-This-Manual">Copying This Manual</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">How to make copies of this manual
</td></tr>
<tr><td valign="top" align="left">• <a href="#Indices">Indices</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Indices of concepts and macros
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
</pre></th></tr><tr><th colspan="3" valign="top" align="left"><pre class="menu-comment"> — The Detailed Node Listing —

Introduction and preliminaries

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Intro">Intro</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Introduction to <code>m4</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#History">History</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Historical references
</td></tr>
<tr><td valign="top" align="left">• <a href="#Bugs">Bugs</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Problems and bugs
</td></tr>
<tr><td valign="top" align="left">• <a href="#Manual">Manual</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Using this manual
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Invoking <code>m4</code>

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Operation-modes">Operation modes</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Command line options for operation modes
</td></tr>
<tr><td valign="top" align="left">• <a href="#Preprocessor-features">Preprocessor features</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Command line options for preprocessor features
</td></tr>
<tr><td valign="top" align="left">• <a href="#Limits-control">Limits control</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Command line options for limits control
</td></tr>
<tr><td valign="top" align="left">• <a href="#Frozen-state">Frozen state</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Command line options for frozen state
</td></tr>
<tr><td valign="top" align="left">• <a href="#Debugging-options">Debugging options</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Command line options for debugging
</td></tr>
<tr><td valign="top" align="left">• <a href="#Command-line-files">Command line files</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Specifying input files on the command line
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Lexical and syntactic conventions

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Names">Names</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Macro names
</td></tr>
<tr><td valign="top" align="left">• <a href="#Quoted-strings">Quoted strings</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Quoting input to <code>m4</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Comments">Comments</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Comments in <code>m4</code> input
</td></tr>
<tr><td valign="top" align="left">• <a href="#Other-tokens">Other tokens</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Other kinds of input tokens
</td></tr>
<tr><td valign="top" align="left">• <a href="#Input-processing">Input processing</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">How <code>m4</code> copies input to output
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
How to invoke macros

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Invocation">Invocation</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Macro invocation
</td></tr>
<tr><td valign="top" align="left">• <a href="#Inhibiting-Invocation">Inhibiting Invocation</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Preventing macro invocation
</td></tr>
<tr><td valign="top" align="left">• <a href="#Macro-Arguments">Macro Arguments</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Macro arguments
</td></tr>
<tr><td valign="top" align="left">• <a href="#Quoting-Arguments">Quoting Arguments</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">On Quoting Arguments to macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Macro-expansion">Macro expansion</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Expanding macros
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
How to define new macros

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Define">Define</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Defining a new macro
</td></tr>
<tr><td valign="top" align="left">• <a href="#Arguments">Arguments</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Arguments to macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Pseudo-Arguments">Pseudo Arguments</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Special arguments to macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Undefine">Undefine</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Deleting a macro
</td></tr>
<tr><td valign="top" align="left">• <a href="#Defn">Defn</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Renaming macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Pushdef">Pushdef</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Temporarily redefining macros
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
</pre></th></tr><tr><td valign="top" align="left">• <a href="#Indir">Indir</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Indirect call of macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Builtin">Builtin</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Indirect call of builtins
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Conditionals, loops, and recursion

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Ifdef">Ifdef</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Testing if a macro is defined
</td></tr>
<tr><td valign="top" align="left">• <a href="#Ifelse">Ifelse</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">If-else construct, or multibranch
</td></tr>
<tr><td valign="top" align="left">• <a href="#Shift">Shift</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Recursion in <code>m4</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Forloop">Forloop</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Iteration by counting
</td></tr>
<tr><td valign="top" align="left">• <a href="#Foreach">Foreach</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Iteration by list contents
</td></tr>
<tr><td valign="top" align="left">• <a href="#Stacks">Stacks</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Working with definition stacks
</td></tr>
<tr><td valign="top" align="left">• <a href="#Composition">Composition</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Building macros with macros
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
How to debug macros and input

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Dumpdef">Dumpdef</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Displaying macro definitions
</td></tr>
<tr><td valign="top" align="left">• <a href="#Trace">Trace</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Tracing macro calls
</td></tr>
<tr><td valign="top" align="left">• <a href="#Debug-Levels">Debug Levels</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Controlling debugging output
</td></tr>
<tr><td valign="top" align="left">• <a href="#Debug-Output">Debug Output</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Saving debugging output
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Input control

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Dnl">Dnl</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Deleting whitespace in input
</td></tr>
<tr><td valign="top" align="left">• <a href="#Changequote">Changequote</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Changing the quote characters
</td></tr>
<tr><td valign="top" align="left">• <a href="#Changecom">Changecom</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Changing the comment delimiters
</td></tr>
<tr><td valign="top" align="left">• <a href="#Changeword">Changeword</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Changing the lexical structure of words
</td></tr>
<tr><td valign="top" align="left">• <a href="#M4wrap">M4wrap</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Saving text until end of input
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
File inclusion

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Include">Include</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Including named files
</td></tr>
<tr><td valign="top" align="left">• <a href="#Search-Path">Search Path</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Searching for include files
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Diverting and undiverting output

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Divert">Divert</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Diverting output
</td></tr>
<tr><td valign="top" align="left">• <a href="#Undivert">Undivert</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Undiverting output
</td></tr>
<tr><td valign="top" align="left">• <a href="#Divnum">Divnum</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Diversion numbers
</td></tr>
<tr><td valign="top" align="left">• <a href="#Cleardivert">Cleardivert</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Discarding diverted text
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Macros for text handling

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Len">Len</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Calculating length of strings
</td></tr>
<tr><td valign="top" align="left">• <a href="#Index-macro">Index macro</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Searching for substrings
</td></tr>
<tr><td valign="top" align="left">• <a href="#Regexp">Regexp</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Searching for regular expressions
</td></tr>
<tr><td valign="top" align="left">• <a href="#Substr">Substr</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Extracting substrings
</td></tr>
<tr><td valign="top" align="left">• <a href="#Translit">Translit</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Translating characters
</td></tr>
<tr><td valign="top" align="left">• <a href="#Patsubst">Patsubst</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Substituting text by regular expression
</td></tr>
<tr><td valign="top" align="left">• <a href="#Format">Format</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Formatting strings (printf-like)
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Macros for doing arithmetic

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Incr">Incr</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Decrement and increment operators
</td></tr>
<tr><td valign="top" align="left">• <a href="#Eval">Eval</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Evaluating integer expressions
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Macros for running shell commands

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Platform-macros">Platform macros</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Determining the platform
</td></tr>
<tr><td valign="top" align="left">• <a href="#Syscmd">Syscmd</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Executing simple commands
</td></tr>
<tr><td valign="top" align="left">• <a href="#Esyscmd">Esyscmd</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Reading the output of commands
</td></tr>
<tr><td valign="top" align="left">• <a href="#Sysval">Sysval</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Exit status
</td></tr>
<tr><td valign="top" align="left">• <a href="#Mkstemp">Mkstemp</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Making temporary files
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Miscellaneous builtin macros

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Errprint">Errprint</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Printing error messages
</td></tr>
<tr><td valign="top" align="left">• <a href="#Location">Location</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Printing current location
</td></tr>
<tr><td valign="top" align="left">• <a href="#M4exit">M4exit</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Exiting from <code>m4</code>
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Fast loading of frozen state

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Using-frozen-files">Using frozen files</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Using frozen files
</td></tr>
<tr><td valign="top" align="left">• <a href="#Frozen-file-format">Frozen file format</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Frozen file format
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Compatibility with other versions of <code>m4</code>

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Extensions">Extensions</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Extensions in GNU M4
</td></tr>
<tr><td valign="top" align="left">• <a href="#Incompatibilities">Incompatibilities</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Facilities in System V m4 not in GNU M4
</td></tr>
<tr><td valign="top" align="left">• <a href="#Other-Incompatibilities">Other Incompatibilities</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Other incompatibilities
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Correct version of some examples

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Improved-exch">Improved exch</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>exch</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-forloop">Improved forloop</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>forloop</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-foreach">Improved foreach</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>foreach</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-copy">Improved copy</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>copy</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-m4wrap">Improved m4wrap</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>m4wrap</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-cleardivert">Improved cleardivert</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>cleardivert</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-capitalize">Improved capitalize</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>capitalize</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-fatal_005ferror">Improved fatal_error</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>fatal_error</code>
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
How to make copies of the overall M4 package

</pre></th></tr><tr><td valign="top" align="left">• <a href="#GNU-General-Public-License">GNU General Public License</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">License for copying the M4 package
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
How to make copies of this manual

</pre></th></tr><tr><td valign="top" align="left">• <a href="#GNU-Free-Documentation-License">GNU Free Documentation License</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">License for copying this manual
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
Indices of concepts and macros

</pre></th></tr><tr><td valign="top" align="left">• <a href="#Macro-index" rel="index">Macro index</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Index for all <code>m4</code> macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Concept-index" rel="index">Concept index</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Index for many concepts
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
</pre></th></tr></tbody></table>

<hr>
<span id="Preliminaries"></span><div class="header">
<p>
Next: <a href="#Invoking-m4" accesskey="n" rel="next">Invoking m4</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Top</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Introduction-and-preliminaries"></span><h2 class="chapter">1 Introduction and preliminaries</h2>

<p>This first chapter explains what GNU <code>m4</code> is, where <code>m4</code>
comes from, how to read and use this documentation, how to call the
<code>m4</code> program, and how to report bugs about it.  It concludes by
giving tips for reading the remainder of the manual.
</p>
<p>The following chapters then detail all the features of the <code>m4</code>
language.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Intro" accesskey="1">Intro</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Introduction to <code>m4</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#History" accesskey="2">History</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Historical references
</td></tr>
<tr><td valign="top" align="left">• <a href="#Bugs" accesskey="3">Bugs</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Problems and bugs
</td></tr>
<tr><td valign="top" align="left">• <a href="#Manual" accesskey="4">Manual</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Using this manual
</td></tr>
</tbody></table>

<hr>
<span id="Intro"></span><div class="header">
<p>
Next: <a href="#History" accesskey="n" rel="next">History</a>, Up: <a href="#Preliminaries" accesskey="u" rel="up">Preliminaries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Introduction-to-m4"></span><h3 class="section">1.1 Introduction to <code>m4</code></h3>

<span id="index-overview-of-m4"></span>
<p><code>m4</code> is a macro processor, in the sense that it copies its
input to the output, expanding macros as it goes.  Macros are either
builtin or user-defined, and can take any number of arguments.
Besides just doing macro expansion, <code>m4</code> has builtin functions
for including named files, running shell commands, doing integer
arithmetic, manipulating text in various ways, performing recursion,
etc.…  <code>m4</code> can be used either as a front-end to a compiler,
or as a macro processor in its own right.
</p>
<p>The <code>m4</code> macro processor is widely available on all UNIXes, and has
been standardized by POSIX.
Usually, only a small percentage of users are aware of its existence.
However, those who find it often become committed users.  The
popularity of GNU Autoconf, which requires GNU
<code>m4</code> for <em>generating</em> <samp>configure</samp> scripts, is an incentive
for many to install it, while these people will not themselves
program in <code>m4</code>.  GNU <code>m4</code> is mostly compatible with the
System V, Release 4 version, except for some minor differences.
See <a href="#Compatibility">Compatibility</a>, for more details.
</p>
<p>Some people find <code>m4</code> to be fairly addictive.  They first use
<code>m4</code> for simple problems, then take bigger and bigger challenges,
learning how to write complex sets of <code>m4</code> macros along the way.
Once really addicted, users pursue writing of sophisticated <code>m4</code>
applications even to solve simple problems, devoting more time
debugging their <code>m4</code> scripts than doing real work.  Beware that
<code>m4</code> may be dangerous for the health of compulsive programmers.
</p>
<hr>
<span id="History"></span><div class="header">
<p>
Next: <a href="#Bugs" accesskey="n" rel="next">Bugs</a>, Previous: <a href="#Intro" accesskey="p" rel="prev">Intro</a>, Up: <a href="#Preliminaries" accesskey="u" rel="up">Preliminaries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Historical-references"></span><h3 class="section">1.2 Historical references</h3>

<span id="index-history-of-m4"></span>
<span id="index-GNU-M4_002c-history-of"></span>
<p>Macro languages were invented early in the history of computing.  In the
1950s Alan Perlis suggested that the macro language be independent of the
language being processed.  Techniques such as conditional and recursive
macros, and using macros to define other macros, were described by Doug
McIlroy of Bell Labs in “Macro Instruction Extensions of Compiler
Languages”, <em>Communications of the ACM</em> 3, 4 (1960), 214–20,
<a href="https://dl.acm.org/doi/10.1145/367177.367223">https://dl.acm.org/doi/10.1145/367177.367223</a>.
</p>
<p>An important precursor of <code>m4</code> was GPM; see C. Strachey,
“A general purpose macrogenerator”, <em>Computer Journal</em> 8, 3
(1965), 225–41,
<a href="https://academic.oup.com/comjnl/article/8/3/225/336044">https://academic.oup.com/comjnl/article/8/3/225/336044</a>.  GPM is
also succinctly described in David Gries’s book <em>Compiler
Construction for Digital Computers</em>, Wiley (1971).  Strachey was a
brilliant programmer: GPM fit into 250 machine instructions!
</p>
<p>Inspired by GPM while visiting Strachey’s Lab in 1968, McIlroy wrote a
model preprocessor in that fit into a page of Snobol 3 code, and McIlroy
and Robert Morris developed a series of further models at Bell Labs.
Andrew D. Hall followed up with M6, a general purpose macro processor
used to port the Fortran source code of the Altran computer algebra
system; see Hall’s “The M6 Macro Processor”, Computing Science
Technical Report #2, Bell Labs (1972),
<a href="http://cm.bell-labs.com/cm/cs/cstr/2.pdf">http://cm.bell-labs.com/cm/cs/cstr/2.pdf</a>.  M6’s source code
consisted of about 600 Fortran statements.  Its name was the first of
the <code>m4</code> line.
</p>
<p>The Brian Kernighan and P.J. Plauger book <em>Software Tools</em>,
Addison-Wesley (1976), describes and implements a Unix
macro-processor language, which inspired Dennis Ritchie to write
<code>m3</code>, a macro processor for the AP-3 minicomputer.
</p>
<p>Kernighan and Ritchie then joined forces to develop the original
<code>m4</code>, described in “The M4 Macro Processor”, Bell Laboratories
(1977), <a href="https://wolfram.schneider.org/bsd/7thEdManVol2/m4/m4.pdf">https://wolfram.schneider.org/bsd/7thEdManVol2/m4/m4.pdf</a>.
It had only 21 builtin macros.
</p>
<p>While <code>GPM</code> was more <em>pure</em>, <code>m4</code> is meant to deal with
the true intricacies of real life: macros can be recognized without
being pre-announced, skipping whitespace or end-of-lines is easier,
more constructs are builtin instead of derived, etc.
</p>
<p>Originally, the Kernighan and Plauger macro-processor, and then
<code>m3</code>, formed the engine for the Rational FORTRAN preprocessor,
that is, the <code>Ratfor</code> equivalent of <code>cpp</code>.  Later, <code>m4</code>
was used as a front-end for <code>Ratfor</code>, <code>C</code> and <code>Cobol</code>.
</p>
<p>René Seindal released his implementation of <code>m4</code>, GNU
<code>m4</code>,
in 1990, with the aim of removing the artificial limitations in many
of the traditional <code>m4</code> implementations, such as maximum line
length, macro size, or number of macros.
</p>
<p>The late Professor A. Dain Samples described and implemented a further
evolution in the form of <code>M5</code>: “User’s Guide to the M5 Macro
Language: 2nd edition”, Electronic Announcement on comp.compilers
newsgroup (1992).
</p>
<p>François Pinard took over maintenance of GNU <code>m4</code> in
1992, until 1994 when he released GNU <code>m4</code> 1.4, which was
the stable release for 10 years.  It was at this time that GNU
Autoconf decided to require GNU <code>m4</code> as its underlying
engine, since all other implementations of <code>m4</code> had too many
limitations.
</p>
<p>More recently, in 2004, Paul Eggert released 1.4.1 and 1.4.2 which
addressed some long standing bugs in the venerable 1.4 release.  Then in
2005, Gary V. Vaughan collected together the many patches to
GNU <code>m4</code> 1.4 that were floating around the net and
released 1.4.3 and 1.4.4.  And in 2006, Eric Blake joined the team and
prepared patches for the release of 1.4.5, with subsequent releases
through intervening years, as recent as 1.4.18 in 2016.
</p>
<p>Meanwhile, development has continued on new features for <code>m4</code>, such
as dynamic module loading and additional builtins.  When complete,
GNU <code>m4</code> 2.0 will start a new series of releases.
</p>
<hr>
<span id="Bugs"></span><div class="header">
<p>
Next: <a href="#Manual" accesskey="n" rel="next">Manual</a>, Previous: <a href="#History" accesskey="p" rel="prev">History</a>, Up: <a href="#Preliminaries" accesskey="u" rel="up">Preliminaries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Problems-and-bugs"></span><h3 class="section">1.3 Problems and bugs</h3>

<span id="index-reporting-bugs"></span>
<span id="index-bug-reports"></span>
<span id="index-suggestions_002c-reporting"></span>
<p>If you have problems with GNU M4 or think you’ve found a bug,
please report it.  Before reporting a bug, make sure you’ve actually
found a real bug.  Carefully reread the documentation and see if it
really says you can do what you’re trying to do.  If it’s not clear
whether you should be able to do something or not, report that too; it’s
a bug in the documentation!
</p>
<p>Before reporting a bug or trying to fix it yourself, try to isolate it
to the smallest possible input file that reproduces the problem.  Then
send us the input file and the exact results <code>m4</code> gave you.  Also
say what you expected to occur; this will help us decide whether the
problem was really in the documentation.
</p>
<p>Once you’ve got a precise problem, send e-mail to
<a href="mailto:bug-m4@gnu.org">bug-m4@gnu.org</a>.  Please include the version number of <code>m4</code>
you are using.  You can get this information with the command
<kbd>m4 --version</kbd>.  Also provide details about the platform you are
executing on.
</p>
<p>Non-bug suggestions are always welcome as well.  If you have questions
about things that are unclear in the documentation or are just obscure
features, please report them too.
</p>
<hr>
<span id="Manual"></span><div class="header">
<p>
Previous: <a href="#Bugs" accesskey="p" rel="prev">Bugs</a>, Up: <a href="#Preliminaries" accesskey="u" rel="up">Preliminaries</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Using-this-manual"></span><h3 class="section">1.4 Using this manual</h3>

<span id="index-examples_002c-understanding"></span>
<p>This manual contains a number of examples of <code>m4</code> input and output,
and a simple notation is used to distinguish input, output and error
messages from <code>m4</code>.  Examples are set out from the normal text, and
shown in a fixed width font, like this
</p>
<div class="example">
<pre class="example">This is an example of an example!
</pre></div>

<p>To distinguish input from output, all output from <code>m4</code> is prefixed
by the string ‘<samp>⇒</samp>’, and all error messages by the string
‘<samp>error→</samp>’.  When showing how command line options affect matters,
the command line is shown with a prompt ‘<samp>$ <kbd>like this</kbd></samp>’,
otherwise, you can assume that a simple <kbd>m4</kbd> invocation will work.
Thus:
</p>
<div class="example">
<pre class="example">$ <kbd>command line to invoke m4</kbd>
Example of input line
⇒Output line from m4
error→and an error message
</pre></div>

<p>The sequence ‘<samp>^D</samp>’ in an example indicates the end of the input
file.  The sequence ‘<samp><span class="key">NL</span></samp>’ refers to the newline character.
The majority of these examples are self-contained, and you can run them
with similar results by invoking <kbd>m4 -d</kbd>.  In fact, the testsuite
that is bundled in the GNU M4 package consists of the examples
in this document!  Some of the examples assume that your current
directory is located where you unpacked the installation, so if you plan
on following along, you may find it helpful to do this now:
</p>
<div class="example">
<pre class="example">$ <kbd>cd m4-1.4.19</kbd>
</pre></div>

<p>As each of the predefined macros in <code>m4</code> is described, a prototype
call of the macro will be shown, giving descriptive names to the
arguments, e.g.,
</p>
<dl>
<dt id="index-example">Composite: <strong>example</strong> <em>(<var>string</var>, <span class="roman">[</span><var>count</var> = ‘<samp>1</samp>’<span class="roman">]</span>,   <span class="roman">[</span><var>argument</var><span class="roman">]</span>…)</em></dt>
<dd><p>This is a sample prototype.  There is not really a macro named
<code>example</code>, but this documents that if there were, it would be a
Composite macro, rather than a Builtin.  It requires at least one
argument, <var>string</var>.  Remember that in <code>m4</code>, there must not be a
space between the macro name and the opening parenthesis, unless it was
intended to call the macro without any arguments.  The brackets around
<var>count</var> and <var>argument</var> show that these arguments are optional.
If <var>count</var> is omitted, the macro behaves as if count were ‘<samp>1</samp>’,
whereas if <var>argument</var> is omitted, the macro behaves as if it were
the empty string.  A blank argument is not the same as an omitted
argument.  For example, ‘<samp>example(`a')</samp>’, ‘<samp>example(`a',`1')</samp>’,
and ‘<samp>example(`a',`1',)</samp>’ would behave identically with <var>count</var>
set to ‘<samp>1</samp>’; while ‘<samp>example(`a',)</samp>’ and ‘<samp>example(`a',`')</samp>’
would explicitly pass the empty string for <var>count</var>.  The ellipses
(‘<samp>…</samp>’) show that the macro processes additional arguments
after <var>argument</var>, rather than ignoring them.
</p></dd></dl>

<span id="index-numbers"></span>
<p>All macro arguments in <code>m4</code> are strings, but some are given
special interpretation, e.g., as numbers, file names, regular
expressions, etc.  The documentation for each macro will state how the
parameters are interpreted, and what happens if the argument cannot be
parsed according to the desired interpretation.  Unless specified
otherwise, a parameter specified to be a number is parsed as a decimal,
even if the argument has leading zeros; and parsing the empty string as
a number results in 0 rather than an error, although a warning will be
issued.
</p>
<p>This document consistently writes and uses <em>builtin</em>, without a
hyphen, as if it were an English word.  This is how the <code>builtin</code>
primitive is spelled within <code>m4</code>.
</p>
<hr>
<span id="Invoking-m4"></span><div class="header">
<p>
Next: <a href="#Syntax" accesskey="n" rel="next">Syntax</a>, Previous: <a href="#Preliminaries" accesskey="p" rel="prev">Preliminaries</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Invoking-m4-1"></span><h2 class="chapter">2 Invoking <code>m4</code></h2>

<span id="index-command-line"></span>
<span id="index-invoking-m4"></span>
<p>The format of the <code>m4</code> command is:
</p>
<div class="example">
<pre class="example"><code>m4</code> <span class="roman">[</span><var>option</var>…<span class="roman">]</span> <span class="roman">[</span><var>file</var>…<span class="roman">]</span>
</pre></div>

<span id="index-command-line_002c-options"></span>
<span id="index-options_002c-command-line"></span>
<span id="index-POSIXLY_005fCORRECT"></span>
<p>All options begin with ‘<samp>-</samp>’, or if long option names are used, with
‘<samp>--</samp>’.  A long option name need not be written completely, any
unambiguous prefix is sufficient.  POSIX requires <code>m4</code> to
recognize arguments intermixed with files, even when
<code>POSIXLY_CORRECT</code> is set in the environment.  Most options take
effect at startup regardless of their position, but some are documented
below as taking effect after any files that occurred earlier in the
command line.  The argument <samp>--</samp> is a marker to denote the end of
options.
</p>
<p>With short options, options that do not take arguments may be combined
into a single command line argument with subsequent options, options
with mandatory arguments may be provided either as a single command line
argument or as two arguments, and options with optional arguments must
be provided as a single argument.  In other words,
<kbd>m4 -QPDfoo -d a -df</kbd> is equivalent to
<kbd>m4 -Q -P -D foo -d -df -- ./a</kbd>, although the latter form is
considered canonical.
</p>
<p>With long options, options with mandatory arguments may be provided with
an equal sign (‘<samp>=</samp>’) in a single argument, or as two arguments, and
options with optional arguments must be provided as a single argument.
In other words, <kbd>m4 --def foo --debug a</kbd> is equivalent to
<kbd>m4 --define=foo --debug= -- ./a</kbd>, although the latter form is
considered canonical (not to mention more robust, in case a future
version of <code>m4</code> introduces an option named <samp>--default</samp>).
</p>
<p><code>m4</code> understands the following options, grouped by functionality.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Operation-modes" accesskey="1">Operation modes</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Command line options for operation modes
</td></tr>
<tr><td valign="top" align="left">• <a href="#Preprocessor-features" accesskey="2">Preprocessor features</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Command line options for preprocessor features
</td></tr>
<tr><td valign="top" align="left">• <a href="#Limits-control" accesskey="3">Limits control</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Command line options for limits control
</td></tr>
<tr><td valign="top" align="left">• <a href="#Frozen-state" accesskey="4">Frozen state</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Command line options for frozen state
</td></tr>
<tr><td valign="top" align="left">• <a href="#Debugging-options" accesskey="5">Debugging options</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Command line options for debugging
</td></tr>
<tr><td valign="top" align="left">• <a href="#Command-line-files" accesskey="6">Command line files</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Specifying input files on the command line
</td></tr>
</tbody></table>

<hr>
<span id="Operation-modes"></span><div class="header">
<p>
Next: <a href="#Preprocessor-features" accesskey="n" rel="next">Preprocessor features</a>, Up: <a href="#Invoking-m4" accesskey="u" rel="up">Invoking m4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Command-line-options-for-operation-modes"></span><h3 class="section">2.1 Command line options for operation modes</h3>

<p>Several options control the overall operation of <code>m4</code>:
</p>
<dl compact="compact">
<dt><code>--help</code></dt>
<dd><p>Print a help summary on standard output, then immediately exit
<code>m4</code> without reading any input files or performing any other
actions.
</p>
</dd>
<dt><code>--version</code></dt>
<dd><p>Print the version number of the program on standard output, then
immediately exit <code>m4</code> without reading any input files or
performing any other actions.
</p>
</dd>
<dt><code>-E</code></dt>
<dt><code>--fatal-warnings</code></dt>
<dd><span id="index-errors_002c-fatal"></span>
<span id="index-fatal-errors"></span>
<p>Controls the effect of warnings.  If unspecified, then execution
continues and exit status is unaffected when a warning is printed.  If
specified exactly once, warnings become fatal; when one is issued,
execution continues, but the exit status will be non-zero.  If specified
multiple times, then execution halts with non-zero status the first time
a warning is issued.  The introduction of behavior levels is new to M4
1.4.9; for behavior consistent with earlier versions, you should specify
<samp>-E</samp> twice.
</p>
</dd>
<dt><code>-i</code></dt>
<dt><code>--interactive</code></dt>
<dt><code>-e</code></dt>
<dd><p>Makes this invocation of <code>m4</code> interactive.  This means that all
output will be unbuffered, and interrupts will be ignored.  The
spelling <samp>-e</samp> exists for compatibility with other <code>m4</code>
implementations, and issues a warning because it may be withdrawn in a
future version of GNU M4.
</p>
</dd>
<dt><code>-P</code></dt>
<dt><code>--prefix-builtins</code></dt>
<dd><p>Internally modify <em>all</em> builtin macro names so they all start with
the prefix ‘<samp>m4_</samp>’.  For example, using this option, one should write
‘<samp>m4_define</samp>’ instead of ‘<samp>define</samp>’, and ‘<samp>m4___file__</samp>’
instead of ‘<samp>__file__</samp>’.  This option has no effect if <samp>-R</samp>
is also specified.
</p>
</dd>
<dt><code>-Q</code></dt>
<dt><code>--quiet</code></dt>
<dt><code>--silent</code></dt>
<dd><p>Suppress warnings, such as missing or superfluous arguments in macro
calls, or treating the empty string as zero.
</p>
</dd>
<dt><code>--warn-macro-sequence<span class="roman">[</span>=<var>regexp</var><span class="roman">]</span></code></dt>
<dd><p>Issue a warning if the regular expression <var>regexp</var> has a non-empty
match in any macro definition (either by <code>define</code> or
<code>pushdef</code>).  Empty matches are ignored; therefore, supplying the
empty string as <var>regexp</var> disables any warning.  If the optional
<var>regexp</var> is not supplied, then the default regular expression is
‘<samp>\$\({[^}]*}\|[0-9][0-9]+\)</samp>’ (a literal ‘<samp>$</samp>’ followed by
multiple digits or by an open brace), since these sequences will
change semantics in the default operation of GNU M4 2.0 (due
to a change in how more than 9 arguments in a macro definition will be
handled, see <a href="#Arguments">Arguments</a>).  Providing an alternate regular
expression can provide a useful reverse lookup feature of finding
where a macro is defined to have a given definition.
</p>
</dd>
<dt><code>-W <var>regexp</var></code></dt>
<dt><code>--word-regexp=<var>regexp</var></code></dt>
<dd><p>Use <var>regexp</var> as an alternative syntax for macro names.  This
experimental option will not be present in all GNU <code>m4</code>
implementations (see <a href="#Changeword">Changeword</a>).
</p></dd>
</dl>

<hr>
<span id="Preprocessor-features"></span><div class="header">
<p>
Next: <a href="#Limits-control" accesskey="n" rel="next">Limits control</a>, Previous: <a href="#Operation-modes" accesskey="p" rel="prev">Operation modes</a>, Up: <a href="#Invoking-m4" accesskey="u" rel="up">Invoking m4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Command-line-options-for-preprocessor-features"></span><h3 class="section">2.2 Command line options for preprocessor features</h3>

<span id="index-macro-definitions_002c-on-the-command-line"></span>
<span id="index-command-line_002c-macro-definitions-on-the"></span>
<span id="index-preprocessor-features"></span>
<p>Several options allow <code>m4</code> to behave more like a preprocessor.
Macro definitions and deletions can be made on the command line, the
search path can be altered, and the output file can track where the
input came from.  These features occur with the following options:
</p>
<dl compact="compact">
<dt><code>-D <var>name</var><span class="roman">[</span>=<var>value</var><span class="roman">]</span></code></dt>
<dt><code>--define=<var>name</var><span class="roman">[</span>=<var>value</var><span class="roman">]</span></code></dt>
<dd><p>This enters <var>name</var> into the symbol table.  If ‘<samp>=<var>value</var></samp>’ is
missing, the value is taken to be the empty string.  The <var>value</var> can
be any string, and the macro can be defined to take arguments, just as
if it was defined from within the input.  This option may be given more
than once; order with respect to file names is significant, and
redefining the same <var>name</var> loses the previous value.
</p>
</dd>
<dt><code>-I <var>directory</var></code></dt>
<dt><code>--include=<var>directory</var></code></dt>
<dd><p>Make <code>m4</code> search <var>directory</var> for included files that are not
found in the current working directory.  See <a href="#Search-Path">Search Path</a>, for more
details.  This option may be given more than once.
</p>
</dd>
<dt><code>-s</code></dt>
<dt><code>--synclines</code></dt>
<dd><span id="index-synchronization-lines"></span>
<span id="index-location_002c-input"></span>
<span id="index-input-location"></span>
<p>Generate synchronization lines, for use by the C preprocessor or other
similar tools.  Order is significant with respect to file names.  This
option is useful, for example, when <code>m4</code> is used as a
front end to a compiler.  Source file name and line number information
is conveyed by directives of the form ‘<samp>#line <var>linenum</var>
"<var>file</var>"</samp>’, which are inserted as needed into the middle of the
output.  Such directives mean that the following line originated or was
expanded from the contents of input file <var>file</var> at line
<var>linenum</var>.  The ‘<samp>"<var>file</var>"</samp>’ part is often omitted when
the file name did not change from the previous directive.
</p>
<p>Synchronization directives are always given on complete lines by
themselves.  When a synchronization discrepancy occurs in the middle of
an output line, the associated synchronization directive is delayed
until the next newline that does not occur in the middle of a quoted
string or comment.
</p>
<div class="example">
<pre class="example">define(`twoline', `1
2')
⇒#line 2 "stdin"
⇒
changecom(`/*', `*/')
⇒
define(`comment', `/*1
2*/')
⇒#line 5
⇒
dnl no line
hello
⇒#line 7
⇒hello
twoline
⇒1
⇒#line 8
⇒2
comment
⇒/*1
⇒2*/
one comment `two
three'
⇒#line 10
⇒one /*1
⇒2*/ two
⇒three
goodbye
⇒#line 12
⇒goodbye
</pre></div>

</dd>
<dt><code>-U <var>name</var></code></dt>
<dt><code>--undefine=<var>name</var></code></dt>
<dd><p>This deletes any predefined meaning <var>name</var> might have.  Obviously,
only predefined macros can be deleted in this way.  This option may be
given more than once; undefining a <var>name</var> that does not have a
definition is silently ignored.  Order is significant with respect to
file names.
</p></dd>
</dl>

<hr>
<span id="Limits-control"></span><div class="header">
<p>
Next: <a href="#Frozen-state" accesskey="n" rel="next">Frozen state</a>, Previous: <a href="#Preprocessor-features" accesskey="p" rel="prev">Preprocessor features</a>, Up: <a href="#Invoking-m4" accesskey="u" rel="up">Invoking m4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Command-line-options-for-limits-control"></span><h3 class="section">2.3 Command line options for limits control</h3>

<p>There are some limits within <code>m4</code> that can be tuned.  For
compatibility, <code>m4</code> also accepts some options that control limits
in other implementations, but which are automatically unbounded (limited
only by your hardware and operating system constraints) in GNU
<code>m4</code>.
</p>
<dl compact="compact">
<dt><code>-g</code></dt>
<dt><code>--gnu</code></dt>
<dd><p>Enable all the extensions in this implementation.  In this release of
M4, this option is always on by default; it is currently only useful
when overriding a prior use of <samp>--traditional</samp>.  However, having
GNU behavior as default makes it impossible to write a
strictly POSIX-compliant client that avoids all incompatible
GNU M4 extensions, since such a client would have to use the
non-POSIX command-line option to force full POSIX
behavior.  Thus, a future version of M4 will be changed to implicitly
use the option <samp>--traditional</samp> if the environment variable
<code>POSIXLY_CORRECT</code> is set.  Projects that intentionally use
GNU extensions should consider using <samp>--gnu</samp> to state
their intentions, so that the project will not mysteriously break if the
user upgrades to a newer M4 and has <code>POSIXLY_CORRECT</code> set in their
environment.
</p>
</dd>
<dt><code>-G</code></dt>
<dt><code>--traditional</code></dt>
<dd><p>Suppress all the extensions made in this implementation, compared to the
System V version.  See <a href="#Compatibility">Compatibility</a>, for a list of these.
</p>
</dd>
<dt><code>-H <var>num</var></code></dt>
<dt><code>--hashsize=<var>num</var></code></dt>
<dd><p>Make the internal hash table for symbol lookup be <var>num</var> entries big.
For better performance, the number should be prime, but this is not
checked.  The default is 65537 entries.  It should not be necessary to
increase this value, unless you define an excessive number of macros.
</p>
</dd>
<dt><code>-L <var>num</var></code></dt>
<dt><code>--nesting-limit=<var>num</var></code></dt>
<dd><span id="index-nesting-limit"></span>
<span id="index-limit_002c-nesting"></span>
<p>Artificially limit the nesting of macro calls to <var>num</var> levels,
stopping program execution if this limit is ever exceeded.  When not
specified, nesting defaults to unlimited on platforms that can detect
stack overflow, and to 1024 levels otherwise.  A value of zero means
unlimited; but then heavily nested code could potentially cause a stack
overflow.
</p>
<p>The precise effect of this option is more correctly associated
with textual nesting than dynamic recursion.  It has been useful
when some complex <code>m4</code> input was generated by mechanical means, and
also in diagnosing recursive algorithms that do not scale well.
Most users never need to change this option from its default.
</p>
<span id="index-rescanning"></span>
<p>This option does <em>not</em> have the ability to break endless
rescanning loops, since these do not necessarily consume much memory
or stack space.  Through clever usage of rescanning loops, one can
request complex, time-consuming computations from <code>m4</code> with useful
results.  Putting limitations in this area would break <code>m4</code> power.
There are many pathological cases: ‘<samp>define(`a',&nbsp;`a')a</samp>’<!-- /@w --> is
only the simplest example (but see <a href="#Compatibility">Compatibility</a>).  Expecting GNU
<code>m4</code> to detect these would be a little like expecting a compiler
system to detect and diagnose endless loops: it is a quite <em>hard</em>
problem in general, if not undecidable!
</p>
</dd>
<dt><code>-B <var>num</var></code></dt>
<dt><code>-S <var>num</var></code></dt>
<dt><code>-T <var>num</var></code></dt>
<dd><p>These options are present for compatibility with System V <code>m4</code>, but
do nothing in this implementation.  They may disappear in future
releases, and issue a warning to that effect.
</p>
</dd>
<dt><code>-N <var>num</var></code></dt>
<dt><code>--diversions=<var>num</var></code></dt>
<dd><p>These options are present only for compatibility with previous
versions of GNU <code>m4</code>, and were controlling the number of
possible diversions which could be used at the same time.  They do nothing,
because there is no fixed limit anymore.  They may disappear in future
releases, and issue a warning to that effect.
</p></dd>
</dl>

<hr>
<span id="Frozen-state"></span><div class="header">
<p>
Next: <a href="#Debugging-options" accesskey="n" rel="next">Debugging options</a>, Previous: <a href="#Limits-control" accesskey="p" rel="prev">Limits control</a>, Up: <a href="#Invoking-m4" accesskey="u" rel="up">Invoking m4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Command-line-options-for-frozen-state"></span><h3 class="section">2.4 Command line options for frozen state</h3>

<p>GNU <code>m4</code> comes with a feature of freezing internal state
(see <a href="#Frozen-files">Frozen files</a>).  This can be used to speed up <code>m4</code>
execution when reusing a common initialization script.
</p>
<dl compact="compact">
<dt><code>-F <var>file</var></code></dt>
<dt><code>--freeze-state=<var>file</var></code></dt>
<dd><p>Once execution is finished, write out the frozen state on the specified
<var>file</var>.  It is conventional, but not required, for <var>file</var> to end
in ‘<samp>.m4f</samp>’.
</p>
</dd>
<dt><code>-R <var>file</var></code></dt>
<dt><code>--reload-state=<var>file</var></code></dt>
<dd><p>Before execution starts, recover the internal state from the specified
frozen <var>file</var>.  The options <samp>-D</samp>, <samp>-U</samp>, and
<samp>-t</samp> take effect after state is reloaded, but before the input
files are read.
</p></dd>
</dl>

<hr>
<span id="Debugging-options"></span><div class="header">
<p>
Next: <a href="#Command-line-files" accesskey="n" rel="next">Command line files</a>, Previous: <a href="#Frozen-state" accesskey="p" rel="prev">Frozen state</a>, Up: <a href="#Invoking-m4" accesskey="u" rel="up">Invoking m4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Command-line-options-for-debugging"></span><h3 class="section">2.5 Command line options for debugging</h3>

<p>Finally, there are several options for aiding in debugging <code>m4</code>
scripts.
</p>
<dl compact="compact">
<dt><code>-d<span class="roman">[</span><var>flags</var><span class="roman">]</span></code></dt>
<dt><code>--debug<span class="roman">[</span>=<var>flags</var><span class="roman">]</span></code></dt>
<dd><p>Set the debug-level according to the flags <var>flags</var>.  The debug-level
controls the format and amount of information presented by the debugging
functions.  See <a href="#Debug-Levels">Debug Levels</a>, for more details on the format and
meaning of <var>flags</var>.  If omitted, <var>flags</var> defaults to ‘<samp>aeq</samp>’.
</p>
</dd>
<dt><code>--debugfile<span class="roman">[</span>=<var>file</var><span class="roman">]</span></code></dt>
<dt><code>-o <var>file</var></code></dt>
<dt><code>--error-output=<var>file</var></code></dt>
<dd><p>Redirect <code>dumpdef</code> output, debug messages, and trace output to the
named <var>file</var>.  Warnings, error messages, and <code>errprint</code> output
are still printed to standard error.  If these options are not used, or
if <var>file</var> is unspecified (only possible for <samp>--debugfile</samp>),
debug output goes to standard error; if <var>file</var> is the empty string,
debug output is discarded.  See <a href="#Debug-Output">Debug Output</a>, for more details.  The
option <samp>--debugfile</samp> may be given more than once, and order is
significant with respect to file names.  The spellings <samp>-o</samp> and
<samp>--error-output</samp> are misleading and inconsistent with other
GNU tools; for now they are silently accepted as synonyms of
<samp>--debugfile</samp> and only recognized once, but in a future version
of M4, using them will cause a warning to be issued.
</p>

</dd>
<dt><code>-l <var>num</var></code></dt>
<dt><code>--arglength=<var>num</var></code></dt>
<dd><p>Restrict the size of the output generated by macro tracing to <var>num</var>
characters per trace line.  If unspecified or zero, output is
unlimited.  See <a href="#Debug-Levels">Debug Levels</a>, for more details.
</p>
</dd>
<dt><code>-t <var>name</var></code></dt>
<dt><code>--trace=<var>name</var></code></dt>
<dd><p>This enables tracing for the macro <var>name</var>, at any point where it is
defined.  <var>name</var> need not be defined when this option is given.
This option may be given more than once, and order is significant with
respect to file names.  See <a href="#Trace">Trace</a>, for more details.
</p></dd>
</dl>

<hr>
<span id="Command-line-files"></span><div class="header">
<p>
Previous: <a href="#Debugging-options" accesskey="p" rel="prev">Debugging options</a>, Up: <a href="#Invoking-m4" accesskey="u" rel="up">Invoking m4</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Specifying-input-files-on-the-command-line"></span><h3 class="section">2.6 Specifying input files on the command line</h3>

<span id="index-command-line_002c-file-names-on-the"></span>
<span id="index-file-names_002c-on-the-command-line"></span>
<p>The remaining arguments on the command line are taken to be input file
names.  If no names are present, standard input is read.  A file
name of <samp>-</samp> is taken to mean standard input.  It is
conventional, but not required, for input files to end in ‘<samp>.m4</samp>’.
</p>
<p>The input files are read in the sequence given.  Standard input can be
read more than once, so the file name <samp>-</samp> may appear multiple times
on the command line; this makes a difference when input is from a
terminal or other special file type.  It is an error if an input file
ends in the middle of argument collection, a comment, or a quoted
string.
</p>
<p>The options <samp>--define</samp> (<samp>-D</samp>), <samp>--undefine</samp>
(<samp>-U</samp>), <samp>--synclines</samp> (<samp>-s</samp>), and <samp>--trace</samp>
(<samp>-t</samp>) only take effect after processing input from any file
names that occur earlier on the command line.  For example, assume the
file <samp>foo</samp> contains:
</p>
<div class="example">
<pre class="example">$ <kbd>cat foo</kbd>
bar
</pre></div>

<p>The text ‘<samp>bar</samp>’ can then be redefined over multiple uses of
<samp>foo</samp>:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -Dbar=hello foo -Dbar=world foo</kbd>
⇒hello
⇒world
</pre></div>

<p>If none of the input files invoked <code>m4exit</code> (see <a href="#M4exit">M4exit</a>), the
exit status of <code>m4</code> will be 0 for success, 1 for general failure
(such as problems with reading an input file), and 63 for version
mismatch (see <a href="#Using-frozen-files">Using frozen files</a>).
</p>
<p>If you need to read a file whose name starts with a <samp>-</samp>, you can
specify it as ‘<samp>./-file</samp>’, or use <samp>--</samp> to mark the end of
options.
</p>

<hr>
<span id="Syntax"></span><div class="header">
<p>
Next: <a href="#Macros" accesskey="n" rel="next">Macros</a>, Previous: <a href="#Invoking-m4" accesskey="p" rel="prev">Invoking m4</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Lexical-and-syntactic-conventions"></span><h2 class="chapter">3 Lexical and syntactic conventions</h2>

<span id="index-input-tokens"></span>
<span id="index-tokens"></span>
<p>As <code>m4</code> reads its input, it separates it into <em>tokens</em>.  A
token is either a name, a quoted string, or any single character, that
is not a part of either a name or a string.  Input to <code>m4</code> can also
contain comments.  GNU <code>m4</code> does not yet understand
multibyte locales; all operations are byte-oriented rather than
character-oriented (although if your locale uses a single byte
encoding, such as <small>ISO-8859-1</small>, you will not notice a difference).
However, <code>m4</code> is eight-bit clean, so you can
use non-<small>ASCII</small> characters in quoted strings (see <a href="#Changequote">Changequote</a>),
comments (see <a href="#Changecom">Changecom</a>), and macro names (see <a href="#Indir">Indir</a>), with the
exception of the <small>NUL</small> character (the zero byte ‘<samp>'\0'</samp>’).
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Names" accesskey="1">Names</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Macro names
</td></tr>
<tr><td valign="top" align="left">• <a href="#Quoted-strings" accesskey="2">Quoted strings</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Quoting input to <code>m4</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Comments" accesskey="3">Comments</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Comments in <code>m4</code> input
</td></tr>
<tr><td valign="top" align="left">• <a href="#Other-tokens" accesskey="4">Other tokens</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Other kinds of input tokens
</td></tr>
<tr><td valign="top" align="left">• <a href="#Input-processing" accesskey="5">Input processing</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">How <code>m4</code> copies input to output
</td></tr>
</tbody></table>

<hr>
<span id="Names"></span><div class="header">
<p>
Next: <a href="#Quoted-strings" accesskey="n" rel="next">Quoted strings</a>, Up: <a href="#Syntax" accesskey="u" rel="up">Syntax</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Macro-names"></span><h3 class="section">3.1 Macro names</h3>

<span id="index-names"></span>
<span id="index-words"></span>
<p>A name is any sequence of letters, digits, and the character ‘<samp>_</samp>’
(underscore), where the first character is not a digit.  <code>m4</code> will
use the longest such sequence found in the input.  If a name has a
macro definition, it will be subject to macro expansion
(see <a href="#Macros">Macros</a>).  Names are case-sensitive.
</p>
<p>Examples of legal names are: ‘<samp>foo</samp>’, ‘<samp>_tmp</samp>’, and ‘<samp>name01</samp>’.
</p>
<hr>
<span id="Quoted-strings"></span><div class="header">
<p>
Next: <a href="#Comments" accesskey="n" rel="next">Comments</a>, Previous: <a href="#Names" accesskey="p" rel="prev">Names</a>, Up: <a href="#Syntax" accesskey="u" rel="up">Syntax</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Quoting-input-to-m4"></span><h3 class="section">3.2 Quoting input to <code>m4</code></h3>

<span id="index-quoted-string"></span>
<span id="index-string_002c-quoted"></span>
<p>A quoted string is a sequence of characters surrounded by quote
strings, defaulting to
‘<samp>`</samp>’ and ‘<samp>'</samp>’, where the nested begin and end quotes within the
string are balanced.  The value of a string token is the text, with one
level of quotes stripped off.  Thus
</p>
<div class="example">
<pre class="example">`'
⇒
</pre></div>

<p>is the empty string, and double-quoting turns into single-quoting.
</p>
<div class="example">
<pre class="example">``quoted''
⇒`quoted'
</pre></div>

<p>The quote characters can be changed at any time, using the builtin macro
<code>changequote</code>.  See <a href="#Changequote">Changequote</a>, for more information.
</p>
<hr>
<span id="Comments"></span><div class="header">
<p>
Next: <a href="#Other-tokens" accesskey="n" rel="next">Other tokens</a>, Previous: <a href="#Quoted-strings" accesskey="p" rel="prev">Quoted strings</a>, Up: <a href="#Syntax" accesskey="u" rel="up">Syntax</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Comments-in-m4-input"></span><h3 class="section">3.3 Comments in <code>m4</code> input</h3>

<span id="index-comments"></span>
<p>Comments in <code>m4</code> are normally delimited by the characters ‘<samp>#</samp>’
and newline.  All characters between the comment delimiters are ignored,
but the entire comment (including the delimiters) is passed through to
the output—comments are <em>not</em> discarded by <code>m4</code>.
</p>
<p>Comments cannot be nested, so the first newline after a ‘<samp>#</samp>’ ends
the comment.  The commenting effect of the begin-comment string
can be inhibited by quoting it.
</p>
<div class="example">
<pre class="example">$ <kbd>m4</kbd>
`quoted text' # `commented text'
⇒quoted text # `commented text'
`quoting inhibits' `#' `comments'
⇒quoting inhibits # comments
</pre></div>

<p>The comment delimiters can be changed to any string at any time, using
the builtin macro <code>changecom</code>.  See <a href="#Changecom">Changecom</a>, for more
information.
</p>

<hr>
<span id="Other-tokens"></span><div class="header">
<p>
Next: <a href="#Input-processing" accesskey="n" rel="next">Input processing</a>, Previous: <a href="#Comments" accesskey="p" rel="prev">Comments</a>, Up: <a href="#Syntax" accesskey="u" rel="up">Syntax</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Other-kinds-of-input-tokens"></span><h3 class="section">3.4 Other kinds of input tokens</h3>

<span id="index-tokens_002c-special"></span>
<p>Any character, that is neither a part of a name, nor of a quoted string,
nor a comment, is a token by itself.  When not in the context of macro
expansion, all of these tokens are just copied to output.  However,
during macro expansion, whitespace characters (space, tab, newline,
formfeed, carriage return, vertical tab), parentheses (‘<samp>(</samp>’ and
‘<samp>)</samp>’), comma (‘<samp>,</samp>’), and dollar (‘<samp>$</samp>’) have additional
roles, explained later.
</p>
<hr>
<span id="Input-processing"></span><div class="header">
<p>
Previous: <a href="#Other-tokens" accesskey="p" rel="prev">Other tokens</a>, Up: <a href="#Syntax" accesskey="u" rel="up">Syntax</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="How-m4-copies-input-to-output"></span><h3 class="section">3.5 How <code>m4</code> copies input to output</h3>

<p>As <code>m4</code> reads the input token by token, it will copy each token
directly to the output immediately.
</p>
<p>The exception is when it finds a word with a macro definition.  In that
case <code>m4</code> will calculate the macro’s expansion, possibly reading
more input to get the arguments.  It then inserts the expansion in front
of the remaining input.  In other words, the resulting text from a macro
call will be read and parsed into tokens again.
</p>
<p><code>m4</code> expands a macro as soon as possible.  If it finds a macro call
when collecting the arguments to another, it will expand the second call
first.  This process continues until there are no more macro calls to
expand and all the input has been consumed.
</p>
<p>For a running example, examine how <code>m4</code> handles this input:
</p>
<div class="example">
<pre class="example">format(`Result is %d', eval(`2**15'))
</pre></div>

<p>First, <code>m4</code> sees that the token ‘<samp>format</samp>’ is a macro name, so
it collects the tokens ‘<samp>(</samp>’, ‘<samp>`Result is %d'</samp>’, ‘<samp>,</samp>’,
and ‘<samp>&nbsp;<!-- /@w --></samp>’, before encountering another potential macro.  Sure
enough, ‘<samp>eval</samp>’ is a macro name, so the nested argument collection
picks up ‘<samp>(</samp>’, ‘<samp>`2**15'</samp>’, and ‘<samp>)</samp>’, invoking the eval macro
with the lone argument of ‘<samp>2**15</samp>’.  The expansion of
‘<samp>eval(2**15)</samp>’ is ‘<samp>32768</samp>’, which is then rescanned as the five
tokens ‘<samp>3</samp>’, ‘<samp>2</samp>’, ‘<samp>7</samp>’, ‘<samp>6</samp>’, and ‘<samp>8</samp>’; and
combined with the next ‘<samp>)</samp>’, the format macro now has all its
arguments, as if the user had typed:
</p>
<div class="example">
<pre class="example">format(`Result is %d', 32768)
</pre></div>

<p>The format macro expands to ‘<samp>Result is 32768</samp>’, and we have another
round of scanning for the tokens ‘<samp>Result</samp>’, ‘<samp>&nbsp;<!-- /@w --></samp>’,
‘<samp>is</samp>’, ‘<samp>&nbsp;<!-- /@w --></samp>’, ‘<samp>3</samp>’, ‘<samp>2</samp>’, ‘<samp>7</samp>’, ‘<samp>6</samp>’, and
‘<samp>8</samp>’.  None of these are macros, so the final output is
</p>
<div class="example">
<pre class="example">⇒Result is 32768
</pre></div>

<p>As a more complicated example, we will contrast an actual code
example from the Gnulib project<a id="DOCF1" href="#FOOT1"><sup>1</sup></a>,
showing both a buggy approach and the desired results.  The user desires
to output a shell assignment statement that takes its argument and turns
it into a shell variable by converting it to uppercase and prepending a
prefix.  The original attempt looks like this:
</p>
<div class="example">
<pre class="example">changequote([,])dnl
define([gl_STRING_MODULE_INDICATOR],
  [
    dnl comment
    GNULIB_]translit([$1],[a-z],[A-Z])[=1
  ])dnl
  gl_STRING_MODULE_INDICATOR([strcase])
⇒  <!-- /@w -->
⇒        GNULIB_strcase=1
⇒  <!-- /@w -->
</pre></div>

<p>Oops – the argument did not get capitalized.  And although the manual
is not able to easily show it, both lines that appear empty actually
contain two trailing spaces.  By stepping through the parse, it is easy
to see what happened.  First, <code>m4</code> sees the token
‘<samp>changequote</samp>’, which it recognizes as a macro, followed by
‘<samp>(</samp>’, ‘<samp>[</samp>’, ‘<samp>,</samp>’, ‘<samp>]</samp>’, and ‘<samp>)</samp>’ to form the
argument list.  The macro expands to the empty string, but changes the
quoting characters to something more useful for generating shell code
(unbalanced ‘<samp>`</samp>’ and ‘<samp>'</samp>’ appear all the time in shell scripts,
but unbalanced ‘<samp>[]</samp>’ tend to be rare).  Also in the first line,
<code>m4</code> sees the token ‘<samp>dnl</samp>’, which it recognizes as a builtin
macro that consumes the rest of the line, resulting in no output for
that line.
</p>
<p>The second line starts a macro definition.  <code>m4</code> sees the token
‘<samp>define</samp>’, which it recognizes as a macro, followed by a ‘<samp>(</samp>’,
‘<samp>[gl_STRING_MODULE_INDICATOR]</samp>’, and ‘<samp>,</samp>’.  Because an unquoted
comma was encountered, the first argument is known to be the expansion
of the single-quoted string token, or ‘<samp>gl_STRING_MODULE_INDICATOR</samp>’.
Next, <code>m4</code> sees ‘<samp><span class="key">NL</span></samp>’, ‘<samp> </samp>’, and ‘<samp> </samp>’, but this
whitespace is discarded as part of argument collection.  Then comes a
rather lengthy single-quoted string token, ‘<samp>[<span class="key">NL</span>&nbsp;&nbsp;&nbsp;&nbsp;dnl
comment<span class="key">NL</span>&nbsp;&nbsp;&nbsp;&nbsp;GNULIB_]</samp>’.  This is followed by the token
‘<samp>translit</samp>’, which <code>m4</code> recognizes as a macro name, so a nested
macro expansion has started.
</p>
<p>The arguments to the <code>translit</code> are found by the tokens ‘<samp>(</samp>’,
‘<samp>[$1]</samp>’, ‘<samp>,</samp>’, ‘<samp>[a-z]</samp>’, ‘<samp>,</samp>’, ‘<samp>[A-Z]</samp>’, and finally
‘<samp>)</samp>’.  All three string arguments are expanded (or in other words,
the quotes are stripped), and since neither ‘<samp>$</samp>’ nor ‘<samp>1</samp>’ need
capitalization, the result of the macro is ‘<samp>$1</samp>’.  This expansion is
rescanned, resulting in the two literal characters ‘<samp>$</samp>’ and
‘<samp>1</samp>’.
</p>
<p>Scanning of the outer macro resumes, and picks up with
‘<samp>[=1<span class="key">NL</span>&nbsp;&nbsp;]</samp>’, and finally ‘<samp>)</samp>’.  The collected pieces of
expanded text are concatenated, with the end result that the macro
‘<samp>gl_STRING_MODULE_INDICATOR</samp>’ is now defined to be the sequence
‘<samp><span class="key">NL</span>&nbsp;&nbsp;&nbsp;&nbsp;dnl comment<span class="key">NL</span>&nbsp;&nbsp;&nbsp;&nbsp;GNULIB_$1=1<span class="key">NL</span>&nbsp;&nbsp;</samp>’.
Once again, ‘<samp>dnl</samp>’ is recognized and avoids a newline in the output.
</p>
<p>The final line is then parsed, beginning with ‘<samp> </samp>’ and ‘<samp> </samp>’
that are output literally.  Then ‘<samp>gl_STRING_MODULE_INDICATOR</samp>’ is
recognized as a macro name, with an argument list of ‘<samp>(</samp>’,
‘<samp>[strcase]</samp>’, and ‘<samp>)</samp>’.  Since the definition of the macro
contains the sequence ‘<samp>$1</samp>’, that sequence is replaced with the
argument ‘<samp>strcase</samp>’ prior to starting the rescan.  The rescan sees
‘<samp><span class="key">NL</span></samp>’ and four spaces, which are output literally, then
‘<samp>dnl</samp>’, which discards the text ‘<samp> comment<span class="key">NL</span></samp>’.  Next
comes four more spaces, also output literally, and the token
‘<samp>GNULIB_strcase</samp>’, which resulted from the earlier parameter
substitution.  Since that is not a macro name, it is output literally,
followed by the literal tokens ‘<samp>=</samp>’, ‘<samp>1</samp>’, ‘<samp><span class="key">NL</span></samp>’, and
two more spaces.  Finally, the original ‘<samp><span class="key">NL</span></samp>’ seen after the
macro invocation is scanned and output literally.
</p>
<p>Now for a corrected approach.  This rearranges the use of newlines and
whitespace so that less whitespace is output (which, although harmless
to shell scripts, can be visually unappealing), and fixes the quoting
issues so that the capitalization occurs when the macro
‘<samp>gl_STRING_MODULE_INDICATOR</samp>’ is invoked, rather then when it is
defined.  It also adds another layer of quoting to the first argument of
<code>translit</code>, to ensure that the output will be rescanned as a string
rather than a potential uppercase macro name needing further expansion.
</p>
<div class="example">
<pre class="example">changequote([,])dnl
define([gl_STRING_MODULE_INDICATOR],
  [dnl comment
  GNULIB_[]translit([[$1]], [a-z], [A-Z])=1dnl
])dnl
  gl_STRING_MODULE_INDICATOR([strcase])
⇒    GNULIB_STRCASE=1
</pre></div>

<p>The parsing of the first line is unchanged.  The second line sees the
name of the macro to define, then sees the discarded ‘<samp><span class="key">NL</span></samp>’
and two spaces, as before.  But this time, the next token is
‘<samp>[dnl comment<span class="key">NL</span>&nbsp;&nbsp;GNULIB_[]translit([[$1]], [a-z],
[A-Z])=1dnl<span class="key">NL</span>]</samp>’, which includes nested quotes, followed by
‘<samp>)</samp>’ to end the macro definition and ‘<samp>dnl</samp>’ to skip the
newline.  No early expansion of <code>translit</code> occurs, so the entire
string becomes the definition of the macro.
</p>
<p>The final line is then parsed, beginning with two spaces that are
output literally, and an invocation of
<code>gl_STRING_MODULE_INDICATOR</code> with the argument ‘<samp>strcase</samp>’.
Again, the ‘<samp>$1</samp>’ in the macro definition is substituted prior to
rescanning.  Rescanning first encounters ‘<samp>dnl</samp>’, and discards
‘<samp> comment<span class="key">NL</span></samp>’.  Then two spaces are output literally.  Next
comes the token ‘<samp>GNULIB_</samp>’, but that is not a macro, so it is
output literally.  The token ‘<samp>[]</samp>’ is an empty string, so it does
not affect output.  Then the token ‘<samp>translit</samp>’ is encountered.
</p>
<p>This time, the arguments to <code>translit</code> are parsed as ‘<samp>(</samp>’,
‘<samp>[[strcase]]</samp>’, ‘<samp>,</samp>’, ‘<samp> </samp>’, ‘<samp>[a-z]</samp>’, ‘<samp>,</samp>’, ‘<samp> </samp>’,
‘<samp>[A-Z]</samp>’, and ‘<samp>)</samp>’.  The two spaces are discarded, and the
translit results in the desired result ‘<samp>[STRCASE]</samp>’.  This is
rescanned, but since it is a string, the quotes are stripped and the
only output is a literal ‘<samp>STRCASE</samp>’.
Then the scanner sees ‘<samp>=</samp>’ and ‘<samp>1</samp>’, which are output
literally, followed by ‘<samp>dnl</samp>’ which discards the rest of the
definition of <code>gl_STRING_MODULE_INDICATOR</code>.  The newline at the
end of output is the literal ‘<samp><span class="key">NL</span></samp>’ that appeared after the
invocation of the macro.
</p>
<p>The order in which <code>m4</code> expands the macros can be further explored
using the trace facilities of GNU <code>m4</code> (see <a href="#Trace">Trace</a>).
</p>
<hr>
<span id="Macros"></span><div class="header">
<p>
Next: <a href="#Definitions" accesskey="n" rel="next">Definitions</a>, Previous: <a href="#Syntax" accesskey="p" rel="prev">Syntax</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="How-to-invoke-macros"></span><h2 class="chapter">4 How to invoke macros</h2>

<p>This chapter covers macro invocation, macro arguments and how macro
expansion is treated.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Invocation" accesskey="1">Invocation</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Macro invocation
</td></tr>
<tr><td valign="top" align="left">• <a href="#Inhibiting-Invocation" accesskey="2">Inhibiting Invocation</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Preventing macro invocation
</td></tr>
<tr><td valign="top" align="left">• <a href="#Macro-Arguments" accesskey="3">Macro Arguments</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Macro arguments
</td></tr>
<tr><td valign="top" align="left">• <a href="#Quoting-Arguments" accesskey="4">Quoting Arguments</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">On Quoting Arguments to macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Macro-expansion" accesskey="5">Macro expansion</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Expanding macros
</td></tr>
</tbody></table>

<hr>
<span id="Invocation"></span><div class="header">
<p>
Next: <a href="#Inhibiting-Invocation" accesskey="n" rel="next">Inhibiting Invocation</a>, Up: <a href="#Macros" accesskey="u" rel="up">Macros</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Macro-invocation"></span><h3 class="section">4.1 Macro invocation</h3>

<span id="index-macro-invocation"></span>
<span id="index-invoking-macros"></span>
<p>Macro invocations has one of the forms
</p>
<div class="example">
<pre class="example">name
</pre></div>

<p>which is a macro invocation without any arguments, or
</p>
<div class="example">
<pre class="example">name(arg1, arg2, …, arg<var>n</var>)
</pre></div>

<p>which is a macro invocation with <var>n</var> arguments.  Macros can have any
number of arguments.  All arguments are strings, but different macros
might interpret the arguments in different ways.
</p>
<p>The opening parenthesis <em>must</em> follow the <var>name</var> directly, with
no spaces in between.  If it does not, the macro is called with no
arguments at all.
</p>
<p>For a macro call to have no arguments, the parentheses <em>must</em> be
left out.  The macro call
</p>
<div class="example">
<pre class="example">name()
</pre></div>

<p>is a macro call with one argument, which is the empty string, not a call
with no arguments.
</p>
<hr>
<span id="Inhibiting-Invocation"></span><div class="header">
<p>
Next: <a href="#Macro-Arguments" accesskey="n" rel="next">Macro Arguments</a>, Previous: <a href="#Invocation" accesskey="p" rel="prev">Invocation</a>, Up: <a href="#Macros" accesskey="u" rel="up">Macros</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Preventing-macro-invocation"></span><h3 class="section">4.2 Preventing macro invocation</h3>

<p>An innovation of the <code>m4</code> language, compared to some of its
predecessors (like Strachey’s <code>GPM</code>, for example), is the ability
to recognize macro calls without resorting to any special, prefixed
invocation character.  While generally useful, this feature might
sometimes be the source of spurious, unwanted macro calls.  So, GNU
<code>m4</code> offers several mechanisms or techniques for inhibiting the
recognition of names as macro calls.
</p>
<span id="index-GNU-extensions"></span>
<span id="index-blind-macro"></span>
<span id="index-macro_002c-blind"></span>
<p>First of all, many builtin macros cannot meaningfully be called without
arguments.  As a GNU extension, for any of these macros,
whenever an opening parenthesis does not immediately follow their name,
the builtin macro call is not triggered.  This solves the most usual
cases, like for ‘<samp>include</samp>’ or ‘<samp>eval</samp>’.  Later in this document,
the sentence “This macro is recognized only with parameters” refers to
this specific provision of GNU M4, also known as a blind
builtin macro.  For the builtins defined by POSIX that bear
this disclaimer, POSIX specifically states that invoking those
builtins without arguments is unspecified, because many other
implementations simply invoke the builtin as though it were given one
empty argument instead.
</p>
<div class="example">
<pre class="example">$ <kbd>m4</kbd>
eval
⇒eval
eval(`1')
⇒1
</pre></div>

<p>There is also a command line option (<samp>--prefix-builtins</samp>, or
<samp>-P</samp>, see <a href="#Operation-modes">Invoking m4</a>) that renames all
builtin macros with a prefix of ‘<samp>m4_</samp>’ at startup.  The option has
no effect whatsoever on user defined macros.  For example, with this option,
one has to write <code>m4_dnl</code> and even <code>m4_m4exit</code>.  It also has
no effect on whether a macro requires parameters.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -P</kbd>
eval
⇒eval
eval(`1')
⇒eval(1)
m4_eval
⇒m4_eval
m4_eval(`1')
⇒1
</pre></div>

<p>Another alternative is to redefine problematic macros to a name less
likely to cause conflicts, using <a href="#Definitions">Definitions</a>.
</p>
<p>If your version of GNU <code>m4</code> has the <code>changeword</code> feature
compiled in, it offers far more flexibility in specifying the
syntax of macro names, both builtin or user-defined.  See <a href="#Changeword">Changeword</a>,
for more information on this experimental feature.
</p>
<p>Of course, the simplest way to prevent a name from being interpreted
as a call to an existing macro is to quote it.  The remainder of
this section studies a little more deeply how quoting affects macro
invocation, and how quoting can be used to inhibit macro invocation.
</p>
<p>Even if quoting is usually done over the whole macro name, it can also
be done over only a few characters of this name (provided, of course,
that the unquoted portions are not also a macro).  It is also possible
to quote the empty string, but this works only <em>inside</em> the name.
For example:
</p>
<div class="example">
<pre class="example">`divert'
⇒divert
`d'ivert
⇒divert
di`ver't
⇒divert
div`'ert
⇒divert
</pre></div>

<p>all yield the string ‘<samp>divert</samp>’.  While in both:
</p>
<div class="example">
<pre class="example">`'divert
⇒
divert`'
⇒
</pre></div>

<p>the <code>divert</code> builtin macro will be called, which expands to the
empty string.
</p>
<span id="index-rescanning-1"></span>
<p>The output of macro evaluations is always rescanned.  In the following
example, the input ‘<samp>x`'y</samp>’ yields the string ‘<samp>bCD</samp>’, exactly as
if <code>m4</code>
has been given ‘<samp>substr(ab`'cde,&nbsp;`1',&nbsp;`3')</samp>’<!-- /@w --> as input:
</p>
<div class="example">
<pre class="example">define(`cde', `CDE')
⇒
define(`x', `substr(ab')
⇒
define(`y', `cde, `1', `3')')
⇒
x`'y
⇒bCD
</pre></div>


<p>Unquoted strings on either side of a quoted string are subject to
being recognized as macro names.  In the following example, quoting the
empty string allows for the second <code>macro</code> to be recognized as such:
</p>
<div class="example">
<pre class="example">define(`macro', `m')
⇒
macro(`m')macro
⇒mmacro
macro(`m')`'macro
⇒mm
</pre></div>

<p>Quoting may prevent recognizing as a macro name the concatenation of a
macro expansion with the surrounding characters.  In this example:
</p>
<div class="example">
<pre class="example">define(`macro', `di$1')
⇒
macro(`v')`ert'
⇒divert
macro(`v')ert
⇒
</pre></div>

<p>the input will produce the string ‘<samp>divert</samp>’.  When the quotes were
removed, the <code>divert</code> builtin was called instead.
</p>
<hr>
<span id="Macro-Arguments"></span><div class="header">
<p>
Next: <a href="#Quoting-Arguments" accesskey="n" rel="next">Quoting Arguments</a>, Previous: <a href="#Inhibiting-Invocation" accesskey="p" rel="prev">Inhibiting Invocation</a>, Up: <a href="#Macros" accesskey="u" rel="up">Macros</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Macro-arguments"></span><h3 class="section">4.3 Macro arguments</h3>

<span id="index-macros_002c-arguments-to"></span>
<span id="index-arguments-to-macros"></span>
<p>When a name is seen, and it has a macro definition, it will be expanded
as a macro.
</p>
<p>If the name is followed by an opening parenthesis, the arguments will be
collected before the macro is called.  If too few arguments are
supplied, the missing arguments are taken to be the empty string.
However, some builtins are documented to behave differently for a
missing optional argument than for an explicit empty string.  If there
are too many arguments, the excess arguments are ignored.  Unquoted
leading whitespace is stripped off all arguments, but whitespace
generated by a macro expansion or occurring after a macro that expanded
to an empty string remains intact.  Whitespace includes space, tab,
newline, carriage return, vertical tab, and formfeed.
</p>
<div class="example">
<pre class="example">define(`macro', `$1')
⇒
macro( unquoted leading space lost)
⇒unquoted leading space lost
macro(` quoted leading space kept')
⇒ quoted leading space kept
macro(
 divert `unquoted space kept after expansion')
⇒ unquoted space kept after expansion
macro(macro(`
')`whitespace from expansion kept')
⇒
⇒whitespace from expansion kept
macro(`unquoted trailing whitespace kept'
)
⇒unquoted trailing whitespace kept
⇒
</pre></div>

<span id="index-warnings_002c-suppressing"></span>
<span id="index-suppressing-warnings"></span>
<p>Normally <code>m4</code> will issue warnings if a builtin macro is called
with an inappropriate number of arguments, but it can be suppressed with
the <samp>--quiet</samp> command line option (or <samp>--silent</samp>, or
<samp>-Q</samp>, see <a href="#Operation-modes">Invoking m4</a>).  For user
defined macros, there is no check of the number of arguments given.
</p>
<div class="example">
<pre class="example">$ <kbd>m4</kbd>
index(`abc')
error→m4:stdin:1: Warning: too few arguments to builtin `index'
⇒0
index(`abc',)
⇒0
index(`abc', `b', `ignored')
error→m4:stdin:3: Warning: excess arguments to builtin `index' ignored
⇒1
</pre></div>

<div class="example">
<pre class="example">$ <kbd>m4 -Q</kbd>
index(`abc')
⇒0
index(`abc',)
⇒0
index(`abc', `b', `ignored')
⇒1
</pre></div>

<p>Macros are expanded normally during argument collection, and whatever
commas, quotes and parentheses that might show up in the resulting
expanded text will serve to define the arguments as well.  Thus, if
<var>foo</var> expands to ‘<samp>, b, c</samp>’, the macro call
</p>
<div class="example">
<pre class="example">bar(a foo, d)
</pre></div>

<p>is a macro call with four arguments, which are ‘<samp>a </samp>’, ‘<samp>b</samp>’,
‘<samp>c</samp>’ and ‘<samp>d</samp>’.  To understand why the first argument contains
whitespace, remember that unquoted leading whitespace is never part
of an argument, but trailing whitespace always is.
</p>
<p>It is possible for a macro’s definition to change during argument
collection, in which case the expansion uses the definition that was in
effect at the time the opening ‘<samp>(</samp>’ was seen.
</p>
<div class="example">
<pre class="example">define(`f', `1')
⇒
f(define(`f', `2'))
⇒1
f
⇒2
</pre></div>

<p>It is an error if the end of file occurs while collecting arguments.
</p>
<div class="example">
<pre class="example">hello world
⇒hello world
define(
^D
error→m4:stdin:2: ERROR: end of file in argument list
</pre></div>

<hr>
<span id="Quoting-Arguments"></span><div class="header">
<p>
Next: <a href="#Macro-expansion" accesskey="n" rel="next">Macro expansion</a>, Previous: <a href="#Macro-Arguments" accesskey="p" rel="prev">Macro Arguments</a>, Up: <a href="#Macros" accesskey="u" rel="up">Macros</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="On-Quoting-Arguments-to-macros"></span><h3 class="section">4.4 On Quoting Arguments to macros</h3>

<span id="index-quoted-macro-arguments"></span>
<span id="index-macros_002c-quoted-arguments-to"></span>
<span id="index-arguments_002c-quoted-macro"></span>
<p>Each argument has unquoted leading whitespace removed.  Within each
argument, all unquoted parentheses must match.  For example, if
<var>foo</var> is a macro,
</p>
<div class="example">
<pre class="example">foo(() (`(') `(')
</pre></div>

<p>is a macro call, with one argument, whose value is ‘<samp>() (() (</samp>’.
Commas separate arguments, except when they occur inside quotes,
comments, or unquoted parentheses.  See <a href="#Pseudo-Arguments">Pseudo Arguments</a>, for
examples.
</p>
<p>It is common practice to quote all arguments to macros, unless you are
sure you want the arguments expanded.  Thus, in the above
example with the parentheses, the ‘right’ way to do it is like this:
</p>
<div class="example">
<pre class="example">foo(`() (() (')
</pre></div>

<span id="index-quoting-rule-of-thumb"></span>
<span id="index-rule-of-thumb_002c-quoting"></span>
<p>It is, however, in certain cases necessary (because nested expansion
must occur to create the arguments for the outer macro) or convenient
(because it uses fewer characters) to leave out quotes for some
arguments, and there is nothing wrong in doing it.  It just makes life a
bit harder, if you are not careful to follow a consistent quoting style.
For consistency, this manual follows the rule of thumb that each layer
of parentheses introduces another layer of single quoting, except when
showing the consequences of quoting rules.  This is done even when the
quoted string cannot be a macro, such as with integers when you have not
changed the syntax via <code>changeword</code> (see <a href="#Changeword">Changeword</a>).
</p>
<p>The quoting rule of thumb of one level of quoting per parentheses has a
nice property: when a macro name appears inside parentheses, you can
determine when it will be expanded.  If it is not quoted, it will be
expanded prior to the outer macro, so that its expansion becomes the
argument.  If it is single-quoted, it will be expanded after the outer
macro.  And if it is double-quoted, it will be used as literal text
instead of a macro name.
</p>
<div class="example">
<pre class="example">define(`active', `ACT, IVE')
⇒
define(`show', `$1 $1')
⇒
show(active)
⇒ACT ACT
show(`active')
⇒ACT, IVE ACT, IVE
show(``active'')
⇒active active
</pre></div>

<hr>
<span id="Macro-expansion"></span><div class="header">
<p>
Previous: <a href="#Quoting-Arguments" accesskey="p" rel="prev">Quoting Arguments</a>, Up: <a href="#Macros" accesskey="u" rel="up">Macros</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Macro-expansion-1"></span><h3 class="section">4.5 Macro expansion</h3>

<span id="index-macros_002c-expansion-of"></span>
<span id="index-expansion-of-macros"></span>
<p>When the arguments, if any, to a macro call have been collected, the
macro is expanded, and the expansion text is pushed back onto the input
(unquoted), and reread.  The expansion text from one macro call might
therefore result in more macros being called, if the calls are included,
completely or partially, in the first macro calls’ expansion.
</p>
<p>Taking a very simple example, if <var>foo</var> expands to ‘<samp>bar</samp>’, and
<var>bar</var> expands to ‘<samp>Hello</samp>’, the input
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -Dbar=Hello -Dfoo=bar</kbd>
foo
⇒Hello
</pre></div>

<p>will expand first to ‘<samp>bar</samp>’, and when this is reread and
expanded, into ‘<samp>Hello</samp>’.
</p>

<hr>
<span id="Definitions"></span><div class="header">
<p>
Next: <a href="#Conditionals" accesskey="n" rel="next">Conditionals</a>, Previous: <a href="#Macros" accesskey="p" rel="prev">Macros</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="How-to-define-new-macros"></span><h2 class="chapter">5 How to define new macros</h2>

<span id="index-macros_002c-how-to-define-new"></span>
<span id="index-defining-new-macros"></span>
<p>Macros can be defined, redefined and deleted in several different ways.
Also, it is possible to redefine a macro without losing a previous
value, and bring back the original value at a later time.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Define" accesskey="1">Define</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Defining a new macro
</td></tr>
<tr><td valign="top" align="left">• <a href="#Arguments" accesskey="2">Arguments</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Arguments to macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Pseudo-Arguments" accesskey="3">Pseudo Arguments</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Special arguments to macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Undefine" accesskey="4">Undefine</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Deleting a macro
</td></tr>
<tr><td valign="top" align="left">• <a href="#Defn" accesskey="5">Defn</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Renaming macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Pushdef" accesskey="6">Pushdef</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Temporarily redefining macros
</td></tr>
<tr><th colspan="3" valign="top" align="left"><pre class="menu-comment">
</pre></th></tr><tr><td valign="top" align="left">• <a href="#Indir" accesskey="7">Indir</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Indirect call of macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Builtin" accesskey="8">Builtin</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Indirect call of builtins
</td></tr>
</tbody></table>

<hr>
<span id="Define"></span><div class="header">
<p>
Next: <a href="#Arguments" accesskey="n" rel="next">Arguments</a>, Up: <a href="#Definitions" accesskey="u" rel="up">Definitions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Defining-a-macro"></span><h3 class="section">5.1 Defining a macro</h3>

<p>The normal way to define or redefine macros is to use the builtin
<code>define</code>:
</p>
<dl>
<dt id="index-define">Builtin: <strong>define</strong> <em>(<var>name</var>, <span class="roman">[</span><var>expansion</var><span class="roman">]</span>)</em></dt>
<dd><p>Defines <var>name</var> to expand to <var>expansion</var>.  If
<var>expansion</var> is not given, it is taken to be empty.
</p>
<p>The expansion of <code>define</code> is void.
The macro <code>define</code> is recognized only with parameters.
</p></dd></dl>

<p>The following example defines the macro <var>foo</var> to expand to the text
‘<samp>Hello World.</samp>’.
</p>
<div class="example">
<pre class="example">define(`foo', `Hello world.')
⇒
foo
⇒Hello world.
</pre></div>

<p>The empty line in the output is there because the newline is not
a part of the macro definition, and it is consequently copied to
the output.  This can be avoided by use of the macro <code>dnl</code>.
See <a href="#Dnl">Dnl</a>, for details.
</p>
<p>The first argument to <code>define</code> should be quoted; otherwise, if the
macro is already defined, you will be defining a different macro.  This
example shows the problems with underquoting, since we did not want to
redefine <code>one</code>:
</p>
<div class="example">
<pre class="example">define(foo, one)
⇒
define(foo, two)
⇒
one
⇒two
</pre></div>

<span id="index-GNU-extensions-1"></span>
<p>GNU <code>m4</code> normally replaces only the <em>topmost</em>
definition of a macro if it has several definitions from <code>pushdef</code>
(see <a href="#Pushdef">Pushdef</a>).  Some other implementations of <code>m4</code> replace all
definitions of a macro with <code>define</code>.  See <a href="#Incompatibilities">Incompatibilities</a>,
for more details.
</p>
<p>As a GNU extension, the first argument to <code>define</code> does
not have to be a simple word.
It can be any text string, even the empty string.  A macro with a
non-standard name cannot be invoked in the normal way, as the name is
not recognized.  It can only be referenced by the builtins <code>indir</code>
(see <a href="#Indir">Indir</a>) and <code>defn</code> (see <a href="#Defn">Defn</a>).
</p>
<span id="index-arrays"></span>
<p>Arrays and associative arrays can be simulated by using non-standard
macro names.
</p>
<dl>
<dt id="index-array">Composite: <strong>array</strong> <em>(<var>index</var>)</em></dt>
<dt id="index-array_005fset">Composite: <strong>array_set</strong> <em>(<var>index</var>, <span class="roman">[</span><var>value</var><span class="roman">]</span>)</em></dt>
<dd><p>Provide access to entries within an array.  <code>array</code> reads the entry
at location <var>index</var>, and <code>array_set</code> assigns <var>value</var> to
location <var>index</var>.
</p></dd></dl>

<div class="example">
<pre class="example">define(`array', `defn(format(``array[%d]'', `$1'))')
⇒
define(`array_set', `define(format(``array[%d]'', `$1'), `$2')')
⇒
array_set(`4', `array element no. 4')
⇒
array_set(`17', `array element no. 17')
⇒
array(`4')
⇒array element no. 4
array(eval(`10 + 7'))
⇒array element no. 17
</pre></div>

<p>Change the ‘<samp>%d</samp>’ to ‘<samp>%s</samp>’ and it is an associative array.
</p>
<hr>
<span id="Arguments"></span><div class="header">
<p>
Next: <a href="#Pseudo-Arguments" accesskey="n" rel="next">Pseudo Arguments</a>, Previous: <a href="#Define" accesskey="p" rel="prev">Define</a>, Up: <a href="#Definitions" accesskey="u" rel="up">Definitions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Arguments-to-macros"></span><h3 class="section">5.2 Arguments to macros</h3>

<span id="index-macros_002c-arguments-to-1"></span>
<span id="index-arguments-to-macros-1"></span>
<p>Macros can have arguments.  The <var>n</var>th argument is denoted by
<code>$n</code> in the expansion text, and is replaced by the <var>n</var>th actual
argument, when the macro is expanded.  Replacement of arguments happens
before rescanning, regardless of how many nesting levels of quoting
appear in the expansion.  Here is an example of a macro with
two arguments.
</p>
<dl>
<dt id="index-exch">Composite: <strong>exch</strong> <em>(<var>arg1</var>, <var>arg2</var>)</em></dt>
<dd><p>Expands to <var>arg2</var> followed by <var>arg1</var>, effectively exchanging
their order.
</p></dd></dl>

<div class="example">
<pre class="example">define(`exch', `$2, $1')
⇒
exch(`arg1', `arg2')
⇒arg2, arg1
</pre></div>

<p>This can be used, for example, if you like the arguments to
<code>define</code> to be reversed.
</p>
<div class="example">
<pre class="example">define(`exch', `$2, $1')
⇒
define(exch(``expansion text'', ``macro''))
⇒
macro
⇒expansion text
</pre></div>

<p>See <a href="#Quoting-Arguments">Quoting Arguments</a>, for an explanation of the double quotes.
(You should try and improve this example so that clients of <code>exch</code>
do not have to double quote; or see <a href="#Improved-exch">Answers</a>).
</p>
<p>As a special case, the zeroth argument, <code>$0</code>, is always the name
of the macro being expanded.
</p>
<div class="example">
<pre class="example">define(`test', ``Macro name: $0'')
⇒
test
⇒Macro name: test
</pre></div>

<p>If you want quoted text to appear as part of the expansion text,
remember that quotes can be nested in quoted strings.  Thus, in
</p>
<div class="example">
<pre class="example">define(`foo', `This is macro `foo'.')
⇒
foo
⇒This is macro foo.
</pre></div>

<p>The ‘<samp>foo</samp>’ in the expansion text is <em>not</em> expanded, since it is
a quoted string, and not a name.
</p>
<span id="index-GNU-extensions-2"></span>
<span id="index-nine-arguments_002c-more-than"></span>
<span id="index-more-than-nine-arguments"></span>
<span id="index-arguments_002c-more-than-nine"></span>
<span id="index-positional-parameters_002c-more-than-nine"></span>
<p>GNU <code>m4</code> allows the number following the ‘<samp>$</samp>’ to
consist of one or more digits, allowing macros to have any number of
arguments.  The extension of accepting multiple digits is incompatible
with POSIX, and is different than traditional implementations
of <code>m4</code>, which only recognize one digit.  Therefore, future
versions of GNU M4 will phase out this feature.  To portably
access beyond the ninth argument, you can use the <code>argn</code> macro
documented later (see <a href="#Shift">Shift</a>).
</p>
<p>POSIX also states that ‘<samp>$</samp>’ followed immediately by
‘<samp>{</samp>’ in a macro definition is implementation-defined.  This version
of M4 passes the literal characters ‘<samp>${</samp>’ through unchanged, but M4
2.0 will implement an optional feature similar to <code>sh</code>, where
‘<samp>${11}</samp>’ expands to the eleventh argument, to replace the current
recognition of ‘<samp>$11</samp>’.  Meanwhile, if you want to guarantee that you
will get a literal ‘<samp>${</samp>’ in output when expanding a macro, even
when you upgrade to M4 2.0, you can use nested quoting to your
advantage:
</p>
<div class="example">
<pre class="example">define(`foo', `single quoted $`'{1} output')
⇒
define(`bar', ``double quoted $'`{2} output'')
⇒
foo(`a', `b')
⇒single quoted ${1} output
bar(`a', `b')
⇒double quoted ${2} output
</pre></div>

<p>To help you detect places in your M4 input files that might change in
behavior due to the changed behavior of M4 2.0, you can use the
<samp>--warn-macro-sequence</samp> command-line option (see <a href="#Operation-modes">Invoking m4</a>) with the default regular expression.  This will
add a warning any time a macro definition includes ‘<samp>$</samp>’ followed by
multiple digits, or by ‘<samp>{</samp>’.  The warning is not enabled by
default, because it triggers a number of warnings in Autoconf 2.61 (and
Autoconf uses <samp>-E</samp> to treat warnings as errors), and because it
will still be possible to restore older behavior in M4 2.0.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 --warn-macro-sequence</kbd>
define(`foo', `$001 ${1} $1')
error→m4:stdin:1: Warning: definition of `foo' contains sequence `$001'
error→m4:stdin:1: Warning: definition of `foo' contains sequence `${1}'
⇒
foo(`bar')
⇒bar ${1} bar
</pre></div>

<hr>
<span id="Pseudo-Arguments"></span><div class="header">
<p>
Next: <a href="#Undefine" accesskey="n" rel="next">Undefine</a>, Previous: <a href="#Arguments" accesskey="p" rel="prev">Arguments</a>, Up: <a href="#Definitions" accesskey="u" rel="up">Definitions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Special-arguments-to-macros"></span><h3 class="section">5.3 Special arguments to macros</h3>

<span id="index-special-arguments-to-macros"></span>
<span id="index-macros_002c-special-arguments-to"></span>
<span id="index-arguments-to-macros_002c-special"></span>
<p>There is a special notation for the number of actual arguments supplied,
and for all the actual arguments.
</p>
<p>The number of actual arguments in a macro call is denoted by <code>$#</code>
in the expansion text.
</p>
<dl>
<dt id="index-nargs">Composite: <strong>nargs</strong> <em>(…)</em></dt>
<dd><p>Expands to a count of the number of arguments supplied.
</p></dd></dl>

<div class="example">
<pre class="example">define(`nargs', `$#')
⇒
nargs
⇒0
nargs()
⇒1
nargs(`arg1', `arg2', `arg3')
⇒3
nargs(`commas can be quoted, like this')
⇒1
nargs(arg1#inside comments, commas do not separate arguments
still arg1)
⇒1
nargs((unquoted parentheses, like this, group arguments))
⇒1
</pre></div>

<p>Remember that ‘<samp>#</samp>’ defaults to the comment character; if you forget
quotes to inhibit the comment behavior, your macro definition may not
end where you expected.
</p>
<div class="example">
<pre class="example">dnl Attempt to define a macro to just `$#'
define(underquoted, $#)
oops)
⇒
underquoted
⇒0)
⇒oops
</pre></div>

<p>The notation <code>$*</code> can be used in the expansion text to denote all
the actual arguments, unquoted, with commas in between.  For example
</p>
<div class="example">
<pre class="example">define(`echo', `$*')
⇒
echo(arg1,    arg2, arg3 , arg4)
⇒arg1,arg2,arg3 ,arg4
</pre></div>

<p>Often each argument should be quoted, and the notation <code>$@</code> handles
that.  It is just like <code>$*</code>, except that it quotes each argument.
A simple example of that is:
</p>
<div class="example">
<pre class="example">define(`echo', `$@')
⇒
echo(arg1,    arg2, arg3 , arg4)
⇒arg1,arg2,arg3 ,arg4
</pre></div>

<p>Where did the quotes go?  Of course, they were eaten, when the expanded
text were reread by <code>m4</code>.  To show the difference, try
</p>
<div class="example">
<pre class="example">define(`echo1', `$*')
⇒
define(`echo2', `$@')
⇒
define(`foo', `This is macro `foo'.')
⇒
echo1(foo)
⇒This is macro This is macro foo..
echo1(`foo')
⇒This is macro foo.
echo2(foo)
⇒This is macro foo.
echo2(`foo')
⇒foo
</pre></div>

<p>See <a href="#Trace">Trace</a>, if you do not understand this.  As another example of the
difference, remember that comments encountered in arguments are passed
untouched to the macro, and that quoting disables comments.
</p>
<div class="example">
<pre class="example">define(`echo1', `$*')
⇒
define(`echo2', `$@')
⇒
define(`foo', `bar')
⇒
echo1(#foo'foo
foo)
⇒#foo'foo
⇒bar
echo2(#foo'foo
foo)
⇒#foobar
⇒bar'
</pre></div>


<p>A ‘<samp>$</samp>’ sign in the expansion text, that is not followed by anything
<code>m4</code> understands, is simply copied to the macro expansion, as any
other text is.
</p>
<div class="example">
<pre class="example">define(`foo', `$$$ hello $$$')
⇒
foo
⇒$$$ hello $$$
</pre></div>

<span id="index-rescanning-2"></span>
<span id="index-literal-output"></span>
<span id="index-output_002c-literal"></span>
<p>If you want a macro to expand to something like ‘<samp>$12</samp>’, the
judicious use of nested quoting can put a safe character between the
<code>$</code> and the next character, relying on the rescanning to remove the
nested quote.  This will prevent <code>m4</code> from interpreting the
<code>$</code> sign as a reference to an argument.
</p>
<div class="example">
<pre class="example">define(`foo', `no nested quote: $1')
⇒
foo(`arg')
⇒no nested quote: arg
define(`foo', `nested quote around $: `$'1')
⇒
foo(`arg')
⇒nested quote around $: $1
define(`foo', `nested empty quote after $: $`'1')
⇒
foo(`arg')
⇒nested empty quote after $: $1
define(`foo', `nested quote around next character: $`1'')
⇒
foo(`arg')
⇒nested quote around next character: $1
define(`foo', `nested quote around both: `$1'')
⇒
foo(`arg')
⇒nested quote around both: arg
</pre></div>

<hr>
<span id="Undefine"></span><div class="header">
<p>
Next: <a href="#Defn" accesskey="n" rel="next">Defn</a>, Previous: <a href="#Pseudo-Arguments" accesskey="p" rel="prev">Pseudo Arguments</a>, Up: <a href="#Definitions" accesskey="u" rel="up">Definitions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Deleting-a-macro"></span><h3 class="section">5.4 Deleting a macro</h3>

<span id="index-macros_002c-how-to-delete"></span>
<span id="index-deleting-macros"></span>
<span id="index-undefining-macros"></span>
<p>A macro definition can be removed with <code>undefine</code>:
</p>
<dl>
<dt id="index-undefine">Builtin: <strong>undefine</strong> <em>(<var>name</var>…)</em></dt>
<dd><p>For each argument, remove the macro <var>name</var>.  The macro names must
necessarily be quoted, since they will be expanded otherwise.
</p>
<p>The expansion of <code>undefine</code> is void.
The macro <code>undefine</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">foo bar blah
⇒foo bar blah
define(`foo', `some')define(`bar', `other')define(`blah', `text')
⇒
foo bar blah
⇒some other text
undefine(`foo')
⇒
foo bar blah
⇒foo other text
undefine(`bar', `blah')
⇒
foo bar blah
⇒foo bar blah
</pre></div>

<p>Undefining a macro inside that macro’s expansion is safe; the macro
still expands to the definition that was in effect at the ‘<samp>(</samp>’.
</p>
<div class="example">
<pre class="example">define(`f', ``$0':$1')
⇒
f(f(f(undefine(`f')`hello world')))
⇒f:f:f:hello world
f(`bye')
⇒f(bye)
</pre></div>

<p>It is not an error for <var>name</var> to have no macro definition.  In that
case, <code>undefine</code> does nothing.
</p>
<hr>
<span id="Defn"></span><div class="header">
<p>
Next: <a href="#Pushdef" accesskey="n" rel="next">Pushdef</a>, Previous: <a href="#Undefine" accesskey="p" rel="prev">Undefine</a>, Up: <a href="#Definitions" accesskey="u" rel="up">Definitions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Renaming-macros"></span><h3 class="section">5.5 Renaming macros</h3>

<span id="index-macros_002c-how-to-rename"></span>
<span id="index-renaming-macros"></span>
<span id="index-macros_002c-displaying-definitions"></span>
<span id="index-definitions_002c-displaying-macro"></span>
<p>It is possible to rename an already defined macro.  To do this, you need
the builtin <code>defn</code>:
</p>
<dl>
<dt id="index-defn">Builtin: <strong>defn</strong> <em>(<var>name</var>…)</em></dt>
<dd><p>Expands to the <em>quoted definition</em> of each <var>name</var>.  If an
argument is not a defined macro, the expansion for that argument is
empty.
</p>
<p>If <var>name</var> is a user-defined macro, the quoted definition is simply
the quoted expansion text.  If, instead, there is only one <var>name</var>
and it is a builtin, the
expansion is a special token, which points to the builtin’s internal
definition.  This token is only meaningful as the second argument to
<code>define</code> (and <code>pushdef</code>), and is silently converted to an
empty string in most other contexts.  Combining a builtin with anything
else is not supported; a warning is issued and the builtin is omitted
from the final expansion.
</p>
<p>The macro <code>defn</code> is recognized only with parameters.
</p></dd></dl>

<p>Its normal use is best understood through an example, which shows how to
rename <code>undefine</code> to <code>zap</code>:
</p>
<div class="example">
<pre class="example">define(`zap', defn(`undefine'))
⇒
zap(`undefine')
⇒
undefine(`zap')
⇒undefine(zap)
</pre></div>

<p>In this way, <code>defn</code> can be used to copy macro definitions, and also
definitions of builtin macros.  Even if the original macro is removed,
the other name can still be used to access the definition.
</p>
<p>The fact that macro definitions can be transferred also explains why you
should use <code>$0</code>, rather than retyping a macro’s name in its
definition:
</p>
<div class="example">
<pre class="example">define(`foo', `This is `$0'')
⇒
define(`bar', defn(`foo'))
⇒
bar
⇒This is bar
</pre></div>

<p>Macros used as string variables should be referred through <code>defn</code>,
to avoid unwanted expansion of the text:
</p>
<div class="example">
<pre class="example">define(`string', `The macro dnl is very useful
')
⇒
string
⇒The macro <!-- /@w -->
defn(`string')
⇒The macro dnl is very useful
⇒
</pre></div>

<span id="index-rescanning-3"></span>
<p>However, it is important to remember that <code>m4</code> rescanning is purely
textual.  If an unbalanced end-quote string occurs in a macro
definition, the rescan will see that embedded quote as the termination
of the quoted string, and the remainder of the macro’s definition will
be rescanned unquoted.  Thus it is a good idea to avoid unbalanced
end-quotes in macro definitions or arguments to macros.
</p>
<div class="example">
<pre class="example">define(`foo', a'a)
⇒
define(`a', `A')
⇒
define(`echo', `$@')
⇒
foo
⇒A'A
defn(`foo')
⇒aA'
echo(foo)
⇒AA'
</pre></div>

<p>On the other hand, it is possible to exploit the fact that <code>defn</code>
can concatenate multiple macros prior to the rescanning phase, in order
to join the definitions of macros that, in isolation, have unbalanced
quotes.  This is particularly useful when one has used several macros to
accumulate text that M4 should rescan as a whole.  In the example below,
note how the use of <code>defn</code> on <code>l</code> in isolation opens a string,
which is not closed until the next line; but used on <code>l</code> and
<code>r</code> together results in nested quoting.
</p>
<div class="example">
<pre class="example">define(`l', `&lt;[&gt;')define(`r', `&lt;]&gt;')
⇒
changequote(`[', `]')
⇒
defn([l])defn([r])
])
⇒&lt;[&gt;]defn([r])
⇒)
defn([l], [r])
⇒&lt;[&gt;][&lt;]&gt;
</pre></div>

<span id="index-builtins_002c-special-tokens"></span>
<span id="index-tokens_002c-builtin-macro"></span>
<p>Using <code>defn</code> to generate special tokens for builtin macros outside
of expected contexts can sometimes trigger warnings.  But most of the
time, such tokens are silently converted to the empty string.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d</kbd>
defn(`defn')
⇒
define(defn(`divnum'), `cannot redefine a builtin token')
error→m4:stdin:2: Warning: define: invalid macro name ignored
⇒
divnum
⇒0
len(defn(`divnum'))
⇒0
</pre></div>

<p>Also note that <code>defn</code> with multiple arguments can only join text
macros, not builtins, although a future version of GNU M4 may
lift this restriction.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d</kbd>
define(`a', `A')define(`AA', `b')
⇒
traceon(`defn', `define')
⇒
defn(`a', `divnum', `a')
error→m4:stdin:3: Warning: cannot concatenate builtin `divnum'
error→m4trace: -1- defn(`a', `divnum', `a') -&gt; ``A'`A''
⇒AA
define(`mydivnum', defn(`divnum', `divnum'))mydivnum
error→m4:stdin:4: Warning: cannot concatenate builtin `divnum'
error→m4:stdin:4: Warning: cannot concatenate builtin `divnum'
error→m4trace: -2- defn(`divnum', `divnum')
error→m4trace: -1- define(`mydivnum', `')
⇒
traceoff(`defn', `define')
⇒
</pre></div>

<hr>
<span id="Pushdef"></span><div class="header">
<p>
Next: <a href="#Indir" accesskey="n" rel="next">Indir</a>, Previous: <a href="#Defn" accesskey="p" rel="prev">Defn</a>, Up: <a href="#Definitions" accesskey="u" rel="up">Definitions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Temporarily-redefining-macros"></span><h3 class="section">5.6 Temporarily redefining macros</h3>

<span id="index-macros_002c-temporary-redefinition-of"></span>
<span id="index-temporary-redefinition-of-macros"></span>
<span id="index-redefinition-of-macros_002c-temporary"></span>
<span id="index-definition-stack"></span>
<span id="index-pushdef-stack"></span>
<span id="index-stack_002c-macro-definition"></span>
<p>It is possible to redefine a macro temporarily, reverting to the
previous definition at a later time.  This is done with the builtins
<code>pushdef</code> and <code>popdef</code>:
</p>
<dl>
<dt id="index-pushdef">Builtin: <strong>pushdef</strong> <em>(<var>name</var>, <span class="roman">[</span><var>expansion</var><span class="roman">]</span>)</em></dt>
<dt id="index-popdef">Builtin: <strong>popdef</strong> <em>(<var>name</var>…)</em></dt>
<dd><p>Analogous to <code>define</code> and <code>undefine</code>.
</p>
<p>These macros work in a stack-like fashion.  A macro is temporarily
redefined with <code>pushdef</code>, which replaces an existing definition of
<var>name</var>, while saving the previous definition, before the new one is
installed.  If there is no previous definition, <code>pushdef</code> behaves
exactly like <code>define</code>.
</p>
<p>If a macro has several definitions (of which only one is accessible),
the topmost definition can be removed with <code>popdef</code>.  If there is
no previous definition, <code>popdef</code> behaves like <code>undefine</code>.
</p>
<p>The expansion of both <code>pushdef</code> and <code>popdef</code> is void.
The macros <code>pushdef</code> and <code>popdef</code> are recognized only with
parameters.
</p></dd></dl>

<div class="example">
<pre class="example">define(`foo', `Expansion one.')
⇒
foo
⇒Expansion one.
pushdef(`foo', `Expansion two.')
⇒
foo
⇒Expansion two.
pushdef(`foo', `Expansion three.')
⇒
pushdef(`foo', `Expansion four.')
⇒
popdef(`foo')
⇒
foo
⇒Expansion three.
popdef(`foo', `foo')
⇒
foo
⇒Expansion one.
popdef(`foo')
⇒
foo
⇒foo
</pre></div>

<p>If a macro with several definitions is redefined with <code>define</code>, the
topmost definition is <em>replaced</em> with the new definition.  If it is
removed with <code>undefine</code>, <em>all</em> the definitions are removed,
and not only the topmost one.  However, POSIX allows other
implementations that treat <code>define</code> as replacing an entire stack
of definitions with a single new definition, so to be portable to other
implementations, it may be worth explicitly using <code>popdef</code> and
<code>pushdef</code> rather than relying on the GNU behavior of
<code>define</code>.
</p>
<div class="example">
<pre class="example">define(`foo', `Expansion one.')
⇒
foo
⇒Expansion one.
pushdef(`foo', `Expansion two.')
⇒
foo
⇒Expansion two.
define(`foo', `Second expansion two.')
⇒
foo
⇒Second expansion two.
undefine(`foo')
⇒
foo
⇒foo
</pre></div>

<span id="index-local-variables"></span>
<span id="index-variables_002c-local"></span>
<p>Local variables within macros are made with <code>pushdef</code> and
<code>popdef</code>.  At the start of the macro a new definition is pushed,
within the macro it is manipulated and at the end it is popped,
revealing the former definition.
</p>
<p>It is possible to temporarily redefine a builtin with <code>pushdef</code>
and <code>defn</code>.
</p>
<hr>
<span id="Indir"></span><div class="header">
<p>
Next: <a href="#Builtin" accesskey="n" rel="next">Builtin</a>, Previous: <a href="#Pushdef" accesskey="p" rel="prev">Pushdef</a>, Up: <a href="#Definitions" accesskey="u" rel="up">Definitions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Indirect-call-of-macros"></span><h3 class="section">5.7 Indirect call of macros</h3>

<span id="index-indirect-call-of-macros"></span>
<span id="index-call-of-macros_002c-indirect"></span>
<span id="index-macros_002c-indirect-call-of"></span>
<span id="index-GNU-extensions-3"></span>
<p>Any macro can be called indirectly with <code>indir</code>:
</p>
<dl>
<dt id="index-indir">Builtin: <strong>indir</strong> <em>(<var>name</var>, <span class="roman">[</span><var>args…</var><span class="roman">]</span>)</em></dt>
<dd><p>Results in a call to the macro <var>name</var>, which is passed the
rest of the arguments <var>args</var>.  If <var>name</var> is not defined, an
error message is printed, and the expansion is void.
</p>
<p>The macro <code>indir</code> is recognized only with parameters.
</p></dd></dl>

<p>This can be used to call macros with computed or “invalid”
names (<code>define</code> allows such names to be defined):
</p>
<div class="example">
<pre class="example">define(`$$internal$macro', `Internal macro (name `$0')')
⇒
$$internal$macro
⇒$$internal$macro
indir(`$$internal$macro')
⇒Internal macro (name $$internal$macro)
</pre></div>

<p>The point is, here, that larger macro packages can have private macros
defined, that will not be called by accident.  They can <em>only</em> be
called through the builtin <code>indir</code>.
</p>
<p>One other point to observe is that argument collection occurs before
<code>indir</code> invokes <var>name</var>, so if argument collection changes the
value of <var>name</var>, that will be reflected in the final expansion.
This is different than the behavior when invoking macros directly,
where the definition that was in effect before argument collection is
used.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d</kbd>
define(`f', `1')
⇒
f(define(`f', `2'))
⇒1
indir(`f', define(`f', `3'))
⇒3
indir(`f', undefine(`f'))
error→m4:stdin:4: undefined macro `f'
⇒
</pre></div>

<p>When handed the result of <code>defn</code> (see <a href="#Defn">Defn</a>) as one of its
arguments, <code>indir</code> defers to the invoked <var>name</var> for whether a
token representing a builtin is recognized or flattened to the empty
string.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d</kbd>
indir(defn(`defn'), `divnum')
error→m4:stdin:1: Warning: indir: invalid macro name ignored
⇒
indir(`define', defn(`defn'), `divnum')
error→m4:stdin:2: Warning: define: invalid macro name ignored
⇒
indir(`define', `foo', defn(`divnum'))
⇒
foo
⇒0
indir(`divert', defn(`foo'))
error→m4:stdin:5: empty string treated as 0 in builtin `divert'
⇒
</pre></div>

<hr>
<span id="Builtin"></span><div class="header">
<p>
Previous: <a href="#Indir" accesskey="p" rel="prev">Indir</a>, Up: <a href="#Definitions" accesskey="u" rel="up">Definitions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Indirect-call-of-builtins"></span><h3 class="section">5.8 Indirect call of builtins</h3>

<span id="index-indirect-call-of-builtins"></span>
<span id="index-call-of-builtins_002c-indirect"></span>
<span id="index-builtins_002c-indirect-call-of"></span>
<span id="index-GNU-extensions-4"></span>
<p>Builtin macros can be called indirectly with <code>builtin</code>:
</p>
<dl>
<dt id="index-builtin">Builtin: <strong>builtin</strong> <em>(<var>name</var>, <span class="roman">[</span><var>args…</var><span class="roman">]</span>)</em></dt>
<dd><p>Results in a call to the builtin <var>name</var>, which is passed the
rest of the arguments <var>args</var>.  If <var>name</var> does not name a
builtin, an error message is printed, and the expansion is void.
</p>
<p>The macro <code>builtin</code> is recognized only with parameters.
</p></dd></dl>

<p>This can be used even if <var>name</var> has been given another definition
that has covered the original, or been undefined so that no macro
maps to the builtin.
</p>
<div class="example">
<pre class="example">pushdef(`define', `hidden')
⇒
undefine(`undefine')
⇒
define(`foo', `bar')
⇒hidden
foo
⇒foo
builtin(`define', `foo', defn(`divnum'))
⇒
foo
⇒0
builtin(`define', `foo', `BAR')
⇒
foo
⇒BAR
undefine(`foo')
⇒undefine(foo)
foo
⇒BAR
builtin(`undefine', `foo')
⇒
foo
⇒foo
</pre></div>

<p>The <var>name</var> argument only matches the original name of the builtin,
even when the <samp>--prefix-builtins</samp> option (or <samp>-P</samp>,
see <a href="#Operation-modes">Invoking m4</a>) is in effect.  This is different
from <code>indir</code>, which only tracks current macro names.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -P</kbd>
m4_builtin(`divnum')
⇒0
m4_builtin(`m4_divnum')
error→m4:stdin:2: undefined builtin `m4_divnum'
⇒
m4_indir(`divnum')
error→m4:stdin:3: undefined macro `divnum'
⇒
m4_indir(`m4_divnum')
⇒0
</pre></div>

<p>Note that <code>indir</code> and <code>builtin</code> can be used to invoke builtins
without arguments, even when they normally require parameters to be
recognized; but it will provoke a warning, and result in a void expansion.
</p>
<div class="example">
<pre class="example">builtin
⇒builtin
builtin()
error→m4:stdin:2: undefined builtin `'
⇒
builtin(`builtin')
error→m4:stdin:3: Warning: too few arguments to builtin `builtin'
⇒
builtin(`builtin',)
error→m4:stdin:4: undefined builtin `'
⇒
builtin(`builtin', ``'
')
error→m4:stdin:5: undefined builtin ``'
error→'
⇒
indir(`index')
error→m4:stdin:7: Warning: too few arguments to builtin `index'
⇒
</pre></div>


<hr>
<span id="Conditionals"></span><div class="header">
<p>
Next: <a href="#Debugging" accesskey="n" rel="next">Debugging</a>, Previous: <a href="#Definitions" accesskey="p" rel="prev">Definitions</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Conditionals_002c-loops_002c-and-recursion"></span><h2 class="chapter">6 Conditionals, loops, and recursion</h2>

<p>Macros, expanding to plain text, perhaps with arguments, are not quite
enough.  We would like to have macros expand to different things, based
on decisions taken at run-time.  For that, we need some kind of conditionals.
Also, we would like to have some kind of loop construct, so we could do
something a number of times, or while some condition is true.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Ifdef" accesskey="1">Ifdef</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Testing if a macro is defined
</td></tr>
<tr><td valign="top" align="left">• <a href="#Ifelse" accesskey="2">Ifelse</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">If-else construct, or multibranch
</td></tr>
<tr><td valign="top" align="left">• <a href="#Shift" accesskey="3">Shift</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Recursion in <code>m4</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Forloop" accesskey="4">Forloop</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Iteration by counting
</td></tr>
<tr><td valign="top" align="left">• <a href="#Foreach" accesskey="5">Foreach</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Iteration by list contents
</td></tr>
<tr><td valign="top" align="left">• <a href="#Stacks" accesskey="6">Stacks</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Working with definition stacks
</td></tr>
<tr><td valign="top" align="left">• <a href="#Composition" accesskey="7">Composition</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Building macros with macros
</td></tr>
</tbody></table>

<hr>
<span id="Ifdef"></span><div class="header">
<p>
Next: <a href="#Ifelse" accesskey="n" rel="next">Ifelse</a>, Up: <a href="#Conditionals" accesskey="u" rel="up">Conditionals</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Testing-if-a-macro-is-defined"></span><h3 class="section">6.1 Testing if a macro is defined</h3>

<span id="index-conditionals"></span>
<p>There are two different builtin conditionals in <code>m4</code>.  The first is
<code>ifdef</code>:
</p>
<dl>
<dt id="index-ifdef">Builtin: <strong>ifdef</strong> <em>(<var>name</var>, <var>string-1</var>, <span class="roman">[</span><var>string-2</var><span class="roman">]</span>)</em></dt>
<dd><p>If <var>name</var> is defined as a macro, <code>ifdef</code> expands to
<var>string-1</var>, otherwise to <var>string-2</var>.  If <var>string-2</var> is
omitted, it is taken to be the empty string (according to the normal
rules).
</p>
<p>The macro <code>ifdef</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">ifdef(`foo', ``foo' is defined', ``foo' is not defined')
⇒foo is not defined
define(`foo', `')
⇒
ifdef(`foo', ``foo' is defined', ``foo' is not defined')
⇒foo is defined
ifdef(`no_such_macro', `yes', `no', `extra argument')
error→m4:stdin:4: Warning: excess arguments to builtin `ifdef' ignored
⇒no
</pre></div>

<hr>
<span id="Ifelse"></span><div class="header">
<p>
Next: <a href="#Shift" accesskey="n" rel="next">Shift</a>, Previous: <a href="#Ifdef" accesskey="p" rel="prev">Ifdef</a>, Up: <a href="#Conditionals" accesskey="u" rel="up">Conditionals</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="If_002delse-construct_002c-or-multibranch"></span><h3 class="section">6.2 If-else construct, or multibranch</h3>

<span id="index-comparing-strings"></span>
<span id="index-discarding-input"></span>
<span id="index-input_002c-discarding"></span>
<p>The other conditional, <code>ifelse</code>, is much more powerful.  It can be
used as a way to introduce a long comment, as an if-else construct, or
as a multibranch, depending on the number of arguments supplied:
</p>
<dl>
<dt id="index-ifelse">Builtin: <strong>ifelse</strong> <em>(<var>comment</var>)</em></dt>
<dt id="index-ifelse-1">Builtin: <strong>ifelse</strong> <em>(<var>string-1</var>, <var>string-2</var>, <var>equal</var>,   <span class="roman">[</span><var>not-equal</var><span class="roman">]</span>)</em></dt>
<dt id="index-ifelse-2">Builtin: <strong>ifelse</strong> <em>(<var>string-1</var>, <var>string-2</var>, <var>equal-1</var>,   <var>string-3</var>, <var>string-4</var>, <var>equal-2</var>, …, <span class="roman">[</span><var>not-equal</var><span class="roman">]</span>)</em></dt>
<dd><p>Used with only one argument, the <code>ifelse</code> simply discards it and
produces no output.
</p>
<p>If called with three or four arguments, <code>ifelse</code> expands into
<var>equal</var>, if <var>string-1</var> and <var>string-2</var> are equal (character
for character), otherwise it expands to <var>not-equal</var>.  A final fifth
argument is ignored, after triggering a warning.
</p>
<p>If called with six or more arguments, and <var>string-1</var> and
<var>string-2</var> are equal, <code>ifelse</code> expands into <var>equal-1</var>,
otherwise the first three arguments are discarded and the processing
starts again.
</p>
<p>The macro <code>ifelse</code> is recognized only with parameters.
</p></dd></dl>

<p>Using only one argument is a common <code>m4</code> idiom for introducing a
block comment, as an alternative to repeatedly using <code>dnl</code>.  This
special usage is recognized by GNU <code>m4</code>, so that in this
case, the warning about missing arguments is never triggered.
</p>
<div class="example">
<pre class="example">ifelse(`some comments')
⇒
ifelse(`foo', `bar')
error→m4:stdin:2: Warning: too few arguments to builtin `ifelse'
⇒
</pre></div>

<p>Using three or four arguments provides decision points.
</p>
<div class="example">
<pre class="example">ifelse(`foo', `bar', `true')
⇒
ifelse(`foo', `foo', `true')
⇒true
define(`foo', `bar')
⇒
ifelse(foo, `bar', `true', `false')
⇒true
ifelse(foo, `foo', `true', `false')
⇒false
</pre></div>

<span id="index-macro_002c-blind-1"></span>
<span id="index-blind-macro-1"></span>
<p>Notice how the first argument was used unquoted; it is common to compare
the expansion of a macro with a string.  With this macro, you can now
reproduce the behavior of blind builtins, where the macro is recognized
only with arguments.
</p>
<div class="example">
<pre class="example">define(`foo', `ifelse(`$#', `0', ``$0'', `arguments:$#')')
⇒
foo
⇒foo
foo()
⇒arguments:1
foo(`a', `b', `c')
⇒arguments:3
</pre></div>

<p>For an example of a way to make defining blind macros easier, see
<a href="#Composition">Composition</a>.
</p>
<span id="index-multibranches"></span>
<span id="index-switch-statement"></span>
<span id="index-case-statement"></span>
<p>The macro <code>ifelse</code> can take more than four arguments.  If given more
than four arguments, <code>ifelse</code> works like a <code>case</code> or <code>switch</code>
statement in traditional programming languages.  If <var>string-1</var> and
<var>string-2</var> are equal, <code>ifelse</code> expands into <var>equal-1</var>, otherwise
the procedure is repeated with the first three arguments discarded.  This
calls for an example:
</p>
<div class="example">
<pre class="example">ifelse(`foo', `bar', `third', `gnu', `gnats')
error→m4:stdin:1: Warning: excess arguments to builtin `ifelse' ignored
⇒gnu
ifelse(`foo', `bar', `third', `gnu', `gnats', `sixth')
⇒
ifelse(`foo', `bar', `third', `gnu', `gnats', `sixth', `seventh')
⇒seventh
ifelse(`foo', `bar', `3', `gnu', `gnats', `6', `7', `8')
error→m4:stdin:4: Warning: excess arguments to builtin `ifelse' ignored
⇒7
</pre></div>


<p>Naturally, the normal case will be slightly more advanced than these
examples.  A common use of <code>ifelse</code> is in macros implementing loops
of various kinds.
</p>
<hr>
<span id="Shift"></span><div class="header">
<p>
Next: <a href="#Forloop" accesskey="n" rel="next">Forloop</a>, Previous: <a href="#Ifelse" accesskey="p" rel="prev">Ifelse</a>, Up: <a href="#Conditionals" accesskey="u" rel="up">Conditionals</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Recursion-in-m4"></span><h3 class="section">6.3 Recursion in <code>m4</code></h3>

<span id="index-recursive-macros"></span>
<span id="index-macros_002c-recursive"></span>
<p>There is no direct support for loops in <code>m4</code>, but macros can be
recursive.  There is no limit on the number of recursion levels, other
than those enforced by your hardware and operating system.
</p>
<span id="index-loops"></span>
<p>Loops can be programmed using recursion and the conditionals described
previously.
</p>
<p>There is a builtin macro, <code>shift</code>, which can, among other things,
be used for iterating through the actual arguments to a macro:
</p>
<dl>
<dt id="index-shift">Builtin: <strong>shift</strong> <em>(<var>arg1</var>, …)</em></dt>
<dd><p>Takes any number of arguments, and expands to all its arguments except
<var>arg1</var>, separated by commas, with each argument quoted.
</p>
<p>The macro <code>shift</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">shift
⇒shift
shift(`bar')
⇒
shift(`foo', `bar', `baz')
⇒bar,baz
</pre></div>

<p>An example of the use of <code>shift</code> is this macro:
</p>
<span id="index-reversing-arguments"></span>
<span id="index-arguments_002c-reversing"></span>
<dl>
<dt id="index-reverse">Composite: <strong>reverse</strong> <em>(…)</em></dt>
<dd><p>Takes any number of arguments, and reverses their order.
</p></dd></dl>

<p>It is implemented as:
</p>
<div class="example">
<pre class="example">define(`reverse', `ifelse(`$#', `0', , `$#', `1', ``$1'',
                          `reverse(shift($@)), `$1'')')
⇒
reverse
⇒
reverse(`foo')
⇒foo
reverse(`foo', `bar', `gnats', `and gnus')
⇒and gnus, gnats, bar, foo
</pre></div>

<p>While not a very interesting macro, it does show how simple loops can be
made with <code>shift</code>, <code>ifelse</code> and recursion.  It also shows
that <code>shift</code> is usually used with ‘<samp>$@</samp>’.  Another example of
this is an implementation of a short-circuiting conditional operator.
</p>
<span id="index-short_002dcircuiting-conditional"></span>
<span id="index-conditional_002c-short_002dcircuiting"></span>
<dl>
<dt id="index-cond">Composite: <strong>cond</strong> <em>(<var>test-1</var>, <var>string-1</var>, <var>equal-1</var>,   <span class="roman">[</span><var>test-2</var><span class="roman">]</span>, <span class="roman">[</span><var>string-2</var><span class="roman">]</span>, <span class="roman">[</span><var>equal-2</var><span class="roman">]</span>, …, <span class="roman">[</span><var>not-equal</var><span class="roman">]</span>)</em></dt>
<dd><p>Similar to <code>ifelse</code>, where an equal comparison between the first
two strings results in the third, otherwise the first three arguments
are discarded and the process repeats.  The difference is that each
<var>test-&lt;n&gt;</var> is expanded only when it is encountered.  This means that
every third argument to <code>cond</code> is normally given one more level of
quoting than the corresponding argument to <code>ifelse</code>.
</p></dd></dl>

<p>Here is the implementation of <code>cond</code>, along with a demonstration of
how it can short-circuit the side effects in <code>side</code>.  Notice how
all the unquoted side effects happen regardless of how many comparisons
are made with <code>ifelse</code>, compared with only the relevant effects
with <code>cond</code>.
</p>
<div class="example">
<pre class="example">define(`cond',
`ifelse(`$#', `1', `$1',
        `ifelse($1, `$2', `$3',
                `$0(shift(shift(shift($@))))')')')dnl
define(`side', `define(`counter', incr(counter))$1')dnl
define(`example1',
`define(`counter', `0')dnl
ifelse(side(`$1'), `yes', `one comparison: ',
       side(`$1'), `no', `two comparisons: ',
       side(`$1'), `maybe', `three comparisons: ',
       `side(`default answer: ')')counter')dnl
define(`example2',
`define(`counter', `0')dnl
cond(`side(`$1')', `yes', `one comparison: ',
     `side(`$1')', `no', `two comparisons: ',
     `side(`$1')', `maybe', `three comparisons: ',
     `side(`default answer: ')')counter')dnl
example1(`yes')
⇒one comparison: 3
example1(`no')
⇒two comparisons: 3
example1(`maybe')
⇒three comparisons: 3
example1(`feeling rather indecisive today')
⇒default answer: 4
example2(`yes')
⇒one comparison: 1
example2(`no')
⇒two comparisons: 2
example2(`maybe')
⇒three comparisons: 3
example2(`feeling rather indecisive today')
⇒default answer: 4
</pre></div>

<span id="index-joining-arguments"></span>
<span id="index-arguments_002c-joining"></span>
<span id="index-concatenating-arguments"></span>
<p>Another common task that requires iteration is joining a list of
arguments into a single string.
</p>
<dl>
<dt id="index-join">Composite: <strong>join</strong> <em>(<span class="roman">[</span><var>separator</var><span class="roman">]</span>, <span class="roman">[</span><var>args…</var><span class="roman">]</span>)</em></dt>
<dt id="index-joinall">Composite: <strong>joinall</strong> <em>(<span class="roman">[</span><var>separator</var><span class="roman">]</span>, <span class="roman">[</span><var>args…</var><span class="roman">]</span>)</em></dt>
<dd><p>Generate a single-quoted string, consisting of each <var>arg</var> separated
by <var>separator</var>.  While <code>joinall</code> always outputs a
<var>separator</var> between arguments, <code>join</code> avoids the
<var>separator</var> for an empty <var>arg</var>.
</p></dd></dl>

<p>Here are some examples of its usage, based on the implementation
<samp>m4-1.4.19/examples/join.m4</samp> distributed in this
package:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`join.m4')
⇒
join,join(`-'),join(`-', `'),join(`-', `', `')
⇒,,,
joinall,joinall(`-'),joinall(`-', `'),joinall(`-', `', `')
⇒,,,-
join(`-', `1')
⇒1
join(`-', `1', `2', `3')
⇒1-2-3
join(`', `1', `2', `3')
⇒123
join(`-', `', `1', `', `', `2', `')
⇒1-2
joinall(`-', `', `1', `', `', `2', `')
⇒-1---2-
join(`,', `1', `2', `3')
⇒1,2,3
define(`nargs', `$#')dnl
nargs(join(`,', `1', `2', `3'))
⇒1
</pre></div>

<p>Examining the implementation shows some interesting points about several
m4 programming idioms.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
undivert(`join.m4')dnl
⇒divert(`-1')
⇒# join(sep, args) - join each non-empty ARG into a single
⇒# string, with each element separated by SEP
⇒define(`join',
⇒`ifelse(`$#', `2', ``$2'',
⇒  `ifelse(`$2', `', `', ``$2'_')$0(`$1', shift(shift($@)))')')
⇒define(`_join',
⇒`ifelse(`$#$2', `2', `',
⇒  `ifelse(`$2', `', `', ``$1$2'')$0(`$1', shift(shift($@)))')')
⇒# joinall(sep, args) - join each ARG, including empty ones,
⇒# into a single string, with each element separated by SEP
⇒define(`joinall', ``$2'_$0(`$1', shift($@))')
⇒define(`_joinall',
⇒`ifelse(`$#', `2', `', ``$1$3'$0(`$1', shift(shift($@)))')')
⇒divert`'dnl
</pre></div>

<p>First, notice that this implementation creates helper macros
<code>_join</code> and <code>_joinall</code>.  This division of labor makes it
easier to output the correct number of <var>separator</var> instances:
<code>join</code> and <code>joinall</code> are responsible for the first argument,
without a separator, while <code>_join</code> and <code>_joinall</code> are
responsible for all remaining arguments, always outputting a separator
when outputting an argument.
</p>
<p>Next, observe how <code>join</code> decides to iterate to itself, because the
first <var>arg</var> was empty, or to output the argument and swap over to
<code>_join</code>.  If the argument is non-empty, then the nested
<code>ifelse</code> results in an unquoted ‘<samp>_</samp>’, which is concatenated
with the ‘<samp>$0</samp>’ to form the next macro name to invoke.  The
<code>joinall</code> implementation is simpler since it does not have to
suppress empty <var>arg</var>; it always executes once then defers to
<code>_joinall</code>.
</p>
<p>Another important idiom is the idea that <var>separator</var> is reused for
each iteration.  Each iteration has one less argument, but rather than
discarding ‘<samp>$1</samp>’ by iterating with <code>$0(shift($@))</code>, the macro
discards ‘<samp>$2</samp>’ by using <code>$0(`$1', shift(shift($@)))</code>.
</p>
<p>Next, notice that it is possible to compare more than one condition in a
single <code>ifelse</code> test.  The test of ‘<samp>$#$2</samp>’ against ‘<samp>2</samp>’
allows <code>_join</code> to iterate for two separate reasons—either there
are still more than two arguments, or there are exactly two arguments
but the last argument is not empty.
</p>
<p>Finally, notice that these macros require exactly two arguments to
terminate recursion, but that they still correctly result in empty
output when given no <var>args</var> (i.e., zero or one macro argument).  On
the first pass when there are too few arguments, the <code>shift</code>
results in no output, but leaves an empty string to serve as the
required second argument for the second pass.  Put another way,
‘<samp>`$1', shift($@)</samp>’ is not the same as ‘<samp>$@</samp>’, since only the
former guarantees at least two arguments.
</p>
<span id="index-quote-manipulation"></span>
<span id="index-manipulating-quotes"></span>
<p>Sometimes, a recursive algorithm requires adding quotes to each element,
or treating multiple arguments as a single element:
</p>
<dl>
<dt id="index-quote">Composite: <strong>quote</strong> <em>(…)</em></dt>
<dt id="index-dquote">Composite: <strong>dquote</strong> <em>(…)</em></dt>
<dt id="index-dquote_005felt">Composite: <strong>dquote_elt</strong> <em>(…)</em></dt>
<dd><p>Takes any number of arguments, and adds quoting.  With <code>quote</code>,
only one level of quoting is added, effectively removing whitespace
after commas and turning multiple arguments into a single string.  With
<code>dquote</code>, two levels of quoting are added, one around each element,
and one around the list.  And with <code>dquote_elt</code>, two levels of
quoting are added around each element.
</p></dd></dl>

<p>An actual implementation of these three macros is distributed as
<samp>m4-1.4.19/examples/quote.m4</samp> in this package.  First,
let’s examine their usage:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`quote.m4')
⇒
-quote-dquote-dquote_elt-
⇒----
-quote()-dquote()-dquote_elt()-
⇒--`'-`'-
-quote(`1')-dquote(`1')-dquote_elt(`1')-
⇒-1-`1'-`1'-
-quote(`1', `2')-dquote(`1', `2')-dquote_elt(`1', `2')-
⇒-1,2-`1',`2'-`1',`2'-
define(`n', `$#')dnl
-n(quote(`1', `2'))-n(dquote(`1', `2'))-n(dquote_elt(`1', `2'))-
⇒-1-1-2-
dquote(dquote_elt(`1', `2'))
⇒``1'',``2''
dquote_elt(dquote(`1', `2'))
⇒``1',`2''
</pre></div>

<p>The last two lines show that when given two arguments, <code>dquote</code>
results in one string, while <code>dquote_elt</code> results in two.  Now,
examine the implementation.  Note that <code>quote</code> and
<code>dquote_elt</code> make decisions based on their number of arguments, so
that when called without arguments, they result in nothing instead of a
quoted empty string; this is so that it is possible to distinguish
between no arguments and an empty first argument.  <code>dquote</code>, on the
other hand, results in a string no matter what, since it is still
possible to tell whether it was invoked without arguments based on the
resulting string.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
undivert(`quote.m4')dnl
⇒divert(`-1')
⇒# quote(args) - convert args to single-quoted string
⇒define(`quote', `ifelse(`$#', `0', `', ``$*'')')
⇒# dquote(args) - convert args to quoted list of quoted strings
⇒define(`dquote', ``$@'')
⇒# dquote_elt(args) - convert args to list of double-quoted strings
⇒define(`dquote_elt', `ifelse(`$#', `0', `', `$#', `1', ```$1''',
⇒                             ```$1'',$0(shift($@))')')
⇒divert`'dnl
</pre></div>

<p>It is worth pointing out that ‘<samp>quote(<var>args</var>)</samp>’ is more efficient
than ‘<samp>joinall(`,', <var>args</var>)</samp>’ for producing the same output.
</p>
<span id="index-nine-arguments_002c-more-than-1"></span>
<span id="index-more-than-nine-arguments-1"></span>
<span id="index-arguments_002c-more-than-nine-1"></span>
<p>One more useful macro based on <code>shift</code> allows portably selecting
an arbitrary argument (usually greater than the ninth argument), without
relying on the GNU extension of multi-digit arguments
(see <a href="#Arguments">Arguments</a>).
</p>
<dl>
<dt id="index-argn">Composite: <strong>argn</strong> <em>(<var>n</var>, …)</em></dt>
<dd><p>Expands to argument <var>n</var> out of the remaining arguments.  <var>n</var>
must be a positive number.  Usually invoked as
‘<samp>argn(`<var>n</var>',$@)</samp>’.
</p></dd></dl>

<p>It is implemented as:
</p>
<div class="example">
<pre class="example">define(`argn', `ifelse(`$1', 1, ``$2'',
  `argn(decr(`$1'), shift(shift($@)))')')
⇒
argn(`1', `a')
⇒a
define(`foo', `argn(`11', $@)')
⇒
foo(`a', `b', `c', `d', `e', `f', `g', `h', `i', `j', `k', `l')
⇒k
</pre></div>

<hr>
<span id="Forloop"></span><div class="header">
<p>
Next: <a href="#Foreach" accesskey="n" rel="next">Foreach</a>, Previous: <a href="#Shift" accesskey="p" rel="prev">Shift</a>, Up: <a href="#Conditionals" accesskey="u" rel="up">Conditionals</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Iteration-by-counting"></span><h3 class="section">6.4 Iteration by counting</h3>

<span id="index-for-loops"></span>
<span id="index-loops_002c-counting"></span>
<span id="index-counting-loops"></span>
<p>Here is an example of a loop macro that implements a simple for loop.
</p>
<dl>
<dt id="index-forloop">Composite: <strong>forloop</strong> <em>(<var>iterator</var>, <var>start</var>, <var>end</var>, <var>text</var>)</em></dt>
<dd><p>Takes the name in <var>iterator</var>, which must be a valid macro name, and
successively assign it each integer value from <var>start</var> to <var>end</var>,
inclusive.  For each assignment to <var>iterator</var>, append <var>text</var> to
the expansion of the <code>forloop</code>.  <var>text</var> may refer to
<var>iterator</var>.  Any definition of <var>iterator</var> prior to this
invocation is restored.
</p></dd></dl>

<p>It can, for example, be used for simple counting:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`forloop.m4')
⇒
forloop(`i', `1', `8', `i ')
⇒1 2 3 4 5 6 7 8 <!-- /@w -->
</pre></div>

<p>For-loops can be nested, like:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`forloop.m4')
⇒
forloop(`i', `1', `4', `forloop(`j', `1', `8', ` (i, j)')
')
⇒ (1, 1) (1, 2) (1, 3) (1, 4) (1, 5) (1, 6) (1, 7) (1, 8)
⇒ (2, 1) (2, 2) (2, 3) (2, 4) (2, 5) (2, 6) (2, 7) (2, 8)
⇒ (3, 1) (3, 2) (3, 3) (3, 4) (3, 5) (3, 6) (3, 7) (3, 8)
⇒ (4, 1) (4, 2) (4, 3) (4, 4) (4, 5) (4, 6) (4, 7) (4, 8)
⇒
</pre></div>

<p>The implementation of the <code>forloop</code> macro is fairly
straightforward.  The <code>forloop</code> macro itself is simply a wrapper,
which saves the previous definition of the first argument, calls the
internal macro <code><span class="nolinebreak">_forloop</span><!-- /@w --></code>, and re-establishes the saved
definition of the first argument.
</p>
<p>The macro <code><span class="nolinebreak">_forloop</span><!-- /@w --></code> expands the fourth argument once, and
tests to see if the iterator has reached the final value.  If it has
not finished, it increments the iterator (using the predefined macro
<code>incr</code>, see <a href="#Incr">Incr</a>), and recurses.
</p>
<p>Here is an actual implementation of <code>forloop</code>, distributed as
<samp>m4-1.4.19/examples/forloop.m4</samp> in this package:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
undivert(`forloop.m4')dnl
⇒divert(`-1')
⇒# forloop(var, from, to, stmt) - simple version
⇒define(`forloop', `pushdef(`$1', `$2')_forloop($@)popdef(`$1')')
⇒define(`_forloop',
⇒       `$4`'ifelse($1, `$3', `', `define(`$1', incr($1))$0($@)')')
⇒divert`'dnl
</pre></div>

<p>Notice the careful use of quotes.  Certain macro arguments are left
unquoted, each for its own reason.  Try to find out <em>why</em> these
arguments are left unquoted, and see what happens if they are quoted.
(As presented, these two macros are useful but not very robust for
general use.  They lack even basic error handling for cases like
<var>start</var> less than <var>end</var>, <var>end</var> not numeric, or
<var>iterator</var> not being a macro name.  See if you can improve these
macros; or see <a href="#Improved-forloop">Answers</a>).
</p>
<hr>
<span id="Foreach"></span><div class="header">
<p>
Next: <a href="#Stacks" accesskey="n" rel="next">Stacks</a>, Previous: <a href="#Forloop" accesskey="p" rel="prev">Forloop</a>, Up: <a href="#Conditionals" accesskey="u" rel="up">Conditionals</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Iteration-by-list-contents"></span><h3 class="section">6.5 Iteration by list contents</h3>

<span id="index-for-each-loops"></span>
<span id="index-loops_002c-list-iteration"></span>
<span id="index-iterating-over-lists"></span>
<p>Here is an example of a loop macro that implements list iteration.
</p>
<dl>
<dt id="index-foreach">Composite: <strong>foreach</strong> <em>(<var>iterator</var>, <var>paren-list</var>, <var>text</var>)</em></dt>
<dt id="index-foreachq">Composite: <strong>foreachq</strong> <em>(<var>iterator</var>, <var>quote-list</var>, <var>text</var>)</em></dt>
<dd><p>Takes the name in <var>iterator</var>, which must be a valid macro name, and
successively assign it each value from <var>paren-list</var> or
<var>quote-list</var>.  In <code>foreach</code>, <var>paren-list</var> is a
comma-separated list of elements contained in parentheses.  In
<code>foreachq</code>, <var>quote-list</var> is a comma-separated list of elements
contained in a quoted string.  For each assignment to <var>iterator</var>,
append <var>text</var> to the overall expansion.  <var>text</var> may refer to
<var>iterator</var>.  Any definition of <var>iterator</var> prior to this
invocation is restored.
</p></dd></dl>

<p>As an example, this displays each word in a list inside of a sentence,
using an implementation of <code>foreach</code> distributed as
<samp>m4-1.4.19/examples/foreach.m4</samp>, and <code>foreachq</code>
in <samp>m4-1.4.19/examples/foreachq.m4</samp>.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`foreach.m4')
⇒
foreach(`x', (foo, bar, foobar), `Word was: x
')dnl
⇒Word was: foo
⇒Word was: bar
⇒Word was: foobar
include(`foreachq.m4')
⇒
foreachq(`x', `foo, bar, foobar', `Word was: x
')dnl
⇒Word was: foo
⇒Word was: bar
⇒Word was: foobar
</pre></div>

<p>It is possible to be more complex; each element of the <var>paren-list</var>
or <var>quote-list</var> can itself be a list, to pass as further arguments
to a helper macro.  This example generates a shell case statement:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`foreach.m4')
⇒
define(`_case', `  $1)
    $2=" $1";;
')dnl
define(`_cat', `$1$2')dnl
case $`'1 in
⇒case $1 in
foreach(`x', `(`(`a', `vara')', `(`b', `varb')', `(`c', `varc')')',
        `_cat(`_case', x)')dnl
⇒  a)
⇒    vara=" a";;
⇒  b)
⇒    varb=" b";;
⇒  c)
⇒    varc=" c";;
esac
⇒esac
</pre></div>

<p>The implementation of the <code>foreach</code> macro is a bit more involved;
it is a wrapper around two helper macros.  First, <code><span class="nolinebreak">_arg1</span><!-- /@w --></code> is
needed to grab the first element of a list.  Second,
<code><span class="nolinebreak">_foreach</span><!-- /@w --></code> implements the recursion, successively walking
through the original list.  Here is a simple implementation of
<code>foreach</code>:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
undivert(`foreach.m4')dnl
⇒divert(`-1')
⇒# foreach(x, (item_1, item_2, ..., item_n), stmt)
⇒#   parenthesized list, simple version
⇒define(`foreach', `pushdef(`$1')_foreach($@)popdef(`$1')')
⇒define(`_arg1', `$1')
⇒define(`_foreach', `ifelse(`$2', `()', `',
⇒  `define(`$1', _arg1$2)$3`'$0(`$1', (shift$2), `$3')')')
⇒divert`'dnl
</pre></div>

<p>Unfortunately, that implementation is not robust to macro names as list
elements.  Each iteration of <code><span class="nolinebreak">_foreach</span><!-- /@w --></code> is stripping another
layer of quotes, leading to erratic results if list elements are not
already fully expanded.  The first cut at implementing <code>foreachq</code>
takes this into account.  Also, when using quoted elements in a
<var>paren-list</var>, the overall list must be quoted.  A <var>quote-list</var>
has the nice property of requiring fewer characters to create a list
containing the same quoted elements.  To see the difference between the
two macros, we attempt to pass double-quoted macro names in a list,
expecting the macro name on output after one layer of quotes is removed
during list iteration and the final layer removed during the final
rescan:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
define(`a', `1')define(`b', `2')define(`c', `3')
⇒
include(`foreach.m4')
⇒
include(`foreachq.m4')
⇒
foreach(`x', `(``a'', ``(b'', ``c)'')', `x
')
⇒1
⇒(2)1
⇒
⇒, x
⇒)
foreachq(`x', ```a'', ``(b'', ``c)''', `x
')dnl
⇒a
⇒(b
⇒c)
</pre></div>

<p>Obviously, <code>foreachq</code> did a better job; here is its implementation:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
undivert(`foreachq.m4')dnl
⇒include(`quote.m4')dnl
⇒divert(`-1')
⇒# foreachq(x, `item_1, item_2, ..., item_n', stmt)
⇒#   quoted list, simple version
⇒define(`foreachq', `pushdef(`$1')_foreachq($@)popdef(`$1')')
⇒define(`_arg1', `$1')
⇒define(`_foreachq', `ifelse(quote($2), `', `',
⇒  `define(`$1', `_arg1($2)')$3`'$0(`$1', `shift($2)', `$3')')')
⇒divert`'dnl
</pre></div>

<p>Notice that <code><span class="nolinebreak">_foreachq</span><!-- /@w --></code> had to use the helper macro
<code>quote</code> defined earlier (see <a href="#Shift">Shift</a>), to ensure that the
embedded <code>ifelse</code> call does not go haywire if a list element
contains a comma.  Unfortunately, this implementation of <code>foreachq</code>
has its own severe flaw.  Whereas the <code>foreach</code> implementation was
linear, this macro is quadratic in the number of list elements, and is
much more likely to trip up the limit set by the command line option
<samp>--nesting-limit</samp> (or <samp>-L</samp>, see <a href="#Limits-control">Invoking m4</a>).  Additionally, this implementation does not expand
‘<samp>defn(`<var>iterator</var>')</samp>’ very well, when compared with
<code>foreach</code>.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`foreach.m4')include(`foreachq.m4')
⇒
foreach(`name', `(`a', `b')', ` defn(`name')')
⇒ a b
foreachq(`name', ``a', `b'', ` defn(`name')')
⇒ _arg1(`a', `b') _arg1(shift(`a', `b'))
</pre></div>

<p>It is possible to have robust iteration with linear behavior and sane
<var>iterator</var> contents for either list style.  See if you can learn
from the best elements of both of these implementations to create robust
macros (or see <a href="#Improved-foreach">Answers</a>).
</p>
<hr>
<span id="Stacks"></span><div class="header">
<p>
Next: <a href="#Composition" accesskey="n" rel="next">Composition</a>, Previous: <a href="#Foreach" accesskey="p" rel="prev">Foreach</a>, Up: <a href="#Conditionals" accesskey="u" rel="up">Conditionals</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Working-with-definition-stacks"></span><h3 class="section">6.6 Working with definition stacks</h3>

<span id="index-definition-stack-1"></span>
<span id="index-pushdef-stack-1"></span>
<span id="index-stack_002c-macro-definition-1"></span>
<p>Thanks to <code>pushdef</code>, manipulation of a stack is an intrinsic
operation in <code>m4</code>.  Normally, only the topmost definition in a
stack is important, but sometimes, it is desirable to manipulate the
entire definition stack.
</p>
<dl>
<dt id="index-stack_005fforeach">Composite: <strong>stack_foreach</strong> <em>(<var>macro</var>, <var>action</var>)</em></dt>
<dt id="index-stack_005fforeach_005flifo">Composite: <strong>stack_foreach_lifo</strong> <em>(<var>macro</var>, <var>action</var>)</em></dt>
<dd><p>For each of the <code>pushdef</code> definitions associated with <var>macro</var>,
invoke the macro <var>action</var> with a single argument of that definition.
<code>stack_foreach</code> visits the oldest definition first, while
<code>stack_foreach_lifo</code> visits the current definition first.
<var>action</var> should not modify or dereference <var>macro</var>.  There are a
few special macros, such as <code>defn</code>, which cannot be used as the
<var>macro</var> parameter.
</p></dd></dl>

<p>A sample implementation of these macros is distributed in the file
<samp>m4-1.4.19/examples/stack.m4</samp>.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`stack.m4')
⇒
pushdef(`a', `1')pushdef(`a', `2')pushdef(`a', `3')
⇒
define(`show', ``$1'
')
⇒
stack_foreach(`a', `show')dnl
⇒1
⇒2
⇒3
stack_foreach_lifo(`a', `show')dnl
⇒3
⇒2
⇒1
</pre></div>

<p>Now for the implementation.  Note the definition of a helper macro,
<code>_stack_reverse</code>, which destructively swaps the contents of one
stack of definitions into the reverse order in the temporary macro
‘<samp>tmp-$1</samp>’.  By calling the helper twice, the original order is
restored back into the macro ‘<samp>$1</samp>’; since the operation is
destructive, this explains why ‘<samp>$1</samp>’ must not be modified or
dereferenced during the traversal.  The caller can then inject
additional code to pass the definition currently being visited to
‘<samp>$2</samp>’.  The choice of helper names is intentional; since ‘<samp>-</samp>’ is
not valid as part of a macro name, there is no risk of conflict with a
valid macro name, and the code is guaranteed to use <code>defn</code> where
necessary.  Finally, note that any macro used in the traversal of a
<code>pushdef</code> stack, such as <code>pushdef</code> or <code>defn</code>, cannot be
handled by <code>stack_foreach</code>, since the macro would temporarily be
undefined during the algorithm.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
undivert(`stack.m4')dnl
⇒divert(`-1')
⇒# stack_foreach(macro, action)
⇒# Invoke ACTION with a single argument of each definition
⇒# from the definition stack of MACRO, starting with the oldest.
⇒define(`stack_foreach',
⇒`_stack_reverse(`$1', `tmp-$1')'dnl
⇒`_stack_reverse(`tmp-$1', `$1', `$2(defn(`$1'))')')
⇒# stack_foreach_lifo(macro, action)
⇒# Invoke ACTION with a single argument of each definition
⇒# from the definition stack of MACRO, starting with the newest.
⇒define(`stack_foreach_lifo',
⇒`_stack_reverse(`$1', `tmp-$1', `$2(defn(`$1'))')'dnl
⇒`_stack_reverse(`tmp-$1', `$1')')
⇒define(`_stack_reverse',
⇒`ifdef(`$1', `pushdef(`$2', defn(`$1'))$3`'popdef(`$1')$0($@)')')
⇒divert`'dnl
</pre></div>

<hr>
<span id="Composition"></span><div class="header">
<p>
Previous: <a href="#Stacks" accesskey="p" rel="prev">Stacks</a>, Up: <a href="#Conditionals" accesskey="u" rel="up">Conditionals</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Building-macros-with-macros"></span><h3 class="section">6.7 Building macros with macros</h3>

<span id="index-macro-composition"></span>
<span id="index-composing-macros"></span>
<p>Since m4 is a macro language, it is possible to write macros that
can build other macros.  First on the list is a way to automate the
creation of blind macros.
</p>
<span id="index-macro_002c-blind-2"></span>
<span id="index-blind-macro-2"></span>
<dl>
<dt id="index-define_005fblind">Composite: <strong>define_blind</strong> <em>(<var>name</var>, <span class="roman">[</span><var>value</var><span class="roman">]</span>)</em></dt>
<dd><p>Defines <var>name</var> as a blind macro, such that <var>name</var> will expand to
<var>value</var> only when given explicit arguments.  <var>value</var> should not
be the result of <code>defn</code> (see <a href="#Defn">Defn</a>).  This macro is only
recognized with parameters, and results in an empty string.
</p></dd></dl>

<p>Defining a macro to define another macro can be a bit tricky.  We want
to use a literal ‘<samp>$#</samp>’ in the argument to the nested <code>define</code>.
However, if ‘<samp>$</samp>’ and ‘<samp>#</samp>’ are adjacent in the definition of
<code>define_blind</code>, then it would be expanded as the number of
arguments to <code>define_blind</code> rather than the intended number of
arguments to <var>name</var>.  The solution is to pass the difficult
characters through extra arguments to a helper macro
<code>_define_blind</code>.  When composing macros, it is a common idiom to
need a helper macro to concatenate text that forms parameters in the
composed macro, rather than interpreting the text as a parameter of the
composing macro.
</p>
<p>As for the limitation against using <code>defn</code>, there are two reasons.
If a macro was previously defined with <code>define_blind</code>, then it can
safely be renamed to a new blind macro using plain <code>define</code>; using
<code>define_blind</code> to rename it just adds another layer of
<code>ifelse</code>, occupying memory and slowing down execution.  And if a
macro is a builtin, then it would result in an attempt to define a macro
consisting of both text and a builtin token; this is not supported, and
the builtin token is flattened to an empty string.
</p>
<p>With that explanation, here’s the definition, and some sample usage.
Notice that <code>define_blind</code> is itself a blind macro.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d</kbd>
define(`define_blind', `ifelse(`$#', `0', ``$0'',
`_$0(`$1', `$2', `$'`#', `$'`0')')')
⇒
define(`_define_blind', `define(`$1',
`ifelse(`$3', `0', ``$4'', `$2')')')
⇒
define_blind
⇒define_blind
define_blind(`foo', `arguments were $*')
⇒
foo
⇒foo
foo(`bar')
⇒arguments were bar
define(`blah', defn(`foo'))
⇒
blah
⇒blah
blah(`a', `b')
⇒arguments were a,b
defn(`blah')
⇒ifelse(`$#', `0', ``$0'', `arguments were $*')
</pre></div>

<span id="index-currying-arguments"></span>
<span id="index-argument-currying"></span>
<p>Another interesting composition tactic is argument <em>currying</em>, or
factoring a macro that takes multiple arguments for use in a context
that provides exactly one argument.
</p>
<dl>
<dt id="index-curry">Composite: <strong>curry</strong> <em>(<var>macro</var>, …)</em></dt>
<dd><p>Expand to a macro call that takes exactly one argument, then appends
that argument to the original arguments and invokes <var>macro</var> with the
resulting list of arguments.
</p></dd></dl>

<p>A demonstration of currying makes the intent of this macro a little more
obvious.  The macro <code>stack_foreach</code> mentioned earlier is an example
of a context that provides exactly one argument to a macro name.  But
coupled with currying, we can invoke <code>reverse</code> with two arguments
for each definition of a macro stack.  This example uses the file
<samp>m4-1.4.19/examples/curry.m4</samp> included in the
distribution.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`curry.m4')include(`stack.m4')
⇒
define(`reverse', `ifelse(`$#', `0', , `$#', `1', ``$1'',
                          `reverse(shift($@)), `$1'')')
⇒
pushdef(`a', `1')pushdef(`a', `2')pushdef(`a', `3')
⇒
stack_foreach(`a', `:curry(`reverse', `4')')
⇒:1, 4:2, 4:3, 4
curry(`curry', `reverse', `1')(`2')(`3')
⇒3, 2, 1
</pre></div>

<p>Now for the implementation.  Notice how <code>curry</code> leaves off with a
macro name but no open parenthesis, while still in the middle of
collecting arguments for ‘<samp>$1</samp>’.  The macro <code>_curry</code> is the
helper macro that takes one argument, then adds it to the list and
finally supplies the closing parenthesis.  The use of a comma inside the
<code>shift</code> call allows currying to also work for a macro that takes
one argument, although it often makes more sense to invoke that macro
directly rather than going through <code>curry</code>.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
undivert(`curry.m4')dnl
⇒divert(`-1')
⇒# curry(macro, args)
⇒# Expand to a macro call that takes one argument, then invoke
⇒# macro(args, extra).
⇒define(`curry', `$1(shift($@,)_$0')
⇒define(`_curry', ``$1')')
⇒divert`'dnl
</pre></div>

<p>Unfortunately, with M4 1.4.x, <code>curry</code> is unable to handle builtin
tokens, which are silently flattened to the empty string when passed
through another text macro.  This limitation will be lifted in a future
release of M4.
</p>
<span id="index-renaming-macros-1"></span>
<span id="index-copying-macros"></span>
<span id="index-macros_002c-copying"></span>
<p>Putting the last few concepts together, it is possible to copy or rename
an entire stack of macro definitions.
</p>
<dl>
<dt id="index-copy">Composite: <strong>copy</strong> <em>(<var>source</var>, <var>dest</var>)</em></dt>
<dt id="index-rename">Composite: <strong>rename</strong> <em>(<var>source</var>, <var>dest</var>)</em></dt>
<dd><p>Ensure that <var>dest</var> is undefined, then define it to the same stack of
definitions currently in <var>source</var>.  <code>copy</code> leaves <var>source</var>
unchanged, while <code>rename</code> undefines <var>source</var>.  There are only a
few macros, such as <code>copy</code> or <code>defn</code>, which cannot be copied
via this macro.
</p></dd></dl>

<p>The implementation is relatively straightforward (although since it uses
<code>curry</code>, it is unable to copy builtin macros, such as the second
definition of <code>a</code> as a synonym for <code>divnum</code>.  See if you can
design a version that works around this limitation, or see <a href="#Improved-copy">Answers</a>).
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`curry.m4')include(`stack.m4')
⇒
define(`rename', `copy($@)undefine(`$1')')dnl
define(`copy', `ifdef(`$2', `errprint(`$2 already defined
')m4exit(`1')',
   `stack_foreach(`$1', `curry(`pushdef', `$2')')')')dnl
pushdef(`a', `1')pushdef(`a', defn(`divnum'))pushdef(`a', `2')
⇒
copy(`a', `b')
⇒
rename(`b', `c')
⇒
a b c
⇒2 b 2
popdef(`a', `c')c a
⇒ 0
popdef(`a', `c')a c
⇒1 1
</pre></div>

<hr>
<span id="Debugging"></span><div class="header">
<p>
Next: <a href="#Input-Control" accesskey="n" rel="next">Input Control</a>, Previous: <a href="#Conditionals" accesskey="p" rel="prev">Conditionals</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="How-to-debug-macros-and-input"></span><h2 class="chapter">7 How to debug macros and input</h2>

<span id="index-debugging-macros"></span>
<span id="index-macros_002c-debugging"></span>
<p>When writing macros for <code>m4</code>, they often do not work as intended on
the first try (as is the case with most programming languages).
Fortunately, there is support for macro debugging in <code>m4</code>.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Dumpdef" accesskey="1">Dumpdef</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Displaying macro definitions
</td></tr>
<tr><td valign="top" align="left">• <a href="#Trace" accesskey="2">Trace</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Tracing macro calls
</td></tr>
<tr><td valign="top" align="left">• <a href="#Debug-Levels" accesskey="3">Debug Levels</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Controlling debugging output
</td></tr>
<tr><td valign="top" align="left">• <a href="#Debug-Output" accesskey="4">Debug Output</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Saving debugging output
</td></tr>
</tbody></table>

<hr>
<span id="Dumpdef"></span><div class="header">
<p>
Next: <a href="#Trace" accesskey="n" rel="next">Trace</a>, Up: <a href="#Debugging" accesskey="u" rel="up">Debugging</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Displaying-macro-definitions"></span><h3 class="section">7.1 Displaying macro definitions</h3>

<span id="index-displaying-macro-definitions"></span>
<span id="index-macros_002c-displaying-definitions-1"></span>
<span id="index-definitions_002c-displaying-macro-1"></span>
<span id="index-standard-error_002c-output-to"></span>
<p>If you want to see what a name expands into, you can use the builtin
<code>dumpdef</code>:
</p>
<dl>
<dt id="index-dumpdef">Builtin: <strong>dumpdef</strong> <em>(<span class="roman">[</span><var>names…</var><span class="roman">]</span>)</em></dt>
<dd><p>Accepts any number of arguments.  If called without any arguments,
it displays the definitions of all known names, otherwise it displays
the definitions of the <var>names</var> given.  The output is printed to the
current debug file (usually standard error), and is sorted by name.  If
an unknown name is encountered, a warning is printed.
</p>
<p>The expansion of <code>dumpdef</code> is void.
</p></dd></dl>

<div class="example">
<pre class="example">$ <kbd>m4 -d</kbd>
define(`foo', `Hello world.')
⇒
dumpdef(`foo')
error→foo:&nbsp;⇒
dumpdef(`define')
error→define:&nbsp;⇒
</pre></div>

<p>The last example shows how builtin macros definitions are displayed.
The definition that is dumped corresponds to what would occur if the
macro were to be called at that point, even if other definitions are
still live due to redefining a macro during argument collection.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d</kbd>
pushdef(`f', ``$0'1')pushdef(`f', ``$0'2')
⇒
f(popdef(`f')dumpdef(`f'))
error→f:&nbsp;⇒f2
f(popdef(`f')dumpdef(`f'))
error→m4:stdin:3: undefined macro `f'
⇒f1
</pre></div>

<p>See <a href="#Debug-Levels">Debug Levels</a>, for information on controlling the details of the
display.
</p>
<hr>
<span id="Trace"></span><div class="header">
<p>
Next: <a href="#Debug-Levels" accesskey="n" rel="next">Debug Levels</a>, Previous: <a href="#Dumpdef" accesskey="p" rel="prev">Dumpdef</a>, Up: <a href="#Debugging" accesskey="u" rel="up">Debugging</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Tracing-macro-calls"></span><h3 class="section">7.2 Tracing macro calls</h3>

<span id="index-tracing-macro-expansion"></span>
<span id="index-macro-expansion_002c-tracing"></span>
<span id="index-expansion_002c-tracing-macro"></span>
<span id="index-standard-error_002c-output-to-1"></span>
<p>It is possible to trace macro calls and expansions through the builtins
<code>traceon</code> and <code>traceoff</code>:
</p>
<dl>
<dt id="index-traceon">Builtin: <strong>traceon</strong> <em>(<span class="roman">[</span><var>names…</var><span class="roman">]</span>)</em></dt>
<dt id="index-traceoff">Builtin: <strong>traceoff</strong> <em>(<span class="roman">[</span><var>names…</var><span class="roman">]</span>)</em></dt>
<dd><p>When called without any arguments, <code>traceon</code> and <code>traceoff</code>
will turn tracing on and off, respectively, for all currently defined
macros.
</p>
<p>When called with arguments, only the macros listed in <var>names</var> are
affected, whether or not they are currently defined.
</p>
<p>The expansion of <code>traceon</code> and <code>traceoff</code> is void.
</p></dd></dl>

<p>Whenever a traced macro is called and the arguments have been collected,
the call is displayed.  If the expansion of the macro call is not void,
the expansion can be displayed after the call.  The output is printed
to the current debug file (defaulting to standard error, see <a href="#Debug-Output">Debug Output</a>).
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d</kbd>
define(`foo', `Hello World.')
⇒
define(`echo', `$@')
⇒
traceon(`foo', `echo')
⇒
foo
error→m4trace: -1- foo -&gt; `Hello World.'
⇒Hello World.
echo(`gnus', `and gnats')
error→m4trace: -1- echo(`gnus', `and gnats') -&gt; ``gnus',`and gnats''
⇒gnus,and gnats
</pre></div>

<p>The number between dashes is the depth of the expansion.  It is one most
of the time, signifying an expansion at the outermost level, but it
increases when macro arguments contain unquoted macro calls.  The
maximum number that will appear between dashes is controlled by the
option <samp>--nesting-limit</samp> (or <samp>-L</samp>, see <a href="#Limits-control">Invoking m4</a>).  Additionally, the option <samp>--trace</samp> (or
<samp>-t</samp>) can be used to invoke <code>traceon(<var>name</var>)</code> before
parsing input.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -L 3 -t ifelse</kbd>
ifelse(`one level')
error→m4trace: -1- ifelse
⇒
ifelse(ifelse(ifelse(`three levels')))
error→m4trace: -3- ifelse
error→m4trace: -2- ifelse
error→m4trace: -1- ifelse
⇒
ifelse(ifelse(ifelse(ifelse(`four levels'))))
error→m4:stdin:3: recursion limit of 3 exceeded, use -L&lt;N&gt; to change it
</pre></div>

<p>Tracing by name is an attribute that is preserved whether the macro is
defined or not.  This allows the selection of macros to trace before
those macros are defined.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d</kbd>
traceoff(`foo')
⇒
traceon(`foo')
⇒
foo
⇒foo
defn(`foo')
⇒
define(`foo', `bar')
⇒
foo
error→m4trace: -1- foo -&gt; `bar'
⇒bar
undefine(`foo')
⇒
ifdef(`foo', `yes', `no')
⇒no
indir(`foo')
error→m4:stdin:9: undefined macro `foo'
⇒
define(`foo', `blah')
⇒
foo
error→m4trace: -1- foo -&gt; `blah'
⇒blah
traceoff
⇒
foo
⇒blah
</pre></div>

<p>Tracing even works on builtins.  However, <code>defn</code> (see <a href="#Defn">Defn</a>)
does not transfer tracing status.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d</kbd>
traceon(`traceon')
⇒
traceon(`traceoff')
error→m4trace: -1- traceon(`traceoff')
⇒
traceoff(`traceoff')
error→m4trace: -1- traceoff(`traceoff')
⇒
traceoff(`traceon')
⇒
traceon(`eval', `m4_divnum')
⇒
define(`m4_eval', defn(`eval'))
⇒
define(`m4_divnum', defn(`divnum'))
⇒
eval(divnum)
error→m4trace: -1- eval(`0') -&gt; `0'
⇒0
m4_eval(m4_divnum)
error→m4trace: -2- m4_divnum -&gt; `0'
⇒0
</pre></div>

<p>See <a href="#Debug-Levels">Debug Levels</a>, for information on controlling the details of the
display.  The format of the trace output is not specified by
POSIX, and varies between implementations of <code>m4</code>.
</p>

<hr>
<span id="Debug-Levels"></span><div class="header">
<p>
Next: <a href="#Debug-Output" accesskey="n" rel="next">Debug Output</a>, Previous: <a href="#Trace" accesskey="p" rel="prev">Trace</a>, Up: <a href="#Debugging" accesskey="u" rel="up">Debugging</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Controlling-debugging-output"></span><h3 class="section">7.3 Controlling debugging output</h3>

<span id="index-controlling-debugging-output"></span>
<span id="index-debugging-output_002c-controlling"></span>
<p>The <samp>-d</samp> option to <code>m4</code> (or <samp>--debug</samp>,
see <a href="#Debugging-options">Invoking m4</a>) controls the amount of details
presented in three
categories of output.  Trace output is requested by <code>traceon</code>
(see <a href="#Trace">Trace</a>), and each line is prefixed by ‘<samp>m4trace:</samp>’ in
relation to a macro invocation.  Debug output tracks useful events not
associated with a macro invocation, and each line is prefixed by
‘<samp>m4debug:</samp>’.  Finally, <code>dumpdef</code> (see <a href="#Dumpdef">Dumpdef</a>) output is
affected, with no prefix added to the output lines.
</p>
<p>The <var>flags</var> following the option can be one or more of the
following:
</p>
<dl compact="compact">
<dt><code>a</code></dt>
<dd><p>In trace output, show the actual arguments that were collected before
invoking the macro.  This applies to all macro calls if the ‘<samp>t</samp>’
flag is used, otherwise only the macros covered by calls of
<code>traceon</code>.  Arguments are subject to length truncation specified by
the command line option <samp>--arglength</samp> (or <samp>-l</samp>).
</p>
</dd>
<dt><code>c</code></dt>
<dd><p>In trace output, show several trace lines for each macro call.  A line
is shown when the macro is seen, but before the arguments are collected;
a second line when the arguments have been collected and a third line
after the call has completed.
</p>
</dd>
<dt><code>e</code></dt>
<dd><p>In trace output, show the expansion of each macro call, if it is not
void.  This applies to all macro calls if the ‘<samp>t</samp>’ flag is used,
otherwise only the macros covered by calls of <code>traceon</code>.  The
expansion is subject to length truncation specified by the command line
option <samp>--arglength</samp> (or <samp>-l</samp>).
</p>
</dd>
<dt><code>f</code></dt>
<dd><p>In debug and trace output, include the name of the current input file in
the output line.
</p>
</dd>
<dt><code>i</code></dt>
<dd><p>In debug output, print a message each time the current input file is
changed.
</p>
</dd>
<dt><code>l</code></dt>
<dd><p>In debug and trace output, include the current input line number in the
output line.
</p>
</dd>
<dt><code>p</code></dt>
<dd><p>In debug output, print a message when a named file is found through the
path search mechanism (see <a href="#Search-Path">Search Path</a>), giving the actual file name
used.
</p>
</dd>
<dt><code>q</code></dt>
<dd><p>In trace and dumpdef output, quote actual arguments and macro expansions
in the display with the current quotes.  This is useful in connection
with the ‘<samp>a</samp>’ and ‘<samp>e</samp>’ flags above.
</p>
</dd>
<dt><code>t</code></dt>
<dd><p>In trace output, trace all macro calls made in this invocation of
<code>m4</code>, regardless of the settings of <code>traceon</code>.
</p>
</dd>
<dt><code>x</code></dt>
<dd><p>In trace output, add a unique ‘macro call id’ to each line of the trace
output.  This is useful in connection with the ‘<samp>c</samp>’ flag above.
</p>
</dd>
<dt><code>V</code></dt>
<dd><p>A shorthand for all of the above flags.
</p></dd>
</dl>

<p>If no flags are specified with the <samp>-d</samp> option, the default is
‘<samp>aeq</samp>’.  The examples throughout this manual assume the default
flags.
</p>
<span id="index-GNU-extensions-5"></span>
<p>There is a builtin macro <code>debugmode</code>, which allows on-the-fly control of
the debugging output format:
</p>
<dl>
<dt id="index-debugmode">Builtin: <strong>debugmode</strong> <em>(<span class="roman">[</span><var>flags</var><span class="roman">]</span>)</em></dt>
<dd><p>The argument <var>flags</var> should be a subset of the letters listed above.
As special cases, if the argument starts with a ‘<samp>+</samp>’, the flags are
added to the current debug flags, and if it starts with a ‘<samp>-</samp>’, they
are removed.  If no argument is present, all debugging flags are cleared
(as if no <samp>-d</samp> was given), and with an empty argument the flags
are reset to the default of ‘<samp>aeq</samp>’.
</p>
<p>The expansion of <code>debugmode</code> is void.
</p></dd></dl>

<div class="example">
<pre class="example">$ <kbd>m4</kbd>
define(`foo', `FOO')
⇒
traceon(`foo')
⇒
debugmode()
⇒
foo
error→m4trace: -1- foo -&gt; `FOO'
⇒FOO
debugmode
⇒
foo
error→m4trace: -1- foo
⇒FOO
debugmode(`+l')
⇒
foo
error→m4trace:8: -1- foo
⇒FOO
</pre></div>

<p>The following example demonstrates the behavior of length truncation,
when specified on the command line.  Note that each argument and the
final result are individually truncated.  Also, the special tokens for
builtin functions are not truncated.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d -l 6</kbd>
define(`echo', `$@')debugmode(`+t')
⇒
echo(`1', `long string')
error→m4trace: -1- echo(`1', `long s...') -&gt; ``1',`l...'
⇒1,long string
indir(`echo', defn(`changequote'))
error→m4trace: -2- defn(`change...')
error→m4trace: -1- indir(`echo', &lt;changequote&gt;) -&gt; ``''
⇒
</pre></div>

<p>This example shows the effects of the debug flags that are not related
to macro tracing.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -dip -I examples</kbd>
error→m4debug: input read from stdin
include(`foo')dnl
error→m4debug: path search for `foo' found `examples/foo'
error→m4debug: input read from examples/foo
⇒bar
error→m4debug: input reverted to stdin, line 1
^D
error→m4debug: input exhausted
</pre></div>

<hr>
<span id="Debug-Output"></span><div class="header">
<p>
Previous: <a href="#Debug-Levels" accesskey="p" rel="prev">Debug Levels</a>, Up: <a href="#Debugging" accesskey="u" rel="up">Debugging</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Saving-debugging-output"></span><h3 class="section">7.4 Saving debugging output</h3>

<span id="index-saving-debugging-output"></span>
<span id="index-debugging-output_002c-saving"></span>
<span id="index-output_002c-saving-debugging"></span>
<span id="index-GNU-extensions-6"></span>
<p>Debug and tracing output can be redirected to files using either the
<samp>--debugfile</samp> option to <code>m4</code> (see <a href="#Debugging-options">Invoking m4</a>), or with the builtin macro <code>debugfile</code>:
</p>
<dl>
<dt id="index-debugfile">Builtin: <strong>debugfile</strong> <em>(<span class="roman">[</span><var>file</var><span class="roman">]</span>)</em></dt>
<dd><p>Sends all further debug and trace output to <var>file</var>, opened in append
mode.  If <var>file</var> is the empty string, debug and trace output are
discarded.  If <code>debugfile</code> is called without any arguments, debug
and trace output are sent to standard error.  This does not affect
warnings, error messages, or <code>errprint</code> output, which are
always sent to standard error.  If <var>file</var> cannot be opened, the
current debug file is unchanged, and an error is issued.
</p>
<p>The expansion of <code>debugfile</code> is void.
</p></dd></dl>

<div class="example">
<pre class="example">$ <kbd>m4 -d</kbd>
traceon(`divnum')
⇒
divnum(`extra')
error→m4:stdin:2: Warning: excess arguments to builtin `divnum' ignored
error→m4trace: -1- divnum(`extra') -&gt; `0'
⇒0
debugfile()
⇒
divnum(`extra')
error→m4:stdin:4: Warning: excess arguments to builtin `divnum' ignored
⇒0
debugfile
⇒
divnum
error→m4trace: -1- divnum -&gt; `0'
⇒0
</pre></div>

<hr>
<span id="Input-Control"></span><div class="header">
<p>
Next: <a href="#File-Inclusion" accesskey="n" rel="next">File Inclusion</a>, Previous: <a href="#Debugging" accesskey="p" rel="prev">Debugging</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Input-control"></span><h2 class="chapter">8 Input control</h2>

<p>This chapter describes various builtin macros for controlling the input
to <code>m4</code>.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Dnl" accesskey="1">Dnl</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Deleting whitespace in input
</td></tr>
<tr><td valign="top" align="left">• <a href="#Changequote" accesskey="2">Changequote</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Changing the quote characters
</td></tr>
<tr><td valign="top" align="left">• <a href="#Changecom" accesskey="3">Changecom</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Changing the comment delimiters
</td></tr>
<tr><td valign="top" align="left">• <a href="#Changeword" accesskey="4">Changeword</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Changing the lexical structure of words
</td></tr>
<tr><td valign="top" align="left">• <a href="#M4wrap" accesskey="5">M4wrap</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Saving text until end of input
</td></tr>
</tbody></table>

<hr>
<span id="Dnl"></span><div class="header">
<p>
Next: <a href="#Changequote" accesskey="n" rel="next">Changequote</a>, Up: <a href="#Input-Control" accesskey="u" rel="up">Input Control</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Deleting-whitespace-in-input"></span><h3 class="section">8.1 Deleting whitespace in input</h3>

<span id="index-deleting-whitespace-in-input"></span>
<span id="index-discarding-input-1"></span>
<span id="index-input_002c-discarding-1"></span>
<p>The builtin <code>dnl</code> stands for “Discard to Next Line”:
</p>
<dl>
<dt id="index-dnl">Builtin: <strong>dnl</strong></dt>
<dd><p>All characters, up to and including the next newline, are discarded
without performing any macro expansion.  A warning is issued if the end
of the file is encountered without a newline.
</p>
<p>The expansion of <code>dnl</code> is void.
</p></dd></dl>

<p>It is often used in connection with <code>define</code>, to remove the
newline that follows the call to <code>define</code>.  Thus
</p>
<div class="example">
<pre class="example">define(`foo', `Macro `foo'.')dnl A very simple macro, indeed.
foo
⇒Macro foo.
</pre></div>

<p>The input up to and including the next newline is discarded, as opposed
to the way comments are treated (see <a href="#Comments">Comments</a>).
</p>
<p>Usually, <code>dnl</code> is immediately followed by an end of line or some
other whitespace.  GNU <code>m4</code> will produce a warning diagnostic if
<code>dnl</code> is followed by an open parenthesis.  In this case, <code>dnl</code>
will collect and process all arguments, looking for a matching close
parenthesis.  All predictable side effects resulting from this
collection will take place.  <code>dnl</code> will return no output.  The
input following the matching close parenthesis up to and including the
next newline, on whatever line containing it, will still be discarded.
</p>
<div class="example">
<pre class="example">dnl(`args are ignored, but side effects occur',
define(`foo', `like this')) while this text is ignored: undefine(`foo')
error→m4:stdin:1: Warning: excess arguments to builtin `dnl' ignored
See how `foo' was defined, foo?
⇒See how foo was defined, like this?
</pre></div>

<p>If the end of file is encountered without a newline character, a
warning is issued and dnl stops consuming input.
</p>
<div class="example">
<pre class="example">m4wrap(`m4wrap(`2 hi
')0 hi dnl 1 hi')
⇒
define(`hi', `HI')
⇒
^D
error→m4:stdin:1: Warning: end of file treated as newline
⇒0 HI 2 HI
</pre></div>

<hr>
<span id="Changequote"></span><div class="header">
<p>
Next: <a href="#Changecom" accesskey="n" rel="next">Changecom</a>, Previous: <a href="#Dnl" accesskey="p" rel="prev">Dnl</a>, Up: <a href="#Input-Control" accesskey="u" rel="up">Input Control</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Changing-the-quote-characters"></span><h3 class="section">8.2 Changing the quote characters</h3>

<span id="index-changing-quote-delimiters"></span>
<span id="index-quote-delimiters_002c-changing"></span>
<span id="index-delimiters_002c-changing"></span>
<p>The default quote delimiters can be changed with the builtin
<code>changequote</code>:
</p>
<dl>
<dt id="index-changequote">Builtin: <strong>changequote</strong> <em>(<span class="roman">[</span><var>start</var> = ‘<samp>`</samp>’<span class="roman">]</span>, <span class="roman">[</span><var>end</var> = ‘<samp>'</samp>’<span class="roman">]</span>)</em></dt>
<dd><p>This sets <var>start</var> as the new begin-quote delimiter and <var>end</var> as
the new end-quote delimiter.  If both arguments are missing, the default
quotes (<code>`</code> and <code>'</code>) are used.  If <var>start</var> is void, then
quoting is disabled.  Otherwise, if <var>end</var> is missing or void, the
default end-quote delimiter (<code>'</code>) is used.  The quote delimiters
can be of any length.
</p>
<p>The expansion of <code>changequote</code> is void.
</p></dd></dl>

<div class="example">
<pre class="example">changequote(`[', `]')
⇒
define([foo], [Macro [foo].])
⇒
foo
⇒Macro foo.
</pre></div>

<p>The quotation strings can safely contain non-<small>ASCII</small> characters.
</p>
<div class="example">
<pre class="example">define(`a', `b')
⇒
«a»
⇒«b»
changequote(`«', `»')
⇒
«a»
⇒a
</pre></div>

<p>If no single character is appropriate, <var>start</var> and <var>end</var> can be
of any length.  Other implementations cap the delimiter length to five
characters, but GNU has no inherent limit.
</p>
<div class="example">
<pre class="example">changequote(`[[[', `]]]')
⇒
define([[[foo]]], [[[Macro [[[[[foo]]]]].]]])
⇒
foo
⇒Macro [[foo]].
</pre></div>

<p>Calling <code>changequote</code> with <var>start</var> as the empty string will
effectively disable the quoting mechanism, leaving no way to quote text.
However, using an empty string is not portable, as some other
implementations of <code>m4</code> revert to the default quoting, while others
preserve the prior non-empty delimiter.  If <var>start</var> is not empty,
then an empty <var>end</var> will use the default end-quote delimiter of
‘<samp>'</samp>’, as otherwise, it would be impossible to end a quoted string.
Again, this is not portable, as some other <code>m4</code> implementations
reuse <var>start</var> as the end-quote delimiter, while others preserve the
previous non-empty value.  Omitting both arguments restores the default
begin-quote and end-quote delimiters; fortunately this behavior is
portable to all implementations of <code>m4</code>.
</p>
<div class="example">
<pre class="example">define(`foo', `Macro `FOO'.')
⇒
changequote(`', `')
⇒
foo
⇒Macro `FOO'.
`foo'
⇒`Macro `FOO'.'
changequote(`,)
⇒
foo
⇒Macro FOO.
</pre></div>

<p>There is no way in <code>m4</code> to quote a string containing an unmatched
begin-quote, except using <code>changequote</code> to change the current
quotes.
</p>
<p>If the quotes should be changed from, say, ‘<samp>[</samp>’ to ‘<samp>[[</samp>’,
temporary quote characters have to be defined.  To achieve this, two
calls of <code>changequote</code> must be made, one for the temporary quotes
and one for the new quotes.
</p>
<p>Macros are recognized in preference to the begin-quote string, so if a
prefix of <var>start</var> can be recognized as part of a potential macro
name, the quoting mechanism is effectively disabled.  Unless you use
<code>changeword</code> (see <a href="#Changeword">Changeword</a>), this means that <var>start</var>
should not begin with a letter, digit, or ‘<samp>_</samp>’ (underscore).
However, even though quoted strings are not recognized, the quote
characters can still be discerned in macro expansion and in trace
output.
</p>
<div class="example">
<pre class="example">define(`echo', `$@')
⇒
define(`hi', `HI')
⇒
changequote(`q', `Q')
⇒
q hi Q hi
⇒q HI Q HI
echo(hi)
⇒qHIQ
changequote
⇒
changequote(`-', `EOF')
⇒
- hi EOF hi
⇒ hi  HI
changequote
⇒
changequote(`1', `2')
⇒
hi1hi2
⇒hi1hi2
hi 1hi2
⇒HI hi
</pre></div>

<p>Quotes are recognized in preference to argument collection.  In
particular, if <var>start</var> is a single ‘<samp>(</samp>’, then argument
collection is effectively disabled.  For portability with other
implementations, it is a good idea to avoid ‘<samp>(</samp>’, ‘<samp>,</samp>’, and
‘<samp>)</samp>’ as the first character in <var>start</var>.
</p>
<div class="example">
<pre class="example">define(`echo', `$#:$@:')
⇒
define(`hi', `HI')
⇒
changequote(`(',`)')
⇒
echo(hi)
⇒0::hi
changequote
⇒
changequote(`((', `))')
⇒
echo(hi)
⇒1:HI:
echo((hi))
⇒0::hi
changequote
⇒
changequote(`,', `)')
⇒
echo(hi,hi)bye)
⇒1:HIhibye:
</pre></div>

<p>However, if you are not worried about portability, using ‘<samp>(</samp>’ and
‘<samp>)</samp>’ as quoting characters has an interesting property—you can use
it to compute a quoted string containing the expansion of any quoted
text, as long as the expansion results in both balanced quotes and
balanced parentheses.  The trick is realizing <code>expand</code> uses
‘<samp>$1</samp>’ unquoted, to trigger its expansion using the normal quoting
characters, but uses extra parentheses to group unquoted commas that
occur in the expansion without consuming whitespace following those
commas.  Then <code>_expand</code> uses <code>changequote</code> to convert the
extra parentheses back into quoting characters.  Note that it takes two
more <code>changequote</code> invocations to restore the original quotes.
Contrast the behavior on whitespace when using ‘<samp>$*</samp>’, via
<code>quote</code>, to attempt the same task.
</p>
<div class="example">
<pre class="example">changequote(`[', `]')dnl
define([a], [1, (b)])dnl
define([b], [2])dnl
define([quote], [[$*]])dnl
define([expand], [_$0(($1))])dnl
define([_expand],
  [changequote([(], [)])$1changequote`'changequote(`[', `]')])dnl
expand([a, a, [a, a], [[a, a]]])
⇒1, (2), 1, (2), a, a, [a, a]
quote(a, a, [a, a], [[a, a]])
⇒1,(2),1,(2),a, a,[a, a]
</pre></div>

<p>If <var>end</var> is a prefix of <var>start</var>, the end-quote will be
recognized in preference to a nested begin-quote.  In particular,
changing the quotes to have the same string for <var>start</var> and
<var>end</var> disables nesting of quotes.  When quote nesting is disabled,
it is impossible to double-quote strings across macro expansions, so
using the same string is not done very often.
</p>
<div class="example">
<pre class="example">define(`hi', `HI')
⇒
changequote(`""', `"')
⇒
""hi"""hi"
⇒hihi
""hi" ""hi"
⇒hi hi
""hi"" "hi"
⇒hi" "HI"
changequote
⇒
`hi`hi'hi'
⇒hi`hi'hi
changequote(`"', `"')
⇒
"hi"hi"hi"
⇒hiHIhi
</pre></div>


<p>It is an error if the end of file occurs within a quoted string.
</p>
<div class="example">
<pre class="example">`hello world'
⇒hello world
`dangling quote
^D
error→m4:stdin:2: ERROR: end of file in string
</pre></div>

<div class="example">
<pre class="example">ifelse(`dangling quote
^D
error→m4:stdin:1: ERROR: end of file in string
</pre></div>

<hr>
<span id="Changecom"></span><div class="header">
<p>
Next: <a href="#Changeword" accesskey="n" rel="next">Changeword</a>, Previous: <a href="#Changequote" accesskey="p" rel="prev">Changequote</a>, Up: <a href="#Input-Control" accesskey="u" rel="up">Input Control</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Changing-the-comment-delimiters"></span><h3 class="section">8.3 Changing the comment delimiters</h3>

<span id="index-changing-comment-delimiters"></span>
<span id="index-comment-delimiters_002c-changing"></span>
<span id="index-delimiters_002c-changing-1"></span>
<p>The default comment delimiters can be changed with the builtin
macro <code>changecom</code>:
</p>
<dl>
<dt id="index-changecom">Builtin: <strong>changecom</strong> <em>(<span class="roman">[</span><var>start</var><span class="roman">]</span>, <span class="roman">[</span><var>end</var> = ‘<samp><span class="key">NL</span></samp>’<span class="roman">]</span>)</em></dt>
<dd><p>This sets <var>start</var> as the new begin-comment delimiter and <var>end</var>
as the new end-comment delimiter.  If both arguments are missing, or
<var>start</var> is void, then comments are disabled.  Otherwise, if
<var>end</var> is missing or void, the default end-comment delimiter of
newline is used.  The comment delimiters can be of any length.
</p>
<p>The expansion of <code>changecom</code> is void.
</p></dd></dl>

<div class="example">
<pre class="example">define(`comment', `COMMENT')
⇒
# A normal comment
⇒# A normal comment
changecom(`/*', `*/')
⇒
# Not a comment anymore
⇒# Not a COMMENT anymore
But: /* this is a comment now */ while this is not a comment
⇒But: /* this is a comment now */ while this is not a COMMENT
</pre></div>

<span id="index-comments_002c-copied-to-output"></span>
<p>Note how comments are copied to the output, much as if they were quoted
strings.  If you want the text inside a comment expanded, quote the
begin-comment delimiter.
</p>
<p>Calling <code>changecom</code> without any arguments, or with <var>start</var> as
the empty string, will effectively disable the commenting mechanism.  To
restore the original comment start of ‘<samp>#</samp>’, you must explicitly ask
for it.  If <var>start</var> is not empty, then an empty <var>end</var> will use
the default end-comment delimiter of newline, as otherwise, it would be
impossible to end a comment.  However, this is not portable, as some
other <code>m4</code> implementations preserve the previous non-empty
delimiters instead.
</p>
<div class="example">
<pre class="example">define(`comment', `COMMENT')
⇒
changecom
⇒
# Not a comment anymore
⇒# Not a COMMENT anymore
changecom(`#', `')
⇒
# comment again
⇒# comment again
</pre></div>

<p>The comment strings can safely contain non-<small>ASCII</small> characters.
</p>
<div class="example">
<pre class="example">define(`a', `b')
⇒
«a»
⇒«b»
changecom(`«', `»')
⇒
«a»
⇒«a»
</pre></div>

<p>If no single character is appropriate, <var>start</var> and <var>end</var> can be
of any length.  Other implementations cap the delimiter length to five
characters, but GNU has no inherent limit.
</p>
<p>Comments are recognized in preference to macros.  However, this is not
compatible with other implementations, where macros and even quoting
takes precedence over comments, so it may change in a future release.
For portability, this means that <var>start</var> should not begin with a
letter, digit, or ‘<samp>_</samp>’ (underscore), and that neither the
start-quote nor the start-comment string should be a prefix of the
other.
</p>
<div class="example">
<pre class="example">define(`hi', `HI')
⇒
define(`hi1hi2', `hello')
⇒
changecom(`q', `Q')
⇒
q hi Q hi
⇒q hi Q HI
changecom(`1', `2')
⇒
hi1hi2
⇒hello
hi 1hi2
⇒HI 1hi2
</pre></div>

<p>Comments are recognized in preference to argument collection.  In
particular, if <var>start</var> is a single ‘<samp>(</samp>’, then argument
collection is effectively disabled.  For portability with other
implementations, it is a good idea to avoid ‘<samp>(</samp>’, ‘<samp>,</samp>’, and
‘<samp>)</samp>’ as the first character in <var>start</var>.
</p>
<div class="example">
<pre class="example">define(`echo', `$#:$*:$@:')
⇒
define(`hi', `HI')
⇒
changecom(`(',`)')
⇒
echo(hi)
⇒0:::(hi)
changecom
⇒
changecom(`((', `))')
⇒
echo(hi)
⇒1:HI:HI:
echo((hi))
⇒0:::((hi))
changecom(`,', `)')
⇒
echo(hi,hi)bye)
⇒1:HI,hi)bye:HI,hi)bye:
changecom
⇒
echo(hi,`,`'hi',hi)
⇒3:HI,,HI,HI:HI,,`'hi,HI:
echo(hi,`,`'hi',hi`'changecom(`,,', `hi'))
⇒3:HI,,`'hi,HI:HI,,`'hi,HI:
</pre></div>

<p>It is an error if the end of file occurs within a comment.
</p>
<div class="example">
<pre class="example">changecom(`/*', `*/')
⇒
/*dangling comment
^D
error→m4:stdin:2: ERROR: end of file in comment
</pre></div>

<hr>
<span id="Changeword"></span><div class="header">
<p>
Next: <a href="#M4wrap" accesskey="n" rel="next">M4wrap</a>, Previous: <a href="#Changecom" accesskey="p" rel="prev">Changecom</a>, Up: <a href="#Input-Control" accesskey="u" rel="up">Input Control</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Changing-the-lexical-structure-of-words"></span><h3 class="section">8.4 Changing the lexical structure of words</h3>

<span id="index-lexical-structure-of-words"></span>
<span id="index-words_002c-lexical-structure-of"></span>
<span id="index-syntax_002c-changing"></span>
<span id="index-changing-syntax"></span>
<span id="index-regular-expressions"></span>
<blockquote>
<p>The macro <code>changeword</code> and all associated functionality is
experimental.  It is only available if the <samp>--enable-changeword</samp>
option was given to <code>configure</code>, at GNU <code>m4</code>
installation
time.  The functionality will go away in the future, to be replaced by
other new features that are more efficient at providing the same
capabilities.  <em>Do not rely on it</em>.  Please direct your comments
about it the same way you would do for bugs.
</p></blockquote>

<p>A file being processed by <code>m4</code> is split into quoted strings, words
(potential macro names) and simple tokens (any other single character).
Initially a word is defined by the following regular expression:
</p>
<div class="example">
<pre class="example">[_a-zA-Z][_a-zA-Z0-9]*
</pre></div>

<p>Using <code>changeword</code>, you can change this regular expression:
</p>
<dl>
<dt id="index-changeword">Optional builtin: <strong>changeword</strong> <em>(<var>regex</var>)</em></dt>
<dd><p>Changes the regular expression for recognizing macro names to be
<var>regex</var>.  If <var>regex</var> is empty, use
‘<samp>[_a-zA-Z][_a-zA-Z0-9]*</samp>’.  <var>regex</var> must obey the constraint
that every prefix of the desired final pattern is also accepted by the
regular expression.  If <var>regex</var> contains grouping parentheses, the
macro invoked is the portion that matched the first group, rather than
the entire matching string.
</p>
<p>The expansion of <code>changeword</code> is void.
The macro <code>changeword</code> is recognized only with parameters.
</p></dd></dl>

<p>Relaxing the lexical rules of <code>m4</code> might be useful (for example) if
you wanted to apply translations to a file of numbers:
</p>
<div class="example">
<pre class="example">ifdef(`changeword', `', `errprint(` skipping: no changeword support
')m4exit(`77')')dnl
changeword(`[_a-zA-Z0-9]+')
⇒
define(`1', `0')1
⇒0
</pre></div>

<p>Tightening the lexical rules is less useful, because it will generally
make some of the builtins unavailable.  You could use it to prevent
accidental call of builtins, for example:
</p>
<div class="example">
<pre class="example">ifdef(`changeword', `', `errprint(` skipping: no changeword support
')m4exit(`77')')dnl
define(`_indir', defn(`indir'))
⇒
changeword(`_[_a-zA-Z0-9]*')
⇒
esyscmd(`foo')
⇒esyscmd(foo)
_indir(`esyscmd', `echo hi')
⇒hi
⇒
</pre></div>

<p>Because <code>m4</code> constructs its words a character at a time, there
is a restriction on the regular expressions that may be passed to
<code>changeword</code>.  This is that if your regular expression accepts
‘<samp>foo</samp>’, it must also accept ‘<samp>f</samp>’ and ‘<samp>fo</samp>’.
</p>
<div class="example">
<pre class="example">ifdef(`changeword', `', `errprint(` skipping: no changeword support
')m4exit(`77')')dnl
define(`foo
', `bar
')
⇒
dnl This example wants to recognize changeword, dnl, and `foo\n'.
dnl First, we check that our regexp will match.
regexp(`changeword', `[cd][a-z]*\|foo[
]')
⇒0
regexp(`foo
', `[cd][a-z]*\|foo[
]')
⇒0
regexp(`f', `[cd][a-z]*\|foo[
]')
⇒-1
foo
⇒foo
changeword(`[cd][a-z]*\|foo[
]')
⇒
dnl Even though `foo\n' matches, we forgot to allow `f'.
foo
⇒foo
changeword(`[cd][a-z]*\|fo*[
]?')
⇒
dnl Now we can call `foo\n'.
foo
⇒bar
</pre></div>


<p><code>changeword</code> has another function.  If the regular expression
supplied contains any grouped subexpressions, then text outside
the first of these is discarded before symbol lookup.  So:
</p>
<div class="example">
<pre class="example">ifdef(`changeword', `', `errprint(` skipping: no changeword support
')m4exit(`77')')dnl
ifdef(`__unix__', ,
      `errprint(` skipping: syscmd does not have unix semantics
')m4exit(`77')')dnl
changecom(`/*', `*/')dnl
define(`foo', `bar')dnl
changeword(`#\([_a-zA-Z0-9]*\)')
⇒
#esyscmd(`echo foo \#foo')
⇒foo bar
⇒
</pre></div>

<p><code>m4</code> now requires a ‘<samp>#</samp>’ mark at the beginning of every
macro invocation, so one can use <code>m4</code> to preprocess plain
text without losing various words like ‘<samp>divert</samp>’.
</p>
<p>In <code>m4</code>, macro substitution is based on text, while in TeX, it
is based on tokens.  <code>changeword</code> can throw this difference into
relief.  For example, here is the same idea represented in TeX and
<code>m4</code>.  First, the TeX version:
</p>
<div class="example">
<pre class="example">\def\a{\message{Hello}}
\catcode`\@=0
\catcode`\\=12
@a
@bye
⇒Hello
</pre></div>

<p>Then, the <code>m4</code> version:
</p>
<div class="example">
<pre class="example">ifdef(`changeword', `', `errprint(` skipping: no changeword support
')m4exit(`77')')dnl
define(`a', `errprint(`Hello')')dnl
changeword(`@\([_a-zA-Z0-9]*\)')
⇒
@a
⇒errprint(Hello)
</pre></div>

<p>In the TeX example, the first line defines a macro <code>a</code> to
print the message ‘<samp>Hello</samp>’.  The second line defines <tt class="key">@</tt> to
be usable instead of <tt class="key">\</tt> as an escape character.  The third line
defines <tt class="key">\</tt> to be a normal printing character, not an escape.
The fourth line invokes the macro <code>a</code>.  So, when TeX is run
on this file, it displays the message ‘<samp>Hello</samp>’.
</p>
<p>When the <code>m4</code> example is passed through <code>m4</code>, it outputs
‘<samp>errprint(Hello)</samp>’.  The reason for this is that TeX does
lexical analysis of macro definition when the macro is <em>defined</em>.
<code>m4</code> just stores the text, postponing the lexical analysis until
the macro is <em>used</em>.
</p>
<p>You should note that using <code>changeword</code> will slow <code>m4</code> down
by a factor of about seven, once it is changed to something other
than the default regular expression.  You can invoke <code>changeword</code>
with the empty string to restore the default word definition, and regain
the parsing speed.
</p>
<hr>
<span id="M4wrap"></span><div class="header">
<p>
Previous: <a href="#Changeword" accesskey="p" rel="prev">Changeword</a>, Up: <a href="#Input-Control" accesskey="u" rel="up">Input Control</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Saving-text-until-end-of-input"></span><h3 class="section">8.5 Saving text until end of input</h3>

<span id="index-saving-input"></span>
<span id="index-input_002c-saving"></span>
<span id="index-deferring-expansion"></span>
<span id="index-expansion_002c-deferring"></span>
<p>It is possible to ‘save’ some text until the end of the normal input has
been seen.  Text can be saved, to be read again by <code>m4</code> when the
normal input has been exhausted.  This feature is normally used to
initiate cleanup actions before normal exit, e.g., deleting temporary
files.
</p>
<p>To save input text, use the builtin <code>m4wrap</code>:
</p>
<dl>
<dt id="index-m4wrap">Builtin: <strong>m4wrap</strong> <em>(<var>string</var>, …)</em></dt>
<dd><p>Stores <var>string</var> in a safe place, to be reread when end of input is
reached.  As a GNU extension, additional arguments are
concatenated with a space to the <var>string</var>.
</p>
<p>The expansion of <code>m4wrap</code> is void.
The macro <code>m4wrap</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">define(`cleanup', `This is the `cleanup' action.
')
⇒
m4wrap(`cleanup')
⇒
This is the first and last normal input line.
⇒This is the first and last normal input line.
^D
⇒This is the cleanup action.
</pre></div>

<p>The saved input is only reread when the end of normal input is seen, and
not if <code>m4exit</code> is used to exit <code>m4</code>.
</p>
<p>It is safe to call <code>m4wrap</code> from saved text, but then the order in
which the saved text is reread is undefined.  If <code>m4wrap</code> is not used
recursively, the saved pieces of text are reread in the opposite order
in which they were saved (LIFO—last in, first out).  However, this
behavior is likely to change in a future release, to match
POSIX, so you should not depend on this order.
</p>
<p>It is possible to emulate POSIX behavior even
with older versions of GNU M4 by including the file
<samp>m4-1.4.19/examples/wrapfifo.m4</samp> from the
distribution:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
undivert(`wrapfifo.m4')dnl
⇒dnl Redefine m4wrap to have FIFO semantics.
⇒define(`_m4wrap_level', `0')dnl
⇒define(`m4wrap',
⇒`ifdef(`m4wrap'_m4wrap_level,
⇒       `define(`m4wrap'_m4wrap_level,
⇒               defn(`m4wrap'_m4wrap_level)`$1')',
⇒       `builtin(`m4wrap', `define(`_m4wrap_level',
⇒                                  incr(_m4wrap_level))dnl
⇒m4wrap'_m4wrap_level)dnl
⇒define(`m4wrap'_m4wrap_level, `$1')')')dnl
include(`wrapfifo.m4')
⇒
m4wrap(`a`'m4wrap(`c
', `d')')m4wrap(`b')
⇒
^D
⇒abc
</pre></div>

<p>It is likewise possible to emulate LIFO behavior without resorting to
the GNU M4 extension of <code>builtin</code>, by including the file
<samp>m4-1.4.19/examples/wraplifo.m4</samp> from the
distribution.  (Unfortunately, both examples shown here share some
subtle bugs.  See if you can find and correct them; or see <a href="#Improved-m4wrap">Answers</a>).
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
undivert(`wraplifo.m4')dnl
⇒dnl Redefine m4wrap to have LIFO semantics.
⇒define(`_m4wrap_level', `0')dnl
⇒define(`_m4wrap', defn(`m4wrap'))dnl
⇒define(`m4wrap',
⇒`ifdef(`m4wrap'_m4wrap_level,
⇒       `define(`m4wrap'_m4wrap_level,
⇒               `$1'defn(`m4wrap'_m4wrap_level))',
⇒       `_m4wrap(`define(`_m4wrap_level', incr(_m4wrap_level))dnl
⇒m4wrap'_m4wrap_level)dnl
⇒define(`m4wrap'_m4wrap_level, `$1')')')dnl
include(`wraplifo.m4')
⇒
m4wrap(`a`'m4wrap(`c
', `d')')m4wrap(`b')
⇒
^D
⇒bac
</pre></div>

<p>Here is an example of implementing a factorial function using
<code>m4wrap</code>:
</p>
<div class="example">
<pre class="example">define(`f', `ifelse(`$1', `0', `Answer: 0!=1
', eval(`$1&gt;1'), `0', `Answer: $2$1=eval(`$2$1')
', `m4wrap(`f(decr(`$1'), `$2$1*')')')')
⇒
f(`10')
⇒
^D
⇒Answer: 10*9*8*7*6*5*4*3*2*1=3628800
</pre></div>

<p>Invocations of <code>m4wrap</code> at the same recursion level are
concatenated and rescanned as usual:
</p>
<div class="example">
<pre class="example">define(`aa', `AA
')
⇒
m4wrap(`a')m4wrap(`a')
⇒
^D
⇒AA
</pre></div>

<p>however, the transition between recursion levels behaves like an end of
file condition between two input files.
</p>
<div class="example">
<pre class="example">m4wrap(`m4wrap(`)')len(abc')
⇒
^D
error→m4:stdin:1: ERROR: end of file in argument list
</pre></div>

<hr>
<span id="File-Inclusion"></span><div class="header">
<p>
Next: <a href="#Diversions" accesskey="n" rel="next">Diversions</a>, Previous: <a href="#Input-Control" accesskey="p" rel="prev">Input Control</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="File-inclusion"></span><h2 class="chapter">9 File inclusion</h2>

<span id="index-file-inclusion"></span>
<span id="index-inclusion_002c-of-files"></span>
<p><code>m4</code> allows you to include named files at any point in the input.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Include" accesskey="1">Include</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Including named files
</td></tr>
<tr><td valign="top" align="left">• <a href="#Search-Path" accesskey="2">Search Path</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Searching for include files
</td></tr>
</tbody></table>

<hr>
<span id="Include"></span><div class="header">
<p>
Next: <a href="#Search-Path" accesskey="n" rel="next">Search Path</a>, Up: <a href="#File-Inclusion" accesskey="u" rel="up">File Inclusion</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Including-named-files"></span><h3 class="section">9.1 Including named files</h3>

<p>There are two builtin macros in <code>m4</code> for including files:
</p>
<dl>
<dt id="index-include">Builtin: <strong>include</strong> <em>(<var>file</var>)</em></dt>
<dt id="index-sinclude">Builtin: <strong>sinclude</strong> <em>(<var>file</var>)</em></dt>
<dd><p>Both macros cause the file named <var>file</var> to be read by
<code>m4</code>.  When the end of the file is reached, input is resumed from
the previous input file.
</p>
<p>The expansion of <code>include</code> and <code>sinclude</code> is therefore the
contents of <var>file</var>.
</p>
<p>If <var>file</var> does not exist, is a directory, or cannot otherwise be
read, the expansion is void,
and <code>include</code> will fail with an error while <code>sinclude</code> is
silent.  The empty string counts as a file that does not exist.
</p>
<p>The macros <code>include</code> and <code>sinclude</code> are recognized only with
parameters.
</p></dd></dl>

<div class="example">
<pre class="example">include(`none')
error→m4:stdin:1: cannot open `none': No such file or directory
⇒
include()
error→m4:stdin:2: cannot open `': No such file or directory
⇒
sinclude(`none')
⇒
sinclude()
⇒
</pre></div>

<p>The rest of this section assumes that <code>m4</code> is invoked with the
<samp>-I</samp> option (see <a href="#Preprocessor-features">Invoking m4</a>)
pointing to the <samp>m4-1.4.19/examples</samp>
directory shipped as part of the GNU <code>m4</code> package.  The
file <samp>m4-1.4.19/examples/incl.m4</samp> in the distribution
contains the lines:
</p>
<div class="example">
<pre class="example">$ <kbd>cat examples/incl.m4</kbd>
⇒Include file start
⇒foo
⇒Include file end
</pre></div>

<p>Normally file inclusion is used to insert the contents of a file
into the input stream.  The contents of the file will be read by
<code>m4</code> and macro calls in the file will be expanded:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
define(`foo', `FOO')
⇒
include(`incl.m4')
⇒Include file start
⇒FOO
⇒Include file end
⇒
</pre></div>

<p>The fact that <code>include</code> and <code>sinclude</code> expand to the contents
of the file can be used to define macros that operate on entire files.
Here is an example, which defines ‘<samp>bar</samp>’ to expand to the contents
of <samp>incl.m4</samp>:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
define(`bar', include(`incl.m4'))
⇒
This is `bar':  &gt;&gt;bar&lt;&lt;
⇒This is bar:  &gt;&gt;Include file start
⇒foo
⇒Include file end
⇒&lt;&lt;
</pre></div>

<p>This use of <code>include</code> is not trivial, though, as files can contain
quotes, commas, and parentheses, which can interfere with the way the
<code>m4</code> parser works.  GNU <code>m4</code> seamlessly concatenates
the file contents with the next character, even if the included file
ended in the middle of a comment, string, or macro call.  These
conditions are only treated as end of file errors if specified as input
files on the command line.
</p>
<p>In GNU <code>m4</code>, an alternative method of reading files is
using <code>undivert</code> (see <a href="#Undivert">Undivert</a>) on a named file.
</p>

<hr>
<span id="Search-Path"></span><div class="header">
<p>
Previous: <a href="#Include" accesskey="p" rel="prev">Include</a>, Up: <a href="#File-Inclusion" accesskey="u" rel="up">File Inclusion</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Searching-for-include-files"></span><h3 class="section">9.2 Searching for include files</h3>

<span id="index-search-path-for-included-files"></span>
<span id="index-included-files_002c-search-path-for"></span>
<span id="index-GNU-extensions-7"></span>
<p>GNU <code>m4</code> allows included files to be found in other directories
than the current working directory.
</p>
<span id="index-M4PATH"></span>
<p>If the <samp>--prepend-include</samp> or <samp>-B</samp> command-line option was
provided (see <a href="#Preprocessor-features">Invoking m4</a>), those
directories are searched first, in reverse order that those options were
listed on the command line.  Then <code>m4</code> looks in the current working
directory.  Next comes the directories specified with the
<samp>--include</samp> or <samp>-I</samp> option, in the order found on the
command line.  Finally, if the <code>M4PATH</code> environment variable is set,
it is expected to contain a colon-separated list of directories, which
will be searched in order.
</p>
<p>If the automatic search for include-files causes trouble, the ‘<samp>p</samp>’
debug flag (see <a href="#Debug-Levels">Debug Levels</a>) can help isolate the problem.
</p>
<hr>
<span id="Diversions"></span><div class="header">
<p>
Next: <a href="#Text-handling" accesskey="n" rel="next">Text handling</a>, Previous: <a href="#File-Inclusion" accesskey="p" rel="prev">File Inclusion</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Diverting-and-undiverting-output"></span><h2 class="chapter">10 Diverting and undiverting output</h2>

<span id="index-deferring-output"></span>
<p>Diversions are a way of temporarily saving output.  The output of
<code>m4</code> can at any time be diverted to a temporary file, and be
reinserted into the output stream, <em>undiverted</em>, again at a later
time.
</p>
<span id="index-TMPDIR"></span>
<p>Numbered diversions are counted from 0 upwards, diversion number 0
being the normal output stream.  GNU
<code>m4</code> tries to keep diversions in memory.  However, there is a
limit to the overall memory usable by all diversions taken together
(512K, currently).  When this maximum is about to be exceeded,
a temporary file is opened to receive the contents of the biggest
diversion still in memory, freeing this memory for other diversions.
When creating the temporary file, <code>m4</code> honors the value of the
environment variable <code>TMPDIR</code>, and falls back to <samp>/tmp</samp>.
Thus, the amount of available disk space provides the only real limit on
the number and aggregate size of diversions.
</p>

<p>Diversions make it possible to generate output in a different order than
the input was read.  It is possible to implement topological sorting
dependencies.  For example, GNU Autoconf makes use of
diversions under the hood to ensure that the expansion of a prerequisite
macro appears in the output prior to the expansion of a dependent macro,
regardless of which order the two macros were invoked in the user’s
input file.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Divert" accesskey="1">Divert</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Diverting output
</td></tr>
<tr><td valign="top" align="left">• <a href="#Undivert" accesskey="2">Undivert</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Undiverting output
</td></tr>
<tr><td valign="top" align="left">• <a href="#Divnum" accesskey="3">Divnum</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Diversion numbers
</td></tr>
<tr><td valign="top" align="left">• <a href="#Cleardivert" accesskey="4">Cleardivert</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Discarding diverted text
</td></tr>
</tbody></table>

<hr>
<span id="Divert"></span><div class="header">
<p>
Next: <a href="#Undivert" accesskey="n" rel="next">Undivert</a>, Up: <a href="#Diversions" accesskey="u" rel="up">Diversions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Diverting-output"></span><h3 class="section">10.1 Diverting output</h3>

<span id="index-diverting-output-to-files"></span>
<span id="index-output_002c-diverting-to-files"></span>
<span id="index-files_002c-diverting-output-to"></span>
<p>Output is diverted using <code>divert</code>:
</p>
<dl>
<dt id="index-divert">Builtin: <strong>divert</strong> <em>(<span class="roman">[</span><var>number</var> = ‘<samp>0</samp>’<span class="roman">]</span>)</em></dt>
<dd><p>The current diversion is changed to <var>number</var>.  If <var>number</var> is left
out or empty, it is assumed to be zero.  If <var>number</var> cannot be
parsed, the diversion is unchanged.
</p>
<p>The expansion of <code>divert</code> is void.
</p></dd></dl>

<p>When all the <code>m4</code> input will have been processed, all existing
diversions are automatically undiverted, in numerical order.
</p>
<div class="example">
<pre class="example">divert(`1')
This text is diverted.
divert
⇒
This text is not diverted.
⇒This text is not diverted.
^D
⇒
⇒This text is diverted.
</pre></div>

<p>Several calls of <code>divert</code> with the same argument do not overwrite
the previous diverted text, but append to it.  Diversions are printed
after any wrapped text is expanded.
</p>
<div class="example">
<pre class="example">define(`text', `TEXT')
⇒
divert(`1')`diverted text.'
divert
⇒
m4wrap(`Wrapped text precedes ')
⇒
^D
⇒Wrapped TEXT precedes diverted text.
</pre></div>

<span id="index-discarding-input-2"></span>
<span id="index-input_002c-discarding-2"></span>
<p>If output is diverted to a negative diversion, it is simply discarded.
This can be used to suppress unwanted output.  A common example of
unwanted output is the trailing newlines after macro definitions.  Here
is a common programming idiom in <code>m4</code> for avoiding them.
</p>
<div class="example">
<pre class="example">divert(`-1')
define(`foo', `Macro `foo'.')
define(`bar', `Macro `bar'.')
divert
⇒
</pre></div>

<span id="index-GNU-extensions-8"></span>
<p>Traditional implementations only supported ten diversions.  But as a
GNU extension, diversion numbers can be as large as positive
integers will allow, rather than treating a multi-digit diversion number
as a request to discard text.
</p>
<div class="example">
<pre class="example">divert(eval(`1&lt;&lt;28'))world
divert(`2')hello
^D
⇒hello
⇒world
</pre></div>

<p>Note that <code>divert</code> is an English word, but also an active macro
without arguments.  When processing plain text, the word might appear in
normal text and be unintentionally swallowed as a macro invocation.  One
way to avoid this is to use the <samp>-P</samp> option to rename all
builtins (see <a href="#Operation-modes">Invoking m4</a>).  Another is to write
a wrapper that requires a parameter to be recognized.
</p>
<div class="example">
<pre class="example">We decided to divert the stream for irrigation.
⇒We decided to  the stream for irrigation.
define(`divert', `ifelse(`$#', `0', ``$0'', `builtin(`$0', $@)')')
⇒
divert(`-1')
Ignored text.
divert(`0')
⇒
We decided to divert the stream for irrigation.
⇒We decided to divert the stream for irrigation.
</pre></div>

<hr>
<span id="Undivert"></span><div class="header">
<p>
Next: <a href="#Divnum" accesskey="n" rel="next">Divnum</a>, Previous: <a href="#Divert" accesskey="p" rel="prev">Divert</a>, Up: <a href="#Diversions" accesskey="u" rel="up">Diversions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Undiverting-output"></span><h3 class="section">10.2 Undiverting output</h3>

<p>Diverted text can be undiverted explicitly using the builtin
<code>undivert</code>:
</p>
<dl>
<dt id="index-undivert">Builtin: <strong>undivert</strong> <em>(<span class="roman">[</span><var>diversions…</var><span class="roman">]</span>)</em></dt>
<dd><p>Undiverts the numeric <var>diversions</var> given by the arguments, in the
order given.  If no arguments are supplied, all diversions are
undiverted, in numerical order.
</p>
<span id="index-file-inclusion-1"></span>
<span id="index-inclusion_002c-of-files-1"></span>
<span id="index-GNU-extensions-9"></span>
<p>As a GNU extension, <var>diversions</var> may contain non-numeric
strings, which are treated as the names of files to copy into the output
without expansion.  A warning is issued if a file could not be opened.
</p>
<p>The expansion of <code>undivert</code> is void.
</p></dd></dl>

<div class="example">
<pre class="example">divert(`1')
This text is diverted.
divert
⇒
This text is not diverted.
⇒This text is not diverted.
undivert(`1')
⇒
⇒This text is diverted.
⇒
</pre></div>

<p>Notice the last two blank lines.  One of them comes from the newline
following <code>undivert</code>, the other from the newline that followed the
<code>divert</code>!  A diversion often starts with a blank line like this.
</p>
<p>When diverted text is undiverted, it is <em>not</em> reread by <code>m4</code>,
but rather copied directly to the current output, and it is therefore
not an error to undivert into a diversion.  Undiverting the empty string
is the same as specifying diversion 0; in either case nothing happens
since the output has already been flushed.
</p>
<div class="example">
<pre class="example">divert(`1')diverted text
divert
⇒
undivert()
⇒
undivert(`0')
⇒
undivert
⇒diverted text
⇒
divert(`1')more
divert(`2')undivert(`1')diverted text`'divert
⇒
undivert(`1')
⇒
undivert(`2')
⇒more
⇒diverted text
</pre></div>

<p>When a diversion has been undiverted, the diverted text is discarded,
and it is not possible to bring back diverted text more than once.
</p>
<div class="example">
<pre class="example">divert(`1')
This text is diverted first.
divert(`0')undivert(`1')dnl
⇒
⇒This text is diverted first.
undivert(`1')
⇒
divert(`1')
This text is also diverted but not appended.
divert(`0')undivert(`1')dnl
⇒
⇒This text is also diverted but not appended.
</pre></div>

<p>Attempts to undivert the current diversion are silently ignored.  Thus,
when the current diversion is not 0, the current diversion does not get
rearranged among the other diversions.
</p>
<div class="example">
<pre class="example">divert(`1')one
divert(`2')two
divert(`3')three
divert(`2')undivert`'dnl
divert`'undivert`'dnl
⇒two
⇒one
⇒three
</pre></div>

<span id="index-GNU-extensions-10"></span>
<span id="index-file-inclusion-2"></span>
<span id="index-inclusion_002c-of-files-2"></span>
<p>GNU <code>m4</code> allows named files to be undiverted.  Given a
non-numeric argument, the contents of the file named will be copied,
uninterpreted, to the current output.  This complements the builtin
<code>include</code> (see <a href="#Include">Include</a>).  To illustrate the difference, assume
the file <samp>foo</samp> contains:
</p>
<div class="example">
<pre class="example">$ <kbd>cat foo</kbd>
bar
</pre></div>

<p>then
</p>
<div class="example">
<pre class="example">define(`bar', `BAR')
⇒
undivert(`foo')
⇒bar
⇒
include(`foo')
⇒BAR
⇒
</pre></div>

<p>If the file is not found (or cannot be read), an error message is
issued, and the expansion is void.  It is possible to intermix files
and diversion numbers.
</p>
<div class="example">
<pre class="example">divert(`1')diversion one
divert(`2')undivert(`foo')dnl
divert(`3')diversion three
divert`'dnl
undivert(`1', `2', `foo', `3')dnl
⇒diversion one
⇒bar
⇒bar
⇒diversion three
</pre></div>

<hr>
<span id="Divnum"></span><div class="header">
<p>
Next: <a href="#Cleardivert" accesskey="n" rel="next">Cleardivert</a>, Previous: <a href="#Undivert" accesskey="p" rel="prev">Undivert</a>, Up: <a href="#Diversions" accesskey="u" rel="up">Diversions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Diversion-numbers"></span><h3 class="section">10.3 Diversion numbers</h3>

<span id="index-diversion-numbers"></span>
<p>The current diversion is tracked by the builtin <code>divnum</code>:
</p>
<dl>
<dt id="index-divnum">Builtin: <strong>divnum</strong></dt>
<dd><p>Expands to the number of the current diversion.
</p></dd></dl>

<div class="example">
<pre class="example">Initial divnum
⇒Initial 0
divert(`1')
Diversion one: divnum
divert(`2')
Diversion two: divnum
^D
⇒
⇒Diversion one: 1
⇒
⇒Diversion two: 2
</pre></div>

<hr>
<span id="Cleardivert"></span><div class="header">
<p>
Previous: <a href="#Divnum" accesskey="p" rel="prev">Divnum</a>, Up: <a href="#Diversions" accesskey="u" rel="up">Diversions</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Discarding-diverted-text"></span><h3 class="section">10.4 Discarding diverted text</h3>

<span id="index-discarding-diverted-text"></span>
<span id="index-diverted-text_002c-discarding"></span>
<p>Often it is not known, when output is diverted, whether the diverted
text is actually needed.  Since all non-empty diversion are brought back
on the main output stream when the end of input is seen, a method of
discarding a diversion is needed.  If all diversions should be
discarded, the easiest is to end the input to <code>m4</code> with
‘<samp>divert(`-1')</samp>’ followed by an explicit ‘<samp>undivert</samp>’:
</p>
<div class="example">
<pre class="example">divert(`1')
Diversion one: divnum
divert(`2')
Diversion two: divnum
divert(`-1')
undivert
^D
</pre></div>

<p>No output is produced at all.
</p>
<p>Clearing selected diversions can be done with the following macro:
</p>
<dl>
<dt id="index-cleardivert">Composite: <strong>cleardivert</strong> <em>(<span class="roman">[</span><var>diversions…</var><span class="roman">]</span>)</em></dt>
<dd><p>Discard the contents of each of the listed numeric <var>diversions</var>.
</p></dd></dl>

<div class="example">
<pre class="example">define(`cleardivert',
`pushdef(`_n', divnum)divert(`-1')undivert($@)divert(_n)popdef(`_n')')
⇒
</pre></div>

<p>It is called just like <code>undivert</code>, but the effect is to clear the
diversions, given by the arguments.  (This macro has a nasty bug!  You
should try to see if you can find it and correct it; or see <a href="#Improved-cleardivert">Answers</a>).
</p>
<hr>
<span id="Text-handling"></span><div class="header">
<p>
Next: <a href="#Arithmetic" accesskey="n" rel="next">Arithmetic</a>, Previous: <a href="#Diversions" accesskey="p" rel="prev">Diversions</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Macros-for-text-handling"></span><h2 class="chapter">11 Macros for text handling</h2>

<p>There are a number of builtins in <code>m4</code> for manipulating text in
various ways, extracting substrings, searching, substituting, and so on.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Len" accesskey="1">Len</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Calculating length of strings
</td></tr>
<tr><td valign="top" align="left">• <a href="#Index-macro" accesskey="2">Index macro</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Searching for substrings
</td></tr>
<tr><td valign="top" align="left">• <a href="#Regexp" accesskey="3">Regexp</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Searching for regular expressions
</td></tr>
<tr><td valign="top" align="left">• <a href="#Substr" accesskey="4">Substr</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Extracting substrings
</td></tr>
<tr><td valign="top" align="left">• <a href="#Translit" accesskey="5">Translit</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Translating characters
</td></tr>
<tr><td valign="top" align="left">• <a href="#Patsubst" accesskey="6">Patsubst</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Substituting text by regular expression
</td></tr>
<tr><td valign="top" align="left">• <a href="#Format" accesskey="7">Format</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Formatting strings (printf-like)
</td></tr>
</tbody></table>

<hr>
<span id="Len"></span><div class="header">
<p>
Next: <a href="#Index-macro" accesskey="n" rel="next">Index macro</a>, Up: <a href="#Text-handling" accesskey="u" rel="up">Text handling</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Calculating-length-of-strings"></span><h3 class="section">11.1 Calculating length of strings</h3>

<span id="index-length-of-strings"></span>
<span id="index-strings_002c-length-of"></span>
<p>The length of a string can be calculated by <code>len</code>:
</p>
<dl>
<dt id="index-len">Builtin: <strong>len</strong> <em>(<var>string</var>)</em></dt>
<dd><p>Expands to the length of <var>string</var>, as a decimal number.
</p>
<p>The macro <code>len</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">len()
⇒0
len(`abcdef')
⇒6
</pre></div>

<hr>
<span id="Index-macro"></span><div class="header">
<p>
Next: <a href="#Regexp" accesskey="n" rel="next">Regexp</a>, Previous: <a href="#Len" accesskey="p" rel="prev">Len</a>, Up: <a href="#Text-handling" accesskey="u" rel="up">Text handling</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Searching-for-substrings"></span><h3 class="section">11.2 Searching for substrings</h3>

<span id="index-substrings_002c-locating"></span>
<p>Searching for substrings is done with <code>index</code>:
</p>
<dl>
<dt id="index-index">Builtin: <strong>index</strong> <em>(<var>string</var>, <var>substring</var>)</em></dt>
<dd><p>Expands to the index of the first occurrence of <var>substring</var> in
<var>string</var>.  The first character in <var>string</var> has index 0.  If
<var>substring</var> does not occur in <var>string</var>, <code>index</code> expands to
‘<samp>-1</samp>’.
</p>
<p>The macro <code>index</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">index(`gnus, gnats, and armadillos', `nat')
⇒7
index(`gnus, gnats, and armadillos', `dag')
⇒-1
</pre></div>

<p>Omitting <var>substring</var> evokes a warning, but still produces output;
contrast this with an empty <var>substring</var>.
</p>
<div class="example">
<pre class="example">index(`abc')
error→m4:stdin:1: Warning: too few arguments to builtin `index'
⇒0
index(`abc', `')
⇒0
index(`abc', `b')
⇒1
</pre></div>


<hr>
<span id="Regexp"></span><div class="header">
<p>
Next: <a href="#Substr" accesskey="n" rel="next">Substr</a>, Previous: <a href="#Index-macro" accesskey="p" rel="prev">Index macro</a>, Up: <a href="#Text-handling" accesskey="u" rel="up">Text handling</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Searching-for-regular-expressions"></span><h3 class="section">11.3 Searching for regular expressions</h3>

<span id="index-basic-regular-expressions"></span>
<span id="index-regular-expressions-1"></span>
<span id="index-expressions_002c-regular"></span>
<span id="index-GNU-extensions-11"></span>
<p>Searching for regular expressions is done with the builtin
<code>regexp</code>:
</p>
<dl>
<dt id="index-regexp">Builtin: <strong>regexp</strong> <em>(<var>string</var>, <var>regexp</var>, <span class="roman">[</span><var>replacement</var><span class="roman">]</span>)</em></dt>
<dd><p>Searches for <var>regexp</var> in <var>string</var>.  The syntax for regular
expressions is the same as in GNU Emacs, which is similar to
BRE, Basic Regular Expressions in POSIX.
See
<a href="https://www.gnu.org/software/emacs/manual/emacs.html#Regexps">Syntax of Regular Expressions</a> in the GNU Emacs Manual.
Support for ERE, Extended Regular Expressions is not
available, but will be added in GNU M4 2.0.
</p>
<p>If <var>replacement</var> is omitted, <code>regexp</code> expands to the index of
the first match of <var>regexp</var> in <var>string</var>.  If <var>regexp</var> does
not match anywhere in <var>string</var>, it expands to -1.
</p>
<p>If <var>replacement</var> is supplied, and there was a match, <code>regexp</code>
changes the expansion to this argument, with ‘<samp>\<var>n</var></samp>’ substituted
by the text matched by the <var>n</var>th parenthesized sub-expression of
<var>regexp</var>, up to nine sub-expressions.  The escape ‘<samp>\&amp;</samp>’ is
replaced by the text of the entire regular expression matched.  For
all other characters, ‘<samp>\</samp>’ treats the next character literally.  A
warning is issued if there were fewer sub-expressions than the
‘<samp>\<var>n</var></samp>’ requested, or if there is a trailing ‘<samp>\</samp>’.  If there
was no match, <code>regexp</code> expands to the empty string.
</p>
<p>The macro <code>regexp</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">regexp(`GNUs not Unix', `\&lt;[a-z]\w+')
⇒5
regexp(`GNUs not Unix', `\&lt;Q\w*')
⇒-1
regexp(`GNUs not Unix', `\w\(\w+\)$', `*** \&amp; *** \1 ***')
⇒*** Unix *** nix ***
regexp(`GNUs not Unix', `\&lt;Q\w*', `*** \&amp; *** \1 ***')
⇒
</pre></div>

<p>Here are some more examples on the handling of backslash:
</p>
<div class="example">
<pre class="example">regexp(`abc', `\(b\)', `\\\10\a')
⇒\b0a
regexp(`abc', `b', `\1\')
error→m4:stdin:2: Warning: sub-expression 1 not present
error→m4:stdin:2: Warning: trailing \ ignored in replacement
⇒
regexp(`abc', `\(\(d\)?\)\(c\)', `\1\2\3\4\5\6')
error→m4:stdin:3: Warning: sub-expression 4 not present
error→m4:stdin:3: Warning: sub-expression 5 not present
error→m4:stdin:3: Warning: sub-expression 6 not present
⇒c
</pre></div>

<p>Omitting <var>regexp</var> evokes a warning, but still produces output;
contrast this with an empty <var>regexp</var> argument.
</p>
<div class="example">
<pre class="example">regexp(`abc')
error→m4:stdin:1: Warning: too few arguments to builtin `regexp'
⇒0
regexp(`abc', `')
⇒0
regexp(`abc', `', `\\def')
⇒\def
</pre></div>

<hr>
<span id="Substr"></span><div class="header">
<p>
Next: <a href="#Translit" accesskey="n" rel="next">Translit</a>, Previous: <a href="#Regexp" accesskey="p" rel="prev">Regexp</a>, Up: <a href="#Text-handling" accesskey="u" rel="up">Text handling</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Extracting-substrings"></span><h3 class="section">11.4 Extracting substrings</h3>

<span id="index-extracting-substrings"></span>
<span id="index-substrings_002c-extracting"></span>
<p>Substrings are extracted with <code>substr</code>:
</p>
<dl>
<dt id="index-substr">Builtin: <strong>substr</strong> <em>(<var>string</var>, <var>from</var>, <span class="roman">[</span><var>length</var><span class="roman">]</span>)</em></dt>
<dd><p>Expands to the substring of <var>string</var>, which starts at index
<var>from</var>, and extends for <var>length</var> characters, or to the end of
<var>string</var>, if <var>length</var> is omitted.  The starting index of a string
is always 0.  The expansion is empty if there is an error parsing
<var>from</var> or <var>length</var>, if <var>from</var> is beyond the end of
<var>string</var>, or if <var>length</var> is negative.
</p>
<p>The macro <code>substr</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">substr(`gnus, gnats, and armadillos', `6')
⇒gnats, and armadillos
substr(`gnus, gnats, and armadillos', `6', `5')
⇒gnats
</pre></div>

<p>Omitting <var>from</var> evokes a warning, but still produces output.
</p>
<div class="example">
<pre class="example">substr(`abc')
error→m4:stdin:1: Warning: too few arguments to builtin `substr'
⇒abc
substr(`abc',)
error→m4:stdin:2: empty string treated as 0 in builtin `substr'
⇒abc
</pre></div>

<hr>
<span id="Translit"></span><div class="header">
<p>
Next: <a href="#Patsubst" accesskey="n" rel="next">Patsubst</a>, Previous: <a href="#Substr" accesskey="p" rel="prev">Substr</a>, Up: <a href="#Text-handling" accesskey="u" rel="up">Text handling</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Translating-characters"></span><h3 class="section">11.5 Translating characters</h3>

<span id="index-translating-characters"></span>
<span id="index-characters_002c-translating"></span>
<p>Character translation is done with <code>translit</code>:
</p>
<dl>
<dt id="index-translit">Builtin: <strong>translit</strong> <em>(<var>string</var>, <var>chars</var>, <span class="roman">[</span><var>replacement</var><span class="roman">]</span>)</em></dt>
<dd><p>Expands to <var>string</var>, with each character that occurs in
<var>chars</var> translated into the character from <var>replacement</var> with
the same index.
</p>
<p>If <var>replacement</var> is shorter than <var>chars</var>, the excess characters
of <var>chars</var> are deleted from the expansion; if <var>chars</var> is
shorter, the excess characters in <var>replacement</var> are silently
ignored.  If <var>replacement</var> is omitted, all characters in
<var>string</var> that are present in <var>chars</var> are deleted from the
expansion.  If a character appears more than once in <var>chars</var>, only
the first instance is used in making the translation.  Only a single
translation pass is made, even if characters in <var>replacement</var> also
appear in <var>chars</var>.
</p>
<p>As a GNU extension, both <var>chars</var> and <var>replacement</var> can
contain character-ranges, e.g., ‘<samp>a-z</samp>’ (meaning all lowercase
letters) or ‘<samp>0-9</samp>’ (meaning all digits).  To include a dash ‘<samp>-</samp>’
in <var>chars</var> or <var>replacement</var>, place it first or last in the
entire string, or as the last character of a range.  Back-to-back ranges
can share a common endpoint.  It is not an error for the last character
in the range to be ‘larger’ than the first.  In that case, the range
runs backwards, i.e., ‘<samp>9-0</samp>’ means the string ‘<samp>9876543210</samp>’.
The expansion of a range is dependent on the underlying encoding of
characters, so using ranges is not always portable between machines.
</p>
<p>The macro <code>translit</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">translit(`GNUs not Unix', `A-Z')
⇒s not nix
translit(`GNUs not Unix', `a-z', `A-Z')
⇒GNUS NOT UNIX
translit(`GNUs not Unix', `A-Z', `z-a')
⇒tmfs not fnix
translit(`+,-12345', `+--1-5', `&lt;;&gt;a-c-a')
⇒&lt;;&gt;abcba
translit(`abcdef', `aabdef', `bcged')
⇒bgced
</pre></div>

<p>In the <small>ASCII</small> encoding, the first example deletes all uppercase
letters, the second converts lowercase to uppercase, and the third
‘mirrors’ all uppercase letters, while converting them to lowercase.
The two first cases are by far the most common, even though they are not
portable to <small>EBCDIC</small> or other encodings.  The fourth example shows a
range ending in ‘<samp>-</samp>’, as well as back-to-back ranges.  The final
example shows that ‘<samp>a</samp>’ is mapped to ‘<samp>b</samp>’, not ‘<samp>c</samp>’; the
resulting ‘<samp>b</samp>’ is not further remapped to ‘<samp>g</samp>’; the ‘<samp>d</samp>’ and
‘<samp>e</samp>’ are swapped, and the ‘<samp>f</samp>’ is discarded.
</p>

<p>Omitting <var>chars</var> evokes a warning, but still produces output.
</p>
<div class="example">
<pre class="example">translit(`abc')
error→m4:stdin:1: Warning: too few arguments to builtin `translit'
⇒abc
</pre></div>

<hr>
<span id="Patsubst"></span><div class="header">
<p>
Next: <a href="#Format" accesskey="n" rel="next">Format</a>, Previous: <a href="#Translit" accesskey="p" rel="prev">Translit</a>, Up: <a href="#Text-handling" accesskey="u" rel="up">Text handling</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Substituting-text-by-regular-expression"></span><h3 class="section">11.6 Substituting text by regular expression</h3>

<span id="index-basic-regular-expressions-1"></span>
<span id="index-regular-expressions-2"></span>
<span id="index-expressions_002c-regular-1"></span>
<span id="index-pattern-substitution"></span>
<span id="index-substitution-by-regular-expression"></span>
<span id="index-GNU-extensions-12"></span>
<p>Global substitution in a string is done by <code>patsubst</code>:
</p>
<dl>
<dt id="index-patsubst">Builtin: <strong>patsubst</strong> <em>(<var>string</var>, <var>regexp</var>, <span class="roman">[</span><var>replacement</var><span class="roman">]</span>)</em></dt>
<dd><p>Searches <var>string</var> for matches of <var>regexp</var>, and substitutes
<var>replacement</var> for each match.  The syntax for regular expressions
is the same as in GNU Emacs (see <a href="#Regexp">Regexp</a>).
</p>
<p>The parts of <var>string</var> that are not covered by any match of
<var>regexp</var> are copied to the expansion.  Whenever a match is found, the
search proceeds from the end of the match, so a character from
<var>string</var> will never be substituted twice.  If <var>regexp</var> matches a
string of zero length, the start position for the search is incremented,
to avoid infinite loops.
</p>
<p>When a replacement is to be made, <var>replacement</var> is inserted into
the expansion, with ‘<samp>\<var>n</var></samp>’ substituted by the text matched by
the <var>n</var>th parenthesized sub-expression of <var>patsubst</var>, for up to
nine sub-expressions.  The escape ‘<samp>\&amp;</samp>’ is replaced by the text of
the entire regular expression matched.  For all other characters,
‘<samp>\</samp>’ treats the next character literally.  A warning is issued if
there were fewer sub-expressions than the ‘<samp>\<var>n</var></samp>’ requested, or
if there is a trailing ‘<samp>\</samp>’.
</p>
<p>The <var>replacement</var> argument can be omitted, in which case the text
matched by <var>regexp</var> is deleted.
</p>
<p>The macro <code>patsubst</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">patsubst(`GNUs not Unix', `^', `OBS: ')
⇒OBS: GNUs not Unix
patsubst(`GNUs not Unix', `\&lt;', `OBS: ')
⇒OBS: GNUs OBS: not OBS: Unix
patsubst(`GNUs not Unix', `\w*', `(\&amp;)')
⇒(GNUs)() (not)() (Unix)()
patsubst(`GNUs not Unix', `\w+', `(\&amp;)')
⇒(GNUs) (not) (Unix)
patsubst(`GNUs not Unix', `[A-Z][a-z]+')
⇒GN not <!-- /@w -->
patsubst(`GNUs not Unix', `not', `NOT\')
error→m4:stdin:6: Warning: trailing \ ignored in replacement
⇒GNUs NOT Unix
</pre></div>

<p>Here is a slightly more realistic example, which capitalizes individual
words or whole sentences, by substituting calls of the macros
<code>upcase</code> and <code>downcase</code> into the strings.
</p>
<dl>
<dt id="index-upcase">Composite: <strong>upcase</strong> <em>(<var>text</var>)</em></dt>
<dt id="index-downcase">Composite: <strong>downcase</strong> <em>(<var>text</var>)</em></dt>
<dt id="index-capitalize">Composite: <strong>capitalize</strong> <em>(<var>text</var>)</em></dt>
<dd><p>Expand to <var>text</var>, but with capitalization changed: <code>upcase</code>
changes all letters to upper case, <code>downcase</code> changes all letters
to lower case, and <code>capitalize</code> changes the first character of each
word to upper case and the remaining characters to lower case.
</p></dd></dl>

<p>First, an example of their usage, using implementations distributed in
<samp>m4-1.4.19/examples/capitalize.m4</samp>.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`capitalize.m4')
⇒
upcase(`GNUs not Unix')
⇒GNUS NOT UNIX
downcase(`GNUs not Unix')
⇒gnus not unix
capitalize(`GNUs not Unix')
⇒Gnus Not Unix
</pre></div>

<p>Now for the implementation.  There is a helper macro <code>_capitalize</code>
which puts only its first word in mixed case.  Then <code>capitalize</code>
merely parses out the words, and replaces them with an invocation of
<code>_capitalize</code>.  (As presented here, the <code>capitalize</code> macro has
some subtle flaws.  You should try to see if you can find and correct
them; or see <a href="#Improved-capitalize">Answers</a>).
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
undivert(`capitalize.m4')dnl
⇒divert(`-1')
⇒# upcase(text)
⇒# downcase(text)
⇒# capitalize(text)
⇒#   change case of text, simple version
⇒define(`upcase', `translit(`$*', `a-z', `A-Z')')
⇒define(`downcase', `translit(`$*', `A-Z', `a-z')')
⇒define(`_capitalize',
⇒       `regexp(`$1', `^\(\w\)\(\w*\)',
⇒               `upcase(`\1')`'downcase(`\2')')')
⇒define(`capitalize', `patsubst(`$1', `\w+', `_$0(`\&amp;')')')
⇒divert`'dnl
</pre></div>

<p>While <code>regexp</code> replaces the whole input with the replacement as
soon as there is a match, <code>patsubst</code> replaces each
<em>occurrence</em> of a match and preserves non-matching pieces:
</p>
<div class="example">
<pre class="example">define(`patreg',
`patsubst($@)
regexp($@)')dnl
patreg(`bar foo baz Foo', `foo\|Foo', `FOO')
⇒bar FOO baz FOO
⇒FOO
patreg(`aba abb 121', `\(.\)\(.\)\1', `\2\1\2')
⇒bab abb 212
⇒bab
</pre></div>

<p>Omitting <var>regexp</var> evokes a warning, but still produces output;
contrast this with an empty <var>regexp</var> argument.
</p>
<div class="example">
<pre class="example">patsubst(`abc')
error→m4:stdin:1: Warning: too few arguments to builtin `patsubst'
⇒abc
patsubst(`abc', `')
⇒abc
patsubst(`abc', `', `\\-')
⇒\-a\-b\-c\-
</pre></div>

<hr>
<span id="Format"></span><div class="header">
<p>
Previous: <a href="#Patsubst" accesskey="p" rel="prev">Patsubst</a>, Up: <a href="#Text-handling" accesskey="u" rel="up">Text handling</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Formatting-strings-_0028printf_002dlike_0029"></span><h3 class="section">11.7 Formatting strings (printf-like)</h3>

<span id="index-formatted-output"></span>
<span id="index-output_002c-formatted"></span>
<span id="index-GNU-extensions-13"></span>
<p>Formatted output can be made with <code>format</code>:
</p>
<dl>
<dt id="index-format">Builtin: <strong>format</strong> <em>(<var>format-string</var>, …)</em></dt>
<dd><p>Works much like the C function <code>printf</code>.  The first argument
<var>format-string</var> can contain ‘<samp>%</samp>’ specifications which are
satisfied by additional arguments, and the expansion of <code>format</code> is
the formatted string.
</p>
<p>The macro <code>format</code> is recognized only with parameters.
</p></dd></dl>

<p>Its use is best described by a few examples:
</p>
<div class="example">
<pre class="example">define(`foo', `The brown fox jumped over the lazy dog')
⇒
format(`The string "%s" uses %d characters', foo, len(foo))
⇒The string "The brown fox jumped over the lazy dog" uses 38 characters
format(`%*.*d', `-1', `-1', `1')
⇒1
format(`%.0f', `56789.9876')
⇒56790
len(format(`%-*X', `5000', `1'))
⇒5000
ifelse(format(`%010F', `infinity'), `       INF', `success',
       format(`%010F', `infinity'), `  INFINITY', `success',
       format(`%010F', `infinity'))
⇒success
ifelse(format(`%.1A', `1.999'), `0X1.0P+1', `success',
       format(`%.1A', `1.999'), `0X2.0P+0', `success',
       format(`%.1A', `1.999'))
⇒success
format(`%g', `0xa.P+1')
⇒20
</pre></div>

<p>Using the <code>forloop</code> macro defined earlier (see <a href="#Forloop">Forloop</a>), this
example shows how <code>format</code> can be used to produce tabular output.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`forloop.m4')
⇒
forloop(`i', `1', `10', `format(`%6d squared is %10d
', i, eval(i**2))')
⇒     1 squared is          1
⇒     2 squared is          4
⇒     3 squared is          9
⇒     4 squared is         16
⇒     5 squared is         25
⇒     6 squared is         36
⇒     7 squared is         49
⇒     8 squared is         64
⇒     9 squared is         81
⇒    10 squared is        100
⇒
</pre></div>

<p>The builtin <code>format</code> is modeled after the ANSI C ‘<samp>printf</samp>’
function, and supports these ‘<samp>%</samp>’ specifiers: ‘<samp>c</samp>’, ‘<samp>s</samp>’,
‘<samp>d</samp>’, ‘<samp>o</samp>’, ‘<samp>x</samp>’, ‘<samp>X</samp>’, ‘<samp>u</samp>’, ‘<samp>a</samp>’, ‘<samp>A</samp>’,
‘<samp>e</samp>’, ‘<samp>E</samp>’, ‘<samp>f</samp>’, ‘<samp>F</samp>’, ‘<samp>g</samp>’, ‘<samp>G</samp>’, and
‘<samp>%</samp>’; it supports field widths and precisions, and the flags
‘<samp>+</samp>’, ‘<samp>-</samp>’, ‘<samp> </samp>’, ‘<samp>0</samp>’, ‘<samp>#</samp>’, and ‘<samp>'</samp>’.  For
integer specifiers, the width modifiers ‘<samp>hh</samp>’, ‘<samp>h</samp>’, and
‘<samp>l</samp>’ are recognized, and for floating point specifiers, the width
modifier ‘<samp>l</samp>’ is recognized.  Items not yet supported include
positional arguments, the ‘<samp>n</samp>’, ‘<samp>p</samp>’, ‘<samp>S</samp>’, and ‘<samp>C</samp>’
specifiers, the ‘<samp>z</samp>’, ‘<samp>t</samp>’, ‘<samp>j</samp>’, ‘<samp>L</samp>’ and ‘<samp>ll</samp>’
modifiers, and any platform extensions available in the native
<code>printf</code>.  For more details on the functioning of <code>printf</code>,
see the C Library Manual, or the POSIX specification (for
example, ‘<samp>%a</samp>’ is supported even on platforms that haven’t yet
implemented C99 hexadecimal floating point output natively).
</p>
<p>Unrecognized specifiers result in a warning.  It is anticipated that a
future release of GNU <code>m4</code> will support more specifiers,
and give better warnings when various problems such as overflow are
encountered.  Likewise, escape sequences are not yet recognized.
</p>
<div class="example">
<pre class="example">format(`%p', `0')
error→m4:stdin:1: Warning: unrecognized specifier in `%p'
⇒
</pre></div>


<hr>
<span id="Arithmetic"></span><div class="header">
<p>
Next: <a href="#Shell-commands" accesskey="n" rel="next">Shell commands</a>, Previous: <a href="#Text-handling" accesskey="p" rel="prev">Text handling</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Macros-for-doing-arithmetic"></span><h2 class="chapter">12 Macros for doing arithmetic</h2>

<span id="index-arithmetic"></span>
<span id="index-integer-arithmetic"></span>
<p>Integer arithmetic is included in <code>m4</code>, with a C-like syntax.  As
convenient shorthands, there are builtins for simple increment and
decrement operations.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Incr" accesskey="1">Incr</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Decrement and increment operators
</td></tr>
<tr><td valign="top" align="left">• <a href="#Eval" accesskey="2">Eval</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Evaluating integer expressions
</td></tr>
</tbody></table>

<hr>
<span id="Incr"></span><div class="header">
<p>
Next: <a href="#Eval" accesskey="n" rel="next">Eval</a>, Up: <a href="#Arithmetic" accesskey="u" rel="up">Arithmetic</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Decrement-and-increment-operators"></span><h3 class="section">12.1 Decrement and increment operators</h3>

<span id="index-decrement-operator"></span>
<span id="index-increment-operator"></span>
<p>Increment and decrement of integers are supported using the builtins
<code>incr</code> and <code>decr</code>:
</p>
<dl>
<dt id="index-incr">Builtin: <strong>incr</strong> <em>(<var>number</var>)</em></dt>
<dt id="index-decr">Builtin: <strong>decr</strong> <em>(<var>number</var>)</em></dt>
<dd><p>Expand to the numerical value of <var>number</var>, incremented
or decremented, respectively, by one.  Except for the empty string, the
expansion is empty if <var>number</var> could not be parsed.
</p>
<p>The macros <code>incr</code> and <code>decr</code> are recognized only with
parameters.
</p></dd></dl>

<div class="example">
<pre class="example">incr(`4')
⇒5
decr(`7')
⇒6
incr()
error→m4:stdin:3: empty string treated as 0 in builtin `incr'
⇒1
decr()
error→m4:stdin:4: empty string treated as 0 in builtin `decr'
⇒-1
</pre></div>

<hr>
<span id="Eval"></span><div class="header">
<p>
Previous: <a href="#Incr" accesskey="p" rel="prev">Incr</a>, Up: <a href="#Arithmetic" accesskey="u" rel="up">Arithmetic</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Evaluating-integer-expressions"></span><h3 class="section">12.2 Evaluating integer expressions</h3>

<span id="index-integer-expression-evaluation"></span>
<span id="index-evaluation_002c-of-integer-expressions"></span>
<span id="index-expressions_002c-evaluation-of-integer"></span>
<p>Integer expressions are evaluated with <code>eval</code>:
</p>
<dl>
<dt id="index-eval">Builtin: <strong>eval</strong> <em>(<var>expression</var>, <span class="roman">[</span><var>radix</var> = ‘<samp>10</samp>’<span class="roman">]</span>, <span class="roman">[</span><var>width</var><span class="roman">]</span>)</em></dt>
<dd><p>Expands to the value of <var>expression</var>.  The expansion is empty
if a problem is encountered while parsing the arguments.  If specified,
<var>radix</var> and <var>width</var> control the format of the output.
</p>
<p>Calculations are done with 32-bit signed numbers.  Overflow silently
results in wraparound.  A warning is issued if division by zero is
attempted, or if <var>expression</var> could not be parsed.
</p>
<p>Expressions can contain the following operators, listed in order of
decreasing precedence.
</p>
<dl compact="compact">
<dt>‘<samp>()</samp>’</dt>
<dd><p>Parentheses
</p></dd>
<dt>‘<samp>+  -  ~  !</samp>’</dt>
<dd><p>Unary plus and minus, and bitwise and logical negation
</p></dd>
<dt>‘<samp>**</samp>’</dt>
<dd><p>Exponentiation
</p></dd>
<dt>‘<samp>*  /  %</samp>’</dt>
<dd><p>Multiplication, division, and modulo
</p></dd>
<dt>‘<samp>+  -</samp>’</dt>
<dd><p>Addition and subtraction
</p></dd>
<dt>‘<samp>&lt;&lt;  &gt;&gt;</samp>’</dt>
<dd><p>Shift left or right
</p></dd>
<dt>‘<samp>&gt;  &gt;=  &lt;  &lt;=</samp>’</dt>
<dd><p>Relational operators
</p></dd>
<dt>‘<samp>==  !=</samp>’</dt>
<dd><p>Equality operators
</p></dd>
<dt>‘<samp>&amp;</samp>’</dt>
<dd><p>Bitwise and
</p></dd>
<dt>‘<samp>^</samp>’</dt>
<dd><p>Bitwise exclusive-or
</p></dd>
<dt>‘<samp>|</samp>’</dt>
<dd><p>Bitwise or
</p></dd>
<dt>‘<samp>&amp;&amp;</samp>’</dt>
<dd><p>Logical and
</p></dd>
<dt>‘<samp>||</samp>’</dt>
<dd><p>Logical or
</p></dd>
</dl>

<p>The macro <code>eval</code> is recognized only with parameters.
</p></dd></dl>

<p>All binary operators, except exponentiation, are left associative.  C
operators that perform variable assignment, such as ‘<samp>+=</samp>’ or
‘<samp>--</samp>’, are not implemented, since <code>eval</code> only operates on
constants, not variables.  Attempting to use them results in an error.
However, since traditional implementations treated ‘<samp>=</samp>’ as an
undocumented alias for ‘<samp>==</samp>’ as opposed to an assignment operator,
this usage is supported as a special case.  Be aware that a future
version of GNU M4 may support assignment semantics as an
extension when POSIX mode is not requested, and that using
‘<samp>=</samp>’ to check equality is not portable.
</p>
<div class="example">
<pre class="example">eval(`2 = 2')
error→m4:stdin:1: Warning: recommend ==, not =, for equality operator
⇒1
eval(`++0')
error→m4:stdin:2: invalid operator in eval: ++0
⇒
eval(`0 |= 1')
error→m4:stdin:3: invalid operator in eval: 0 |= 1
⇒
</pre></div>

<p>Note that some older <code>m4</code> implementations use ‘<samp>^</samp>’ as an
alternate operator for the exponentiation, although POSIX
requires the C behavior of bitwise exclusive-or.  The precedence of the
negation operators, ‘<samp>~</samp>’ and ‘<samp>!</samp>’, was traditionally lower than
equality.  The unary operators could not be used reliably more than once
on the same term without intervening parentheses.  The traditional
precedence of the equality operators ‘<samp>==</samp>’ and ‘<samp>!=</samp>’ was
identical instead of lower than the relational operators such as
‘<samp>&lt;</samp>’, even through GNU M4 1.4.8.  Starting with version
1.4.9, GNU M4 correctly follows POSIX precedence
rules.  M4 scripts designed to be portable between releases must be
aware that parentheses may be required to enforce C precedence rules.
Likewise, division by zero, even in the unused branch of a
short-circuiting operator, is not always well-defined in other
implementations.
</p>
<p>Following are some examples where the current version of M4 follows C
precedence rules, but where older versions and some other
implementations of <code>m4</code> require explicit parentheses to get the
correct result:
</p>
<div class="example">
<pre class="example">eval(`1 == 2 &gt; 0')
⇒1
eval(`(1 == 2) &gt; 0')
⇒0
eval(`! 0 * 2')
⇒2
eval(`! (0 * 2)')
⇒1
eval(`1 | 1 ^ 1')
⇒1
eval(`(1 | 1) ^ 1')
⇒0
eval(`+ + - ~ ! ~ 0')
⇒1
eval(`2 || 1 / 0')
⇒1
eval(`0 || 1 / 0')
error→m4:stdin:9: divide by zero in eval: 0 || 1 / 0
⇒
eval(`0 &amp;&amp; 1 % 0')
⇒0
eval(`2 &amp;&amp; 1 % 0')
error→m4:stdin:11: modulo by zero in eval: 2 &amp;&amp; 1 % 0
⇒
</pre></div>

<span id="index-GNU-extensions-14"></span>
<p>As a GNU extension, the operator ‘<samp>**</samp>’ performs integral
exponentiation.  The operator is right-associative, and if evaluated,
the exponent must be non-negative, and at least one of the arguments
must be non-zero, or a warning is issued.
</p>
<div class="example">
<pre class="example">eval(`2 ** 3 ** 2')
⇒512
eval(`(2 ** 3) ** 2')
⇒64
eval(`0 ** 1')
⇒0
eval(`2 ** 0')
⇒1
eval(`0 ** 0')
⇒
error→m4:stdin:5: divide by zero in eval: 0 ** 0
eval(`4 ** -2')
error→m4:stdin:6: negative exponent in eval: 4 ** -2
⇒
</pre></div>

<p>Within <var>expression</var>, (but not <var>radix</var> or <var>width</var>), numbers
without a special prefix are decimal.  A simple ‘<samp>0</samp>’ prefix
introduces an octal number.  ‘<samp>0x</samp>’ introduces a hexadecimal number.
As GNU extensions, ‘<samp>0b</samp>’ introduces a binary number.
‘<samp>0r</samp>’ introduces a number expressed in any radix between 1 and 36:
the prefix should be immediately followed by the decimal expression of
the radix, a colon, then the digits making the number.  For radix 1,
leading zeros are ignored, and all remaining digits must be ‘<samp>1</samp>’;
for all other radices, the digits are ‘<samp>0</samp>’, ‘<samp>1</samp>’, ‘<samp>2</samp>’,
….  Beyond ‘<samp>9</samp>’, the digits are ‘<samp>a</samp>’, ‘<samp>b</samp>’ … up
to ‘<samp>z</samp>’.  Lower and upper case letters can be used interchangeably
in numbers prefixes and as number digits.
</p>
<p>Parentheses may be used to group subexpressions whenever needed.  For the
relational operators, a true relation returns <code>1</code>, and a false
relation return <code>0</code>.
</p>
<p>Here are a few examples of use of <code>eval</code>.
</p>
<div class="example">
<pre class="example">eval(`-3 * 5')
⇒-15
eval(`-99 / 10')
⇒-9
eval(`-99 % 10')
⇒-9
eval(`99 % -10')
⇒9
eval(index(`Hello world', `llo') &gt;= 0)
⇒1
eval(`0r1:0111 + 0b100 + 0r3:12')
⇒12
define(`square', `eval(`($1) ** 2')')
⇒
square(`9')
⇒81
square(square(`5')` + 1')
⇒676
define(`foo', `666')
⇒
eval(`foo / 6')
error→m4:stdin:11: bad expression in eval: foo / 6
⇒
eval(foo / 6)
⇒111
</pre></div>

<p>As the last two lines show, <code>eval</code> does not handle macro
names, even if they expand to a valid expression (or part of a valid
expression).  Therefore all macros must be expanded before they are
passed to <code>eval</code>.
</p>
<p>Some calculations are not portable to other implementations, since they
have undefined semantics in C, but GNU <code>m4</code> has
well-defined behavior on overflow.  When shifting, an out-of-range shift
amount is implicitly brought into the range of 32-bit signed integers
using an implicit bit-wise and with 0x1f).
</p>
<div class="example">
<pre class="example">define(`max_int', eval(`0x7fffffff'))
⇒
define(`min_int', incr(max_int))
⇒
eval(min_int` &lt; 0')
⇒1
eval(max_int` &gt; 0')
⇒1
ifelse(eval(min_int` / -1'), min_int, `overflow occurred')
⇒overflow occurred
min_int
⇒-2147483648
eval(`0x80000000 % -1')
⇒0
eval(`-4 &gt;&gt; 1')
⇒-2
eval(`-4 &gt;&gt; 33')
⇒-2
</pre></div>

<p>If <var>radix</var> is specified, it specifies the radix to be used in the
expansion.  The default radix is 10; this is also the case if
<var>radix</var> is the empty string.  A warning results if the radix is
outside the range of 1 through 36, inclusive.  The result of <code>eval</code>
is always taken to be signed.  No radix prefix is output, and for
radices greater than 10, the digits are lower case.  The <var>width</var>
argument specifies the minimum output width, excluding any negative
sign.  The result is zero-padded to extend the expansion to the
requested width.  A warning results if the width is negative.  If
<var>radix</var> or <var>width</var> is out of bounds, the expansion of
<code>eval</code> is empty.
</p>
<div class="example">
<pre class="example">eval(`666', `10')
⇒666
eval(`666', `11')
⇒556
eval(`666', `6')
⇒3030
eval(`666', `6', `10')
⇒0000003030
eval(`-666', `6', `10')
⇒-0000003030
eval(`10', `', `0')
⇒10
`0r1:'eval(`10', `1', `11')
⇒0r1:01111111111
eval(`10', `16')
⇒a
eval(`1', `37')
error→m4:stdin:9: radix 37 in builtin `eval' out of range
⇒
eval(`1', , `-1')
error→m4:stdin:10: negative width to builtin `eval'
⇒
eval()
error→m4:stdin:11: empty string treated as 0 in builtin `eval'
⇒0
</pre></div>

<hr>
<span id="Shell-commands"></span><div class="header">
<p>
Next: <a href="#Miscellaneous" accesskey="n" rel="next">Miscellaneous</a>, Previous: <a href="#Arithmetic" accesskey="p" rel="prev">Arithmetic</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Macros-for-running-shell-commands"></span><h2 class="chapter">13 Macros for running shell commands</h2>

<span id="index-UNIX-commands_002c-running"></span>
<span id="index-executing-shell-commands"></span>
<span id="index-running-shell-commands"></span>
<span id="index-shell-commands_002c-running"></span>
<span id="index-commands_002c-running-shell"></span>
<p>There are a few builtin macros in <code>m4</code> that allow you to run shell
commands from within <code>m4</code>.
</p>
<p>Note that the definition of a valid shell command is system dependent.
On UNIX systems, this is the typical <code>/bin/sh</code>.  But on other
systems, such as native Windows, the shell has a different syntax of
commands that it understands.  Some examples in this chapter assume
<code>/bin/sh</code>, and also demonstrate how to quit early with a known
exit value if this is not the case.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Platform-macros" accesskey="1">Platform macros</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Determining the platform
</td></tr>
<tr><td valign="top" align="left">• <a href="#Syscmd" accesskey="2">Syscmd</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Executing simple commands
</td></tr>
<tr><td valign="top" align="left">• <a href="#Esyscmd" accesskey="3">Esyscmd</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Reading the output of commands
</td></tr>
<tr><td valign="top" align="left">• <a href="#Sysval" accesskey="4">Sysval</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Exit status
</td></tr>
<tr><td valign="top" align="left">• <a href="#Mkstemp" accesskey="5">Mkstemp</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Making temporary files
</td></tr>
</tbody></table>

<hr>
<span id="Platform-macros"></span><div class="header">
<p>
Next: <a href="#Syscmd" accesskey="n" rel="next">Syscmd</a>, Up: <a href="#Shell-commands" accesskey="u" rel="up">Shell commands</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Determining-the-platform"></span><h3 class="section">13.1 Determining the platform</h3>

<span id="index-platform-macros"></span>
<p>Sometimes it is desirable for an input file to know which platform
<code>m4</code> is running on.  GNU <code>m4</code> provides several
macros that are predefined to expand to the empty string; checking for
their existence will confirm platform details.
</p>
<dl>
<dt id="index-_005f_005fgnu_005f_005f">Optional builtin: <strong>__gnu__</strong></dt>
<dt id="index-_005f_005fos2_005f_005f">Optional builtin: <strong>__os2__</strong></dt>
<dt id="index-os2">Optional builtin: <strong>os2</strong></dt>
<dt id="index-_005f_005funix_005f_005f">Optional builtin: <strong>__unix__</strong></dt>
<dt id="index-unix">Optional builtin: <strong>unix</strong></dt>
<dt id="index-_005f_005fwindows_005f_005f">Optional builtin: <strong>__windows__</strong></dt>
<dt id="index-windows">Optional builtin: <strong>windows</strong></dt>
<dd><p>Each of these macros is conditionally defined as needed to describe the
environment of <code>m4</code>.  If defined, each macro expands to the empty
string.  For now, these macros silently ignore all arguments, but in a
future release of M4, they might warn if arguments are present.
</p></dd></dl>

<p>When GNU extensions are in effect (that is, when you did not
use the <samp>-G</samp> option, see <a href="#Limits-control">Invoking m4</a>),
GNU <code>m4</code> will define the macro <code><span class="nolinebreak">__gnu__</span><!-- /@w --></code> to
expand to the empty string.
</p>
<div class="example">
<pre class="example">$ <kbd>m4</kbd>
__gnu__
⇒
__gnu__(`ignored')
⇒
Extensions are ifdef(`__gnu__', `active', `inactive')
⇒Extensions are active
</pre></div>

<div class="example">
<pre class="example">$ <kbd>m4 -G</kbd>
__gnu__
⇒__gnu__
__gnu__(`ignored')
⇒__gnu__(ignored)
Extensions are ifdef(`__gnu__', `active', `inactive')
⇒Extensions are inactive
</pre></div>

<p>On UNIX systems, GNU <code>m4</code> will define <code><span class="nolinebreak">__unix__</span><!-- /@w --></code>
by default, or <code>unix</code> when the <samp>-G</samp> option is specified.
</p>
<p>On native Windows systems, GNU <code>m4</code> will define
<code><span class="nolinebreak">__windows__</span><!-- /@w --></code> by default, or <code>windows</code> when the
<samp>-G</samp> option is specified.
</p>
<p>On OS/2 systems, GNU <code>m4</code> will define <code><span class="nolinebreak">__os2__</span><!-- /@w --></code>
by default, or <code>os2</code> when the <samp>-G</samp> option is specified.
</p>
<p>If GNU <code>m4</code> does not provide a platform macro for your system,
please report that as a bug.
</p>
<div class="example">
<pre class="example">define(`provided', `0')
⇒
ifdef(`__unix__', `define(`provided', incr(provided))')
⇒
ifdef(`__windows__', `define(`provided', incr(provided))')
⇒
ifdef(`__os2__', `define(`provided', incr(provided))')
⇒
provided
⇒1
</pre></div>

<hr>
<span id="Syscmd"></span><div class="header">
<p>
Next: <a href="#Esyscmd" accesskey="n" rel="next">Esyscmd</a>, Previous: <a href="#Platform-macros" accesskey="p" rel="prev">Platform macros</a>, Up: <a href="#Shell-commands" accesskey="u" rel="up">Shell commands</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Executing-simple-commands"></span><h3 class="section">13.2 Executing simple commands</h3>

<p>Any shell command can be executed, using <code>syscmd</code>:
</p>
<dl>
<dt id="index-syscmd">Builtin: <strong>syscmd</strong> <em>(<var>shell-command</var>)</em></dt>
<dd><p>Executes <var>shell-command</var> as a shell command.
</p>
<p>The expansion of <code>syscmd</code> is void, <em>not</em> the output from
<var>shell-command</var>!  Output or error messages from <var>shell-command</var>
are not read by <code>m4</code>.  See <a href="#Esyscmd">Esyscmd</a>, if you need to process the
command output.
</p>
<p>Prior to executing the command, <code>m4</code> flushes its buffers.
The default standard input, output and error of <var>shell-command</var> are
the same as those of <code>m4</code>.
</p>
<p>By default, the <var>shell-command</var> will be used as the argument to the
<samp>-c</samp> option of the <code>/bin/sh</code> shell (or the version of
<code>sh</code> specified by ‘<samp>command -p getconf PATH</samp>’, if your system
supports that).  If you prefer a different shell, the
<code>configure</code> script can be given the option
<samp>--with-syscmd-shell=<var>location</var></samp> to set the location of an
alternative shell at GNU <code>m4</code> installation; the
alternative shell must still support <samp>-c</samp>.
</p>
<p>The macro <code>syscmd</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">define(`foo', `FOO')
⇒
syscmd(`echo foo')
⇒foo
⇒
</pre></div>

<p>Note how the expansion of <code>syscmd</code> keeps the trailing newline of
the command, as well as using the newline that appeared after the macro.
</p>
<p>The following is an example of <var>shell-command</var> using the same
standard input as <code>m4</code>:
</p>
<div class="example">
<pre class="example">$ <kbd>echo "m4wrap(\`syscmd(\`cat')')" | m4</kbd>
⇒
</pre></div>


<p>It tells <code>m4</code> to read all of its input before executing the wrapped
text, then hand a valid (albeit emptied) pipe as standard input for the
<code>cat</code> subcommand.  Therefore, you should be careful when using
standard input (either by specifying no files, or by passing ‘<samp>-</samp>’ as
a file name on the command line, see <a href="#Command-line-files">Invoking
m4</a>), and also invoking subcommands via <code>syscmd</code> or <code>esyscmd</code>
that consume data from standard input.  When standard input is a
seekable file, the subprocess will pick up with the next character not
yet processed by <code>m4</code>; when it is a pipe or other non-seekable
file, there is no guarantee how much data will already be buffered by
<code>m4</code> and thus unavailable to the child.
</p>
<hr>
<span id="Esyscmd"></span><div class="header">
<p>
Next: <a href="#Sysval" accesskey="n" rel="next">Sysval</a>, Previous: <a href="#Syscmd" accesskey="p" rel="prev">Syscmd</a>, Up: <a href="#Shell-commands" accesskey="u" rel="up">Shell commands</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Reading-the-output-of-commands"></span><h3 class="section">13.3 Reading the output of commands</h3>

<span id="index-GNU-extensions-15"></span>
<p>If you want <code>m4</code> to read the output of a shell command, use
<code>esyscmd</code>:
</p>
<dl>
<dt id="index-esyscmd">Builtin: <strong>esyscmd</strong> <em>(<var>shell-command</var>)</em></dt>
<dd><p>Expands to the standard output of the shell command
<var>shell-command</var>.
</p>
<p>Prior to executing the command, <code>m4</code> flushes its buffers.
The default standard input and standard error of <var>shell-command</var> are
the same as those of <code>m4</code>.  The error output of <var>shell-command</var>
is not a part of the expansion: it will appear along with the error
output of <code>m4</code>.
</p>
<p>By default, the <var>shell-command</var> will be used as the argument to the
<samp>-c</samp> option of the <code>/bin/sh</code> shell (or the version of
<code>sh</code> specified by ‘<samp>command -p getconf PATH</samp>’, if your system
supports that).  If you prefer a different shell, the
<code>configure</code> script can be given the option
<samp>--with-syscmd-shell=<var>location</var></samp> to set the location of an
alternative shell at GNU <code>m4</code> installation; the
alternative shell must still support <samp>-c</samp>.
</p>
<p>The macro <code>esyscmd</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">define(`foo', `FOO')
⇒
esyscmd(`echo foo')
⇒FOO
⇒
</pre></div>

<p>Note how the expansion of <code>esyscmd</code> keeps the trailing newline of
the command, as well as using the newline that appeared after the macro.
</p>
<p>Just as with <code>syscmd</code>, care must be exercised when sharing standard
input between <code>m4</code> and the child process of <code>esyscmd</code>.
</p>
<hr>
<span id="Sysval"></span><div class="header">
<p>
Next: <a href="#Mkstemp" accesskey="n" rel="next">Mkstemp</a>, Previous: <a href="#Esyscmd" accesskey="p" rel="prev">Esyscmd</a>, Up: <a href="#Shell-commands" accesskey="u" rel="up">Shell commands</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Exit-status"></span><h3 class="section">13.4 Exit status</h3>

<span id="index-UNIX-commands_002c-exit-status-from"></span>
<span id="index-exit-status-from-shell-commands"></span>
<span id="index-shell-commands_002c-exit-status-from"></span>
<span id="index-commands_002c-exit-status-from-shell"></span>
<span id="index-status-of-shell-commands"></span>
<p>To see whether a shell command succeeded, use <code>sysval</code>:
</p>
<dl>
<dt id="index-sysval">Builtin: <strong>sysval</strong></dt>
<dd><p>Expands to the exit status of the last shell command run with
<code>syscmd</code> or <code>esyscmd</code>.  Expands to 0 if no command has been
run yet.
</p></dd></dl>

<div class="example">
<pre class="example">sysval
⇒0
syscmd(`false')
⇒
ifelse(sysval, `0', `zero', `non-zero')
⇒non-zero
syscmd(`exit 2')
⇒
sysval
⇒2
syscmd(`true')
⇒
sysval
⇒0
esyscmd(`false')
⇒
ifelse(sysval, `0', `zero', `non-zero')
⇒non-zero
esyscmd(`echo dnl &amp;&amp; exit 127')
⇒
sysval
⇒127
esyscmd(`true')
⇒
sysval
⇒0
</pre></div>

<p><code>sysval</code> results in 127 if there was a problem executing the
command, for example, if the system-imposed argument length is exceeded,
or if there were not enough resources to fork.  It is not possible to
distinguish between failed execution and successful execution that had
an exit status of 127, unless there was output from the child process.
</p>
<p>On UNIX platforms, where it is possible to detect when command execution
is terminated by a signal, rather than a normal exit, the result is the
signal number shifted left by eight bits.
</p>
<div class="example">
<pre class="example">dnl This test assumes kill is a shell builtin, and that signals are
dnl recognizable.
ifdef(`__unix__', ,
      `errprint(` skipping: syscmd does not have unix semantics
')m4exit(`77')')dnl
changequote(`[', `]')
⇒
syscmd([/bin/sh -c 'kill -9 $$'; st=$?; test $st = 137 || test $st = 265])
⇒
ifelse(sysval, [0], , [errprint([ skipping: shell does not send signal 9
])m4exit([77])])dnl
syscmd([kill -9 $$])
⇒
sysval
⇒2304
syscmd()
⇒
sysval
⇒0
esyscmd([kill -9 $$])
⇒
sysval
⇒2304
</pre></div>

<hr>
<span id="Mkstemp"></span><div class="header">
<p>
Previous: <a href="#Sysval" accesskey="p" rel="prev">Sysval</a>, Up: <a href="#Shell-commands" accesskey="u" rel="up">Shell commands</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Making-temporary-files"></span><h3 class="section">13.5 Making temporary files</h3>

<span id="index-temporary-file-names"></span>
<span id="index-files_002c-names-of-temporary"></span>
<p>Commands specified to <code>syscmd</code> or <code>esyscmd</code> might need a
temporary file, for output or for some other purpose.  There is a
builtin macro, <code>mkstemp</code>, for making a temporary file:
</p>
<dl>
<dt id="index-mkstemp">Builtin: <strong>mkstemp</strong> <em>(<var>template</var>)</em></dt>
<dt id="index-maketemp">Builtin: <strong>maketemp</strong> <em>(<var>template</var>)</em></dt>
<dd><p>Expands to the quoted name of a new, empty file, made from the string
<var>template</var>, which should end with the string ‘<samp>XXXXXX</samp>’.  The six
‘<samp>X</samp>’ characters are then replaced with random characters matching
the regular expression ‘<samp>[a-zA-Z0-9._-]</samp>’, in order to make the file
name unique.  If fewer than six ‘<samp>X</samp>’ characters are found at the end
of <code>template</code>, the result will be longer than the template.  The
created file will have access permissions as if by <kbd>chmod =rw,go=</kbd>,
meaning that the current umask of the <code>m4</code> process is taken into
account, and at most only the current user can read and write the file.
</p>
<p>The traditional behavior, standardized by POSIX, is that
<code>maketemp</code> merely replaces the trailing ‘<samp>X</samp>’ with the process
id, without creating a file or quoting the expansion, and without
ensuring that the resulting
string is a unique file name.  In part, this means that using the same
<var>template</var> twice in the same input file will result in the same
expansion.  This behavior is a security hole, as it is very easy for
another process to guess the name that will be generated, and thus
interfere with a subsequent use of <code>syscmd</code> trying to manipulate
that file name.  Hence, POSIX has recommended that all new
implementations of <code>m4</code> provide the secure <code>mkstemp</code> builtin,
and that users of <code>m4</code> check for its existence.
</p>
<p>The expansion is void and an error issued if a temporary file could
not be created.
</p>
<p>The macros <code>mkstemp</code> and <code>maketemp</code> are recognized only with
parameters.
</p></dd></dl>

<p>If you try this next example, you will most likely get different output
for the two file names, since the replacement characters are randomly
chosen:
</p>
<div class="example">
<pre class="example">$ <kbd>m4</kbd>
define(`tmp', `oops')
⇒
maketemp(`/tmp/fooXXXXXX')
⇒/tmp/fooa07346
ifdef(`mkstemp', `define(`maketemp', defn(`mkstemp'))',
      `define(`mkstemp', defn(`maketemp'))dnl
errprint(`warning: potentially insecure maketemp implementation
')')
⇒
mkstemp(`doc')
⇒docQv83Uw
</pre></div>

<span id="index-GNU-extensions-16"></span>
<p>Unless you use the <samp>--traditional</samp> command line option (or
<samp>-G</samp>, see <a href="#Limits-control">Invoking m4</a>), the GNU
version of <code>maketemp</code> is secure.  This means that using the same
template to multiple calls will generate multiple files.  However, we
recommend that you use the new <code>mkstemp</code> macro, introduced in
GNU M4 1.4.8, which is secure even in traditional mode.  Also,
as of M4 1.4.11, the secure implementation quotes the resulting file
name, so that you are guaranteed to know what file was created even if
the random file name happens to match an existing macro.  Notice that
this example is careful to use <code>defn</code> to avoid unintended expansion
of ‘<samp>foo</samp>’.
</p>
<div class="example">
<pre class="example">$ <kbd>m4</kbd>
define(`foo', `errprint(`oops')')
⇒
syscmd(`rm -f foo-??????')sysval
⇒0
define(`file1', maketemp(`foo-XXXXXX'))dnl
ifelse(esyscmd(`echo \` foo-?????? \''), ` foo-?????? ',
       `no file', `created')
⇒created
define(`file2', maketemp(`foo-XX'))dnl
define(`file3', mkstemp(`foo-XXXXXX'))dnl
ifelse(len(defn(`file1')), len(defn(`file2')),
       `same length', `different')
⇒same length
ifelse(defn(`file1'), defn(`file2'), `same', `different file')
⇒different file
ifelse(defn(`file2'), defn(`file3'), `same', `different file')
⇒different file
ifelse(defn(`file1'), defn(`file3'), `same', `different file')
⇒different file
syscmd(`rm 'defn(`file1') defn(`file2') defn(`file3'))
⇒
sysval
⇒0
</pre></div>


<hr>
<span id="Miscellaneous"></span><div class="header">
<p>
Next: <a href="#Frozen-files" accesskey="n" rel="next">Frozen files</a>, Previous: <a href="#Shell-commands" accesskey="p" rel="prev">Shell commands</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Miscellaneous-builtin-macros"></span><h2 class="chapter">14 Miscellaneous builtin macros</h2>

<p>This chapter describes various builtins, that do not really belong in
any of the previous chapters.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Errprint" accesskey="1">Errprint</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Printing error messages
</td></tr>
<tr><td valign="top" align="left">• <a href="#Location" accesskey="2">Location</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Printing current location
</td></tr>
<tr><td valign="top" align="left">• <a href="#M4exit" accesskey="3">M4exit</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Exiting from <code>m4</code>
</td></tr>
</tbody></table>

<hr>
<span id="Errprint"></span><div class="header">
<p>
Next: <a href="#Location" accesskey="n" rel="next">Location</a>, Up: <a href="#Miscellaneous" accesskey="u" rel="up">Miscellaneous</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Printing-error-messages"></span><h3 class="section">14.1 Printing error messages</h3>

<span id="index-printing-error-messages"></span>
<span id="index-error-messages_002c-printing"></span>
<span id="index-messages_002c-printing-error"></span>
<span id="index-standard-error_002c-output-to-2"></span>
<p>You can print error messages using <code>errprint</code>:
</p>
<dl>
<dt id="index-errprint">Builtin: <strong>errprint</strong> <em>(<var>message</var>, …)</em></dt>
<dd><p>Prints <var>message</var> and the rest of the arguments to standard error,
separated by spaces.  Standard error is used, regardless of the
<samp>--debugfile</samp> option (see <a href="#Debugging-options">Invoking m4</a>).
</p>
<p>The expansion of <code>errprint</code> is void.
The macro <code>errprint</code> is recognized only with parameters.
</p></dd></dl>

<div class="example">
<pre class="example">errprint(`Invalid arguments to forloop
')
error→Invalid arguments to forloop
⇒
errprint(`1')errprint(`2',`3
')
error→12 3
⇒
</pre></div>

<p>A trailing newline is <em>not</em> printed automatically, so it should be
supplied as part of the argument, as in the example.  Unfortunately, the
exact output of <code>errprint</code> is not very portable to other <code>m4</code>
implementations: POSIX requires that all arguments be printed,
but some implementations of <code>m4</code> only print the first.
Furthermore, some BSD implementations always append a newline
for each <code>errprint</code> call, regardless of whether the last argument
already had one, and POSIX is silent on whether this is
acceptable.
</p>
<hr>
<span id="Location"></span><div class="header">
<p>
Next: <a href="#M4exit" accesskey="n" rel="next">M4exit</a>, Previous: <a href="#Errprint" accesskey="p" rel="prev">Errprint</a>, Up: <a href="#Miscellaneous" accesskey="u" rel="up">Miscellaneous</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Printing-current-location"></span><h3 class="section">14.2 Printing current location</h3>

<span id="index-location_002c-input-1"></span>
<span id="index-input-location-1"></span>
<p>To make it possible to specify the location of an error, three
utility builtins exist:
</p>
<dl>
<dt id="index-_005f_005ffile_005f_005f">Builtin: <strong>__file__</strong></dt>
<dt id="index-_005f_005fline_005f_005f">Builtin: <strong>__line__</strong></dt>
<dt id="index-_005f_005fprogram_005f_005f">Builtin: <strong>__program__</strong></dt>
<dd><p>Expand to the quoted name of the current input file, the
current input line number in that file, and the quoted name of the
current invocation of <code>m4</code>.
</p></dd></dl>

<div class="example">
<pre class="example">errprint(__program__:__file__:__line__: `input error
')
error→m4:stdin:1: input error
⇒
</pre></div>

<p>Line numbers start at 1 for each file.  If the file was found due to the
<samp>-I</samp> option or <code>M4PATH</code> environment variable, that is
reflected in the file name.  The syncline option (<samp>-s</samp>,
see <a href="#Preprocessor-features">Invoking m4</a>), and the
‘<samp>f</samp>’ and ‘<samp>l</samp>’ flags of <code>debugmode</code> (see <a href="#Debug-Levels">Debug Levels</a>),
also use this notion of current file and line.  Redefining the three
location macros has no effect on syncline, debug, warning, or error
message output.
</p>
<p>This example reuses the file <samp>incl.m4</samp> mentioned earlier
(see <a href="#Include">Include</a>):
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
define(`foo', ``$0' called at __file__:__line__')
⇒
foo
⇒foo called at stdin:2
include(`incl.m4')
⇒Include file start
⇒foo called at examples/incl.m4:2
⇒Include file end
⇒
</pre></div>

<p>The location of macros invoked during the rescanning of macro expansion
text corresponds to the location in the file where the expansion was
triggered, regardless of how many newline characters the expansion text
contains.  As of GNU M4 1.4.8, the location of text wrapped
with <code>m4wrap</code> (see <a href="#M4wrap">M4wrap</a>) is the point at which the
<code>m4wrap</code> was invoked.  Previous versions, however, behaved as
though wrapped text came from line 0 of the file “”.
</p>
<div class="example">
<pre class="example">define(`echo', `$@')
⇒
define(`foo', `echo(__line__
__line__)')
⇒
echo(__line__
__line__)
⇒4
⇒5
m4wrap(`foo
')
⇒
foo(errprint(__line__
__line__
))
error→8
error→9
⇒8
⇒8
__line__
⇒11
m4wrap(`__line__
')
⇒
^D
⇒12
⇒6
⇒6
</pre></div>

<p>The <code><span class="nolinebreak">__program__</span><!-- /@w --></code> macro behaves like ‘<samp>$0</samp>’ in shell
terminology.  If you invoke <code>m4</code> through an absolute path or a link
with a different spelling, rather than by relying on a <code>PATH</code> search
for plain ‘<samp>m4</samp>’, it will affect how <code><span class="nolinebreak">__program__</span><!-- /@w --></code> expands.
The intent is that you can use it to produce error messages with the
same formatting that <code>m4</code> produces internally.  It can also be used
within <code>syscmd</code> (see <a href="#Syscmd">Syscmd</a>) to pick the same version of
<code>m4</code> that is currently running, rather than whatever version of
<code>m4</code> happens to be first in <code>PATH</code>.  It was first introduced in
GNU M4 1.4.6.
</p>
<hr>
<span id="M4exit"></span><div class="header">
<p>
Previous: <a href="#Location" accesskey="p" rel="prev">Location</a>, Up: <a href="#Miscellaneous" accesskey="u" rel="up">Miscellaneous</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Exiting-from-m4"></span><h3 class="section">14.3 Exiting from <code>m4</code></h3>

<span id="index-exiting-from-m4"></span>
<span id="index-status_002c-setting-m4-exit"></span>
<p>If you need to exit from <code>m4</code> before the entire input has been
read, you can use <code>m4exit</code>:
</p>
<dl>
<dt id="index-m4exit">Builtin: <strong>m4exit</strong> <em>(<span class="roman">[</span><var>code</var> = ‘<samp>0</samp>’<span class="roman">]</span>)</em></dt>
<dd><p>Causes <code>m4</code> to exit, with exit status <var>code</var>.  If <var>code</var> is
left out, the exit status is zero.  If <var>code</var> cannot be parsed, or
is outside the range of 0 to 255, the exit status is one.  No further
input is read, and all wrapped and diverted text is discarded.
</p></dd></dl>

<div class="example">
<pre class="example">m4wrap(`This text is lost due to `m4exit'.')
⇒
divert(`1') So is this.
divert
⇒
m4exit And this is never read.
</pre></div>

<p>A common use of this is to abort processing:
</p>
<dl>
<dt id="index-fatal_005ferror">Composite: <strong>fatal_error</strong> <em>(<var>message</var>)</em></dt>
<dd><p>Abort processing with an error message and non-zero status.  Prefix
<var>message</var> with details about where the error occurred, and print the
resulting string to standard error.
</p></dd></dl>

<div class="example">
<pre class="example">define(`fatal_error',
       `errprint(__program__:__file__:__line__`: fatal error: $*
')m4exit(`1')')
⇒
fatal_error(`this is a BAD one, buster')
error→m4:stdin:4: fatal error: this is a BAD one, buster
</pre></div>

<p>After this macro call, <code>m4</code> will exit with exit status 1.  This macro
is only intended for error exits, since the normal exit procedures are
not followed, i.e., diverted text is not undiverted, and saved text
(see <a href="#M4wrap">M4wrap</a>) is not reread.  (This macro could be made more robust
to earlier versions of <code>m4</code>.  You should try to see if you can find
weaknesses and correct them; or see <a href="#Improved-fatal_005ferror">Answers</a>).
</p>
<p>Note that it is still possible for the exit status to be different than
what was requested by <code>m4exit</code>.  If <code>m4</code> detects some other
error, such as a write error on standard output, the exit status will be
non-zero even if <code>m4exit</code> requested zero.
</p>
<p>If standard input is seekable, then the file will be positioned at the
next unread character.  If it is a pipe or other non-seekable file,
then there are no guarantees how much data <code>m4</code> might have read
into buffers, and thus discarded.
</p>
<hr>
<span id="Frozen-files"></span><div class="header">
<p>
Next: <a href="#Compatibility" accesskey="n" rel="next">Compatibility</a>, Previous: <a href="#Miscellaneous" accesskey="p" rel="prev">Miscellaneous</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Fast-loading-of-frozen-state"></span><h2 class="chapter">15 Fast loading of frozen state</h2>

<p>Some bigger <code>m4</code> applications may be built over a common base
containing hundreds of definitions and other costly initializations.
Usually, the common base is kept in one or more declarative files,
which files are listed on each <code>m4</code> invocation prior to the
user’s input file, or else each input file uses <code>include</code>.
</p>
<p>Reading the common base of a big application, over and over again, may
be time consuming.  GNU <code>m4</code> offers some machinery to
speed up the start of an application using lengthy common bases.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Using-frozen-files" accesskey="1">Using frozen files</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Using frozen files
</td></tr>
<tr><td valign="top" align="left">• <a href="#Frozen-file-format" accesskey="2">Frozen file format</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Frozen file format
</td></tr>
</tbody></table>

<hr>
<span id="Using-frozen-files"></span><div class="header">
<p>
Next: <a href="#Frozen-file-format" accesskey="n" rel="next">Frozen file format</a>, Up: <a href="#Frozen-files" accesskey="u" rel="up">Frozen files</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Using-frozen-files-1"></span><h3 class="section">15.1 Using frozen files</h3>

<span id="index-fast-loading-of-frozen-files"></span>
<span id="index-frozen-files-for-fast-loading"></span>
<span id="index-initialization_002c-frozen-state"></span>
<span id="index-dumping-into-frozen-file"></span>
<span id="index-reloading-a-frozen-file"></span>
<span id="index-GNU-extensions-17"></span>
<p>Suppose a user has a library of <code>m4</code> initializations in
<samp>base.m4</samp>, which is then used with multiple input files:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 base.m4 input1.m4</kbd>
$ <kbd>m4 base.m4 input2.m4</kbd>
$ <kbd>m4 base.m4 input3.m4</kbd>
</pre></div>

<p>Rather than spending time parsing the fixed contents of <samp>base.m4</samp>
every time, the user might rather execute:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -F base.m4f base.m4</kbd>
</pre></div>

<p>once, and further execute, as often as needed:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -R base.m4f input1.m4</kbd>
$ <kbd>m4 -R base.m4f input2.m4</kbd>
$ <kbd>m4 -R base.m4f input3.m4</kbd>
</pre></div>

<p>with the varying input.  The first call, containing the <samp>-F</samp>
option, only reads and executes file <samp>base.m4</samp>, defining
various application macros and computing other initializations.
Once the input file <samp>base.m4</samp> has been completely processed, GNU
<code>m4</code> produces in <samp>base.m4f</samp> a <em>frozen</em> file, that is, a
file which contains a kind of snapshot of the <code>m4</code> internal state.
</p>
<p>Later calls, containing the <samp>-R</samp> option, are able to reload
the internal state of <code>m4</code>, from <samp>base.m4f</samp>,
<em>prior</em> to reading any other input files.  This means
instead of starting with a virgin copy of <code>m4</code>, input will be
read after having effectively recovered the effect of a prior run.
In our example, the effect is the same as if file <samp>base.m4</samp> has
been read anew.  However, this effect is achieved a lot faster.
</p>
<p>Only one frozen file may be created or read in any one <code>m4</code>
invocation.  It is not possible to recover two frozen files at once.
However, frozen files may be updated incrementally, through using
<samp>-R</samp> and <samp>-F</samp> options simultaneously.  For example, if
some care is taken, the command:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 file1.m4 file2.m4 file3.m4 file4.m4</kbd>
</pre></div>

<p>could be broken down in the following sequence, accumulating the same
output:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -F file1.m4f file1.m4</kbd>
$ <kbd>m4 -R file1.m4f -F file2.m4f file2.m4</kbd>
$ <kbd>m4 -R file2.m4f -F file3.m4f file3.m4</kbd>
$ <kbd>m4 -R file3.m4f file4.m4</kbd>
</pre></div>

<p>Some care is necessary because not every effort has been made for
this to work in all cases.  In particular, the trace attribute of
macros is not handled, nor the current setting of <code>changeword</code>.
Currently, <code>m4wrap</code> and <code>sysval</code> also have problems.
Also, interactions for some options of <code>m4</code>, being used in one call
and not in the next, have not been fully analyzed yet.  On the other
end, you may be confident that stacks of <code>pushdef</code> definitions
are handled correctly, as well as undefined or renamed builtins, and
changed strings for quotes or comments.  And future releases of
GNU M4 will improve on the utility of frozen files.
</p>

<p>When an <code>m4</code> run is to be frozen, the automatic undiversion
which takes place at end of execution is inhibited.  Instead, all
positively numbered diversions are saved into the frozen file.
The active diversion number is also transmitted.
</p>
<p>A frozen file to be reloaded need not reside in the current directory.
It is looked up the same way as an <code>include</code> file (see <a href="#Search-Path">Search Path</a>).
</p>
<p>If the frozen file was generated with a newer version of <code>m4</code>, and
contains directives that an older <code>m4</code> cannot parse, attempting to
load the frozen file with option <samp>-R</samp> will cause <code>m4</code> to
exit with status 63 to indicate version mismatch.
</p>
<hr>
<span id="Frozen-file-format"></span><div class="header">
<p>
Previous: <a href="#Using-frozen-files" accesskey="p" rel="prev">Using frozen files</a>, Up: <a href="#Frozen-files" accesskey="u" rel="up">Frozen files</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Frozen-file-format-1"></span><h3 class="section">15.2 Frozen file format</h3>

<span id="index-frozen-file-format"></span>
<span id="index-file-format_002c-frozen-file"></span>
<p>Frozen files are sharable across architectures.  It is safe to write
a frozen file on one machine and read it on another, given that the
second machine uses the same or newer version of GNU <code>m4</code>.
It is conventional, but not required, to give a frozen file the suffix
of <code>.m4f</code>.
</p>
<p>These are simple (editable) text files, made up of directives,
each starting with a capital letter and ending with a newline
(<tt class="key">NL</tt>).  Wherever a directive is expected, the character
‘<samp>#</samp>’ introduces a comment line; empty lines are also ignored if they
are not part of an embedded string.
In the following descriptions, each <var>len</var> refers to the length of
the corresponding strings <var>str</var> in the next line of input.  Numbers
are always expressed in decimal.  There are no escape characters.  The
directives are:
</p>
<dl compact="compact">
<dt><code>C <var>len1</var> , <var>len2</var> <span class="key">NL</span> <var>str1</var> <var>str2</var> <span class="key">NL</span></code></dt>
<dd><p>Uses <var>str1</var> and <var>str2</var> as the begin-comment and
end-comment strings.  If omitted, then ‘<samp>#</samp>’ and <tt class="key">NL</tt> are the
comment delimiters.
</p>
</dd>
<dt><code>D <var>number</var>, <var>len</var> <span class="key">NL</span> <var>str</var> <span class="key">NL</span></code></dt>
<dd><p>Selects diversion <var>number</var>, making it current, then copy
<var>str</var> in the current diversion.  <var>number</var> may be a negative
number for a non-existing diversion.  To merely specify an active
selection, use this command with an empty <var>str</var>.  With 0 as the
diversion <var>number</var>, <var>str</var> will be issued on standard output
at reload time.  GNU <code>m4</code> will not produce the ‘<samp>D</samp>’
directive with non-zero length for diversion 0, but this can be done
with manual edits.  This directive may
appear more than once for the same diversion, in which case the
diversion is the concatenation of the various uses.  If omitted, then
diversion 0 is current.
</p>
</dd>
<dt><code>F <var>len1</var> , <var>len2</var> <span class="key">NL</span> <var>str1</var> <var>str2</var> <span class="key">NL</span></code></dt>
<dd><p>Defines, through <code>pushdef</code>, a definition for <var>str1</var>
expanding to the function whose builtin name is <var>str2</var>.  If the
builtin does not exist (for example, if the frozen file was produced by
a copy of <code>m4</code> compiled with changeword support, but the version
of <code>m4</code> reloading was compiled without it), the reload is silent,
but any subsequent use of the definition of <var>str1</var> will result in
a warning.  This directive may appear more than once for the same name,
and its order, along with ‘<samp>T</samp>’, is important.  If omitted, you will
have no access to any builtins.
</p>
</dd>
<dt><code>Q <var>len1</var> , <var>len2</var> <span class="key">NL</span> <var>str1</var> <var>str2</var> <span class="key">NL</span></code></dt>
<dd><p>Uses <var>str1</var> and <var>str2</var> as the begin-quote and end-quote
strings.  If omitted, then ‘<samp>`</samp>’ and ‘<samp>'</samp>’ are the quote
delimiters.
</p>
</dd>
<dt><code>T <var>len1</var> , <var>len2</var> <span class="key">NL</span> <var>str1</var> <var>str2</var> <span class="key">NL</span></code></dt>
<dd><p>Defines, though <code>pushdef</code>, a definition for <var>str1</var>
expanding to the text given by <var>str2</var>.  This directive may appear
more than once for the same name, and its order, along with ‘<samp>F</samp>’, is
important.
</p>
</dd>
<dt><code>V <var>number</var> <span class="key">NL</span></code></dt>
<dd><p>Confirms the format of the file.  <code>m4</code> 1.4.19 only creates
and understands frozen files where <var>number</var> is 1.  This directive
must be the first non-comment in the file, and may not appear more than
once.
</p></dd>
</dl>

<hr>
<span id="Compatibility"></span><div class="header">
<p>
Next: <a href="#Answers" accesskey="n" rel="next">Answers</a>, Previous: <a href="#Frozen-files" accesskey="p" rel="prev">Frozen files</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Compatibility-with-other-versions-of-m4"></span><h2 class="chapter">16 Compatibility with other versions of <code>m4</code></h2>

<span id="index-compatibility"></span>
<p>This chapter describes the many of the differences between this
implementation of <code>m4</code>, and of other implementations found under
UNIX, such as System V Release 4, Solaris, and BSD flavors.
In particular, it lists the known differences and extensions to
POSIX.  However, the list is not necessarily comprehensive.
</p>
<p>At the time of this writing, POSIX 2001 (also known as IEEE
Std 1003.1-2001) is the latest standard, although a new version of
POSIX is under development and includes several proposals for
modifying what <code>m4</code> is required to do.  The requirements for
<code>m4</code> are shared between SUSv3 and POSIX, and
can be viewed at
<a href="https://www.opengroup.org/onlinepubs/000095399/utilities/m4.html">https://www.opengroup.org/onlinepubs/000095399/utilities/m4.html</a>.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Extensions" accesskey="1">Extensions</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Extensions in GNU M4
</td></tr>
<tr><td valign="top" align="left">• <a href="#Incompatibilities" accesskey="2">Incompatibilities</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Facilities in System V m4 not in GNU M4
</td></tr>
<tr><td valign="top" align="left">• <a href="#Other-Incompatibilities" accesskey="3">Other Incompatibilities</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Other incompatibilities
</td></tr>
</tbody></table>

<hr>
<span id="Extensions"></span><div class="header">
<p>
Next: <a href="#Incompatibilities" accesskey="n" rel="next">Incompatibilities</a>, Up: <a href="#Compatibility" accesskey="u" rel="up">Compatibility</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Extensions-in-GNU-M4"></span><h3 class="section">16.1 Extensions in GNU M4</h3>

<span id="index-GNU-extensions-18"></span>
<span id="index-POSIX"></span>
<p>This version of <code>m4</code> contains a few facilities that do not exist
in System V <code>m4</code>.  These extra facilities are all suppressed by
using the <samp>-G</samp> command line option (see <a href="#Limits-control">Invoking m4</a>), unless overridden by other command line options.
</p>
<ul>
<li> In the <code>$<var>n</var></code> notation for macro arguments, <var>n</var> can contain
several digits, while the System V <code>m4</code> only accepts one digit.
This allows macros in GNU <code>m4</code> to take any number of
arguments, and not only nine (see <a href="#Arguments">Arguments</a>).

<p>This means that <code>define(`foo', `$11')</code> is ambiguous between
implementations.  To portably choose between grabbing the first
parameter and appending 1 to the expansion, or grabbing the eleventh
parameter, you can do the following:
</p>
<div class="example">
<pre class="example">define(`a1', `A1')
⇒
dnl First argument, concatenated with 1
define(`_1', `$1')define(`first1', `_1($@)1')
⇒
dnl Eleventh argument, portable
define(`_9', `$9')define(`eleventh', `_9(shift(shift($@)))')
⇒
dnl Eleventh argument, GNU style
define(`Eleventh', `$11')
⇒
first1(`a', `b', `c', `d', `e', `f', `g', `h', `i', `j', `k')
⇒A1
eleventh(`a', `b', `c', `d', `e', `f', `g', `h', `i', `j', `k')
⇒k
Eleventh(`a', `b', `c', `d', `e', `f', `g', `h', `i', `j', `k')
⇒k
</pre></div>

<p>Also see the <code>argn</code> macro (see <a href="#Shift">Shift</a>).
</p>
</li><li> The <code>divert</code> (see <a href="#Divert">Divert</a>) macro can manage more than 9
diversions.  GNU <code>m4</code> treats all positive numbers as valid
diversions, rather than discarding diversions greater than 9.

</li><li> Files included with <code>include</code> and <code>sinclude</code> are sought in a
user specified search path, if they are not found in the working
directory.  The search path is specified by the <samp>-I</samp> option and the
<code>M4PATH</code> environment variable (see <a href="#Search-Path">Search Path</a>).

</li><li> Arguments to <code>undivert</code> can be non-numeric, in which case the named
file will be included uninterpreted in the output (see <a href="#Undivert">Undivert</a>).

</li><li> Formatted output is supported through the <code>format</code> builtin, which
is modeled after the C library function <code>printf</code> (see <a href="#Format">Format</a>).

</li><li> Searches and text substitution through basic regular expressions are
supported by the <code>regexp</code> (see <a href="#Regexp">Regexp</a>) and <code>patsubst</code>
(see <a href="#Patsubst">Patsubst</a>) builtins.  Some BSD implementations use
extended regular expressions instead.

</li><li> The output of shell commands can be read into <code>m4</code> with
<code>esyscmd</code> (see <a href="#Esyscmd">Esyscmd</a>).

</li><li> There is indirect access to any builtin macro with <code>builtin</code>
(see <a href="#Builtin">Builtin</a>).

</li><li> Macros can be called indirectly through <code>indir</code> (see <a href="#Indir">Indir</a>).

</li><li> The name of the program, the current input file, and the current input
line number are accessible through the builtins <code><span class="nolinebreak">__program__</span><!-- /@w --></code>,
<code><span class="nolinebreak">__file__</span><!-- /@w --></code>, and <code><span class="nolinebreak">__line__</span><!-- /@w --></code> (see <a href="#Location">Location</a>).

</li><li> The format of the output from <code>dumpdef</code> and macro tracing can be
controlled with <code>debugmode</code> (see <a href="#Debug-Levels">Debug Levels</a>).

</li><li> The destination of trace and debug output can be controlled with
<code>debugfile</code> (see <a href="#Debug-Output">Debug Output</a>).

</li><li> The <code>maketemp</code> (see <a href="#Mkstemp">Mkstemp</a>) macro behaves like <code>mkstemp</code>,
creating a new file with a unique name on every invocation, rather than
following the insecure behavior of replacing the trailing ‘<samp>X</samp>’
characters with the <code>m4</code> process id.

</li><li> POSIX only requires support for the command line options
<samp>-s</samp>, <samp>-D</samp>, and <samp>-U</samp>, so all other options accepted
by GNU M4 are extensions.  See <a href="#Invoking-m4">Invoking m4</a>, for a
description of these options.

<p>The debugging and tracing facilities in GNU <code>m4</code> are much
more extensive than in most other versions of <code>m4</code>.
</p></li></ul>

<hr>
<span id="Incompatibilities"></span><div class="header">
<p>
Next: <a href="#Other-Incompatibilities" accesskey="n" rel="next">Other Incompatibilities</a>, Previous: <a href="#Extensions" accesskey="p" rel="prev">Extensions</a>, Up: <a href="#Compatibility" accesskey="u" rel="up">Compatibility</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Facilities-in-System-V-m4-not-in-GNU-m4"></span><h3 class="section">16.2 Facilities in System V <code>m4</code> not in GNU <code>m4</code></h3>

<p>The version of <code>m4</code> from System V contains a few facilities that
have not been implemented in GNU <code>m4</code> yet.  Additionally,
POSIX requires some behaviors that GNU <code>m4</code> has not
implemented yet.  Relying on these behaviors is non-portable, as a
future release of GNU <code>m4</code> may change.
</p>
<ul>
<li> POSIX requires support for multiple arguments to <code>defn</code>,
without any clarification on how <code>defn</code> behaves when one of the
multiple arguments names a builtin.  System V <code>m4</code> and some other
implementations allow mixing builtins and text macros into a single
macro.  GNU <code>m4</code> only supports joining multiple text
arguments, although a future implementation may lift this restriction to
behave more like System V.  The only portable way to join text macros
with builtins is via helper macros and implicit concatenation of macro
results.

</li><li> POSIX requires an application to exit with non-zero status if
it wrote an error message to stderr.  This has not yet been consistently
implemented for the various builtins that are required to issue an error
(such as <code>eval</code> (see <a href="#Eval">Eval</a>) when an argument cannot be parsed).

</li><li> Some traditional implementations only allow reading standard input
once, but GNU <code>m4</code> correctly handles multiple instances
of ‘<samp>-</samp>’ on the command line.

</li><li> POSIX requires <code>m4wrap</code> (see <a href="#M4wrap">M4wrap</a>) to act in FIFO
(first-in, first-out) order, but GNU <code>m4</code> currently uses
LIFO order.  Furthermore, POSIX states that only the first
argument to <code>m4wrap</code> is saved for later evaluation, but
GNU <code>m4</code> saves and processes all arguments, with output
separated by spaces.

</li><li> POSIX states that builtins that require arguments, but are
called without arguments, have undefined behavior.  Traditional
implementations simply behave as though empty strings had been passed.
For example, <code>a`'define`'b</code> would expand to <code>ab</code>.  But
GNU <code>m4</code> ignores certain builtins if they have missing
arguments, giving <code>adefineb</code> for the above example.

</li><li> Traditional implementations handle <code>define(`f',`1')</code> (see <a href="#Define">Define</a>)
by undefining the entire stack of previous definitions, and if doing
<code>undefine(`f')</code> first.  GNU <code>m4</code> replaces just the top
definition on the stack, as if doing <code>popdef(`f')</code> followed by
<code>pushdef(`f',`1')</code>.  POSIX allows either behavior.

</li><li> POSIX 2001 requires <code>syscmd</code> (see <a href="#Syscmd">Syscmd</a>) to evaluate
command output for macro expansion, but this was a mistake that is
anticipated to be corrected in the next version of POSIX.
GNU <code>m4</code> follows traditional behavior in <code>syscmd</code>
where output is not rescanned, and provides the extension <code>esyscmd</code>
that does scan the output.

</li><li> At one point, POSIX required <code>changequote(<var>arg</var>)</code>
(see <a href="#Changequote">Changequote</a>) to use newline as the close quote, but this was a
bug, and the next version of POSIX is anticipated to state
that using empty strings or just one argument is unspecified.
Meanwhile, the GNU <code>m4</code> behavior of treating an empty
end-quote delimiter as ‘<samp>'</samp>’ is not portable, as Solaris treats it as
repeating the start-quote delimiter, and BSD treats it as leaving the
previous end-quote delimiter unchanged.  For predictable results, never
call changequote with just one argument, or with empty strings for
arguments.

</li><li> At one point, POSIX required <code>changecom(<var>arg</var>,)</code>
(see <a href="#Changecom">Changecom</a>) to make it impossible to end a comment, but this is
a bug, and the next version of POSIX is anticipated to state
that using empty strings is unspecified.  Meanwhile, the GNU
<code>m4</code> behavior of treating an empty end-comment delimiter as newline
is not portable, as BSD treats it as leaving the previous end-comment
delimiter unchanged.  It is also impossible in BSD implementations to
disable comments, even though that is required by POSIX.  For
predictable results, never call changecom with empty strings for
arguments.

</li><li> Most implementations of <code>m4</code> give macros a higher precedence than
comments when parsing, meaning that if the start delimiter given to
<code>changecom</code> (see <a href="#Changecom">Changecom</a>) starts with a macro name, comments
are effectively disabled.  POSIX does not specify what the
precedence is, so this version of GNU <code>m4</code> parser
recognizes comments, then macros, then quoted strings.

</li><li> Traditional implementations allow argument collection, but not string
and comment processing, to span file boundaries.  Thus, if <samp>a.m4</samp>
contains ‘<samp>len(</samp>’, and <samp>b.m4</samp> contains ‘<samp>abc)</samp>’,
<kbd>m4 a.m4 b.m4</kbd> outputs ‘<samp>3</samp>’ with traditional <code>m4</code>, but
gives an error message that the end of file was encountered inside a
macro with GNU <code>m4</code>.  On the other hand, traditional
implementations do end of file processing for files included with
<code>include</code> or <code>sinclude</code> (see <a href="#Include">Include</a>), while GNU
<code>m4</code> seamlessly integrates the content of those files.  Thus
<code>include(`a.m4')include(`b.m4')</code> will output ‘<samp>3</samp>’ instead of
giving an error.

</li><li> Traditional <code>m4</code> treats <code>traceon</code> (see <a href="#Trace">Trace</a>) without
arguments as a global variable, independent of named macro tracing.
Also, once a macro is undefined, named tracing of that macro is lost.
On the other hand, when GNU <code>m4</code> encounters
<code>traceon</code> without
arguments, it turns tracing on for all existing definitions at the time,
but does not trace future definitions; <code>traceoff</code> without arguments
turns tracing off for all definitions regardless of whether they were
also traced by name; and tracing by name, such as with <samp>-tfoo</samp> at
the command line or <code>traceon(`foo')</code> in the input, is an attribute
that is preserved even if the macro is currently undefined.

<p>Additionally, while POSIX requires trace output, it makes no
demands on the formatting of that output.  Parsing trace output is not
guaranteed to be reliable, even between different releases of
GNU M4; however, the intent is that any future changes in
trace output will only occur under the direction of additional
<code>debugmode</code> flags (see <a href="#Debug-Levels">Debug Levels</a>).
</p>
</li><li> POSIX requires <code>eval</code> (see <a href="#Eval">Eval</a>) to treat all
operators with the same precedence as C.  However, earlier versions of
GNU <code>m4</code> followed the traditional behavior of other
<code>m4</code> implementations, where bitwise and logical negation (‘<samp>~</samp>’
and ‘<samp>!</samp>’) have lower precedence than equality operators; and where
equality operators (‘<samp>==</samp>’ and ‘<samp>!=</samp>’) had the same precedence as
relational operators (such as ‘<samp>&lt;</samp>’).  Use explicit parentheses to
ensure proper precedence.  As extensions to POSIX,
GNU <code>m4</code> gives well-defined semantics to operations that
C leaves undefined, such as when overflow occurs, when shifting negative
numbers, or when performing division by zero.  POSIX also
requires ‘<samp>=</samp>’ to cause an error, but many traditional
implementations allowed it as an alias for ‘<samp>==</samp>’.

</li><li> POSIX 2001 requires <code>translit</code> (see <a href="#Translit">Translit</a>) to
treat each character of the second and third arguments literally.
However, it is anticipated that the next version of POSIX will
allow the GNU <code>m4</code> behavior of treating ‘<samp>-</samp>’ as a
range operator.

</li><li> POSIX requires <code>m4</code> to honor the locale environment
variables of <code>LANG</code>, <code>LC_ALL</code>, <code>LC_CTYPE</code>,
<code>LC_MESSAGES</code>, and <code>NLSPATH</code>, but this has not yet been
implemented in GNU <code>m4</code>.

</li><li> POSIX states that only unquoted leading newlines and blanks
(that is, space and tab) are ignored when collecting macro arguments.
However, this appears to be a bug in POSIX, since most
traditional implementations also ignore all whitespace (formfeed,
carriage return, and vertical tab).  GNU <code>m4</code> follows
tradition and ignores all leading unquoted whitespace.

</li><li> <span id="index-POSIXLY_005fCORRECT-1"></span>
A strictly-compliant POSIX client is not allowed to use
command-line arguments not specified by POSIX.  However, since
this version of M4 ignores <code>POSIXLY_CORRECT</code> and enables the option
<code>--gnu</code> by default (see <a href="#Limits-control">Invoking m4</a>), a
client desiring to be strictly compliant has no way to disable
GNU extensions that conflict with POSIX when
directly invoking the compiled <code>m4</code>.  A future version of
<code>GNU</code> M4 will honor the environment variable <code>POSIXLY_CORRECT</code>,
implicitly enabling <samp>--traditional</samp> if it is set, in order to
allow a strictly-compliant client.  In the meantime, a client needing
strict POSIX compliance can use the workaround of invoking a
shell script wrapper, where the wrapper then adds <samp>--traditional</samp>
to the arguments passed to the compiled <code>m4</code>.
</li></ul>

<hr>
<span id="Other-Incompatibilities"></span><div class="header">
<p>
Previous: <a href="#Incompatibilities" accesskey="p" rel="prev">Incompatibilities</a>, Up: <a href="#Compatibility" accesskey="u" rel="up">Compatibility</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Other-incompatibilities"></span><h3 class="section">16.3 Other incompatibilities</h3>

<p>There are a few other incompatibilities between this implementation of
<code>m4</code>, and the System V version.
</p>
<ul>
<li> GNU <code>m4</code> implements sync lines differently from System V
<code>m4</code>, when text is being diverted.  GNU <code>m4</code> outputs
the sync lines when the text is being diverted, and System V <code>m4</code>
when the diverted text is being brought back.

<p>The problem is which lines and file names should be attached to text
that is being, or has been, diverted.  System V <code>m4</code> regards all
the diverted text as being generated by the source line containing the
<code>undivert</code> call, whereas GNU <code>m4</code> regards the
diverted text as being generated at the time it is diverted.
</p>
<p>The sync line option is used mostly when using <code>m4</code> as
a front end to a compiler.  If a diverted line causes a compiler error,
the error messages should most probably refer to the place where the
diversion was made, and not where it was inserted again.
</p>
<div class="example">
<pre class="example">divert(2)2
divert(1)1
divert`'0
⇒#line 3 "stdin"
⇒0
^D
⇒#line 2 "stdin"
⇒1
⇒#line 1 "stdin"
⇒2
</pre></div>

<p>The current <code>m4</code> implementation has a limitation that the syncline
output at the start of each diversion occurs no matter what, even if the
previous diversion did not end with a newline.  This goes contrary to
the claim that synclines appear on a line by themselves, so this
limitation may be corrected in a future version of <code>m4</code>.  In the
meantime, when using <samp>-s</samp>, it is wisest to make sure all
diversions end with newline.
</p>
</li><li> GNU <code>m4</code> makes no attempt at prohibiting self-referential
definitions like:

<div class="example">
<pre class="example">define(`x', `x')
⇒
define(`x', `x ')
⇒
</pre></div>

<span id="index-rescanning-4"></span>
<p>There is nothing inherently wrong with defining ‘<samp>x</samp>’ to
return ‘<samp>x</samp>’.  The wrong thing is to expand ‘<samp>x</samp>’ unquoted,
because that would cause an infinite rescan loop.
In <code>m4</code>, one might use macros to hold strings, as we do for
variables in other programming languages, further checking them with:
</p>
<div class="example">
<pre class="example">ifelse(defn(`<var>holder</var>'), `<var>value</var>', …)
</pre></div>

<p>In cases like this one, an interdiction for a macro to hold its own name
would be a useless limitation.  Of course, this leaves more rope for the
GNU <code>m4</code> user to hang himself!  Rescanning hangs may be
avoided through careful programming, a little like for endless loops in
traditional programming languages.
</p></li></ul>

<hr>
<span id="Answers"></span><div class="header">
<p>
Next: <a href="#Copying-This-Package" accesskey="n" rel="next">Copying This Package</a>, Previous: <a href="#Compatibility" accesskey="p" rel="prev">Compatibility</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Correct-version-of-some-examples"></span><h2 class="chapter">17 Correct version of some examples</h2>

<p>Some of the examples in this manuals are buggy or not very robust, for
demonstration purposes.  Improved versions of these composite macros are
presented here.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Improved-exch" accesskey="1">Improved exch</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>exch</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-forloop" accesskey="2">Improved forloop</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>forloop</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-foreach" accesskey="3">Improved foreach</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>foreach</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-copy" accesskey="4">Improved copy</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>copy</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-m4wrap" accesskey="5">Improved m4wrap</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>m4wrap</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-cleardivert" accesskey="6">Improved cleardivert</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>cleardivert</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-capitalize" accesskey="7">Improved capitalize</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>capitalize</code>
</td></tr>
<tr><td valign="top" align="left">• <a href="#Improved-fatal_005ferror" accesskey="8">Improved fatal_error</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Solution for <code>fatal_error</code>
</td></tr>
</tbody></table>

<hr>
<span id="Improved-exch"></span><div class="header">
<p>
Next: <a href="#Improved-forloop" accesskey="n" rel="next">Improved forloop</a>, Up: <a href="#Answers" accesskey="u" rel="up">Answers</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Solution-for-exch"></span><h3 class="section">17.1 Solution for <code>exch</code></h3>

<p>The <code>exch</code> macro (see <a href="#Arguments">Arguments</a>) as presented requires clients
to double quote their arguments.  A nicer definition, which lets
clients follow the rule of thumb of one level of quoting per level of
parentheses, involves adding quotes in the definition of <code>exch</code>, as
follows:
</p>
<div class="example">
<pre class="example">define(`exch', ``$2', `$1'')
⇒
define(exch(`expansion text', `macro'))
⇒
macro
⇒expansion text
</pre></div>

<hr>
<span id="Improved-forloop"></span><div class="header">
<p>
Next: <a href="#Improved-foreach" accesskey="n" rel="next">Improved foreach</a>, Previous: <a href="#Improved-exch" accesskey="p" rel="prev">Improved exch</a>, Up: <a href="#Answers" accesskey="u" rel="up">Answers</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Solution-for-forloop"></span><h3 class="section">17.2 Solution for <code>forloop</code></h3>

<p>The <code>forloop</code> macro (see <a href="#Forloop">Forloop</a>) as presented earlier can go
into an infinite loop if given an iterator that is not parsed as a macro
name.  It does not do any sanity checking on its numeric bounds, and
only permits decimal numbers for bounds.  Here is an improved version,
shipped as <samp>m4-1.4.19/examples/forloop2.m4</samp>; this
version also optimizes overhead by calling four macros instead of six
per iteration (excluding those in <var>text</var>), by not dereferencing the
<var>iterator</var> in the helper <code><span class="nolinebreak">_forloop</span><!-- /@w --></code>.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d -I examples</kbd>
undivert(`forloop2.m4')dnl
⇒divert(`-1')
⇒# forloop(var, from, to, stmt) - improved version:
⇒#   works even if VAR is not a strict macro name
⇒#   performs sanity check that FROM is larger than TO
⇒#   allows complex numerical expressions in TO and FROM
⇒define(`forloop', `ifelse(eval(`($2) &lt;= ($3)'), `1',
⇒  `pushdef(`$1')_$0(`$1', eval(`$2'),
⇒    eval(`$3'), `$4')popdef(`$1')')')
⇒define(`_forloop',
⇒  `define(`$1', `$2')$4`'ifelse(`$2', `$3', `',
⇒    `$0(`$1', incr(`$2'), `$3', `$4')')')
⇒divert`'dnl
include(`forloop2.m4')
⇒
forloop(`i', `2', `1', `no iteration occurs')
⇒
forloop(`', `1', `2', ` odd iterator name')
⇒ odd iterator name odd iterator name
forloop(`i', `5 + 5', `0xc', ` 0x`'eval(i, `16')')
⇒ 0xa 0xb 0xc
forloop(`i', `a', `b', `non-numeric bounds')
error→m4:stdin:6: bad expression in eval (bad input): (a) &lt;= (b)
⇒
</pre></div>

<p>One other change to notice is that the improved version used ‘<samp>_$0</samp>’
rather than ‘<samp>_foreach</samp>’ to invoke the helper routine.  In general,
this is a good practice to follow, because then the set of macros can be
uniformly transformed.  The following example shows a transformation
that doubles the current quoting and appends a suffix ‘<samp>2</samp>’ to each
transformed macro.  If <code>foreach</code> refers to the literal
‘<samp>_foreach</samp>’, then <code>foreach2</code> invokes <code>_foreach</code> instead of
the intended <code>_foreach2</code>, and the mixing of quoting paradigms leads
to an infinite recursion loop in this example.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -d -L 9 -I examples</kbd>
define(`arg1', `$1')include(`forloop2.m4')include(`quote.m4')
⇒
define(`double', `define(`$1'`2',
  arg1(patsubst(dquote(defn(`$1')), `[`']', `\&amp;\&amp;')))')
⇒
double(`forloop')double(`_forloop')defn(`forloop2')
⇒ifelse(eval(``($2) &lt;= ($3)''), ``1'',
⇒  ``pushdef(``$1'')_$0(``$1'', eval(``$2''),
⇒    eval(``$3''), ``$4'')popdef(``$1'')'')
forloop(i, 1, 5, `ifelse(')forloop(i, 1, 5, `)')
⇒
changequote(`[', `]')changequote([``], [''])
⇒
forloop2(i, 1, 5, ``ifelse('')forloop2(i, 1, 5, ``)'')
⇒
changequote`'include(`forloop.m4')
⇒
double(`forloop')double(`_forloop')defn(`forloop2')
⇒pushdef(``$1'', ``$2'')_forloop($@)popdef(``$1'')
forloop(i, 1, 5, `ifelse(')forloop(i, 1, 5, `)')
⇒
changequote(`[', `]')changequote([``], [''])
⇒
forloop2(i, 1, 5, ``ifelse('')forloop2(i, 1, 5, ``)'')
error→m4:stdin:12: recursion limit of 9 exceeded, use -L&lt;N&gt; to change it
</pre></div>

<p>One more optimization is still possible.  Instead of repeatedly
assigning a variable then invoking or dereferencing it, it is possible
to pass the current iterator value as a single argument.  Coupled with
<code>curry</code> if other arguments are needed (see <a href="#Composition">Composition</a>), or
with helper macros if the argument is needed in more than one place in
the expansion, the output can be generated with three, rather than four,
macros of overhead per iteration.  Notice how the file
<samp>m4-1.4.19/examples/forloop3.m4</samp> rearranges the
arguments of the helper <code>_forloop</code> to take two arguments that are
placed around the current value.  By splitting a balanced set of
parantheses across multiple arguments, the helper macro can now be
shared by <code>forloop</code> and the new <code>forloop_arg</code>.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`forloop3.m4')
⇒
undivert(`forloop3.m4')dnl
⇒divert(`-1')
⇒# forloop_arg(from, to, macro) - invoke MACRO(value) for
⇒#   each value between FROM and TO, without define overhead
⇒define(`forloop_arg', `ifelse(eval(`($1) &lt;= ($2)'), `1',
⇒  `_forloop(`$1', eval(`$2'), `$3(', `)')')')
⇒# forloop(var, from, to, stmt) - refactored to share code
⇒define(`forloop', `ifelse(eval(`($2) &lt;= ($3)'), `1',
⇒  `pushdef(`$1')_forloop(eval(`$2'), eval(`$3'),
⇒    `define(`$1',', `)$4')popdef(`$1')')')
⇒define(`_forloop',
⇒  `$3`$1'$4`'ifelse(`$1', `$2', `',
⇒    `$0(incr(`$1'), `$2', `$3', `$4')')')
⇒divert`'dnl
forloop(`i', `1', `3', ` i')
⇒ 1 2 3
define(`echo', `$@')
⇒
forloop_arg(`1', `3', ` echo')
⇒ 1 2 3
include(`curry.m4')
⇒
forloop_arg(`1', `3', `curry(`pushdef', `a')')
⇒
a
⇒3
popdef(`a')a
⇒2
popdef(`a')a
⇒1
popdef(`a')a
⇒a
</pre></div>

<p>Of course, it is possible to make even more improvements, such as
adding an optional step argument, or allowing iteration through
descending sequences.  GNU Autoconf provides some of these
additional bells and whistles in its <code>m4_for</code> macro.
</p>
<hr>
<span id="Improved-foreach"></span><div class="header">
<p>
Next: <a href="#Improved-copy" accesskey="n" rel="next">Improved copy</a>, Previous: <a href="#Improved-forloop" accesskey="p" rel="prev">Improved forloop</a>, Up: <a href="#Answers" accesskey="u" rel="up">Answers</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Solution-for-foreach"></span><h3 class="section">17.3 Solution for <code>foreach</code></h3>

<p>The <code>foreach</code> and <code>foreachq</code> macros (see <a href="#Foreach">Foreach</a>) as
presented earlier each have flaws.  First, we will examine and fix the
quadratic behavior of <code>foreachq</code>:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`foreachq.m4')
⇒
traceon(`shift')debugmode(`aq')
⇒
foreachq(`x', ``1', `2', `3', `4'', `x
')dnl
⇒1
error→m4trace: -3- shift(`1', `2', `3', `4')
error→m4trace: -2- shift(`1', `2', `3', `4')
⇒2
error→m4trace: -4- shift(`1', `2', `3', `4')
error→m4trace: -3- shift(`2', `3', `4')
error→m4trace: -3- shift(`1', `2', `3', `4')
error→m4trace: -2- shift(`2', `3', `4')
⇒3
error→m4trace: -5- shift(`1', `2', `3', `4')
error→m4trace: -4- shift(`2', `3', `4')
error→m4trace: -3- shift(`3', `4')
error→m4trace: -4- shift(`1', `2', `3', `4')
error→m4trace: -3- shift(`2', `3', `4')
error→m4trace: -2- shift(`3', `4')
⇒4
error→m4trace: -6- shift(`1', `2', `3', `4')
error→m4trace: -5- shift(`2', `3', `4')
error→m4trace: -4- shift(`3', `4')
error→m4trace: -3- shift(`4')
</pre></div>

<span id="index-quadratic-behavior_002c-avoiding"></span>
<span id="index-avoiding-quadratic-behavior"></span>
<p>Each successive iteration was adding more quoted <code>shift</code>
invocations, and the entire list contents were passing through every
iteration.  In general, when recursing, it is a good idea to make the
recursion use fewer arguments, rather than adding additional quoted
uses of <code>shift</code>.  By doing so, <code>m4</code> uses less memory, invokes
fewer macros, is less likely to run into machine limits, and most
importantly, performs faster.  The fixed version of <code>foreachq</code> can
be found in <samp>m4-1.4.19/examples/foreachq2.m4</samp>:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`foreachq2.m4')
⇒
undivert(`foreachq2.m4')dnl
⇒include(`quote.m4')dnl
⇒divert(`-1')
⇒# foreachq(x, `item_1, item_2, ..., item_n', stmt)
⇒#   quoted list, improved version
⇒define(`foreachq', `pushdef(`$1')_$0($@)popdef(`$1')')
⇒define(`_arg1q', ``$1'')
⇒define(`_rest', `ifelse(`$#', `1', `', `dquote(shift($@))')')
⇒define(`_foreachq', `ifelse(`$2', `', `',
⇒  `define(`$1', _arg1q($2))$3`'$0(`$1', _rest($2), `$3')')')
⇒divert`'dnl
traceon(`shift')debugmode(`aq')
⇒
foreachq(`x', ``1', `2', `3', `4'', `x
')dnl
⇒1
error→m4trace: -3- shift(`1', `2', `3', `4')
⇒2
error→m4trace: -3- shift(`2', `3', `4')
⇒3
error→m4trace: -3- shift(`3', `4')
⇒4
</pre></div>

<p>Note that the fixed version calls unquoted helper macros in
<code><span class="nolinebreak">_foreachq</span><!-- /@w --></code> to trim elements immediately; those helper macros
in turn must re-supply the layer of quotes lost in the macro invocation.
Contrast the use of <code><span class="nolinebreak">_arg1q</span><!-- /@w --></code>, which quotes the first list
element, with <code><span class="nolinebreak">_arg1</span><!-- /@w --></code> of the earlier implementation that
returned the first list element directly.  Additionally, by calling the
helper method immediately, the ‘<samp>defn(`<var>iterator</var>')</samp>’ no longer
contains unexpanded macros.
</p>
<p>The astute m4 programmer might notice that the solution above still uses
more memory and macro invocations, and thus more time, than strictly
necessary.  Note that ‘<samp>$2</samp>’, which contains an arbitrarily long
quoted list, is expanded and rescanned three times per iteration of
<code>_foreachq</code>. Furthermore, every iteration of the algorithm
effectively unboxes then reboxes the list, which costs a couple of macro
invocations.  It is possible to rewrite the algorithm for a bit more
speed by swapping the order of the arguments to <code>_foreachq</code> in
order to operate on an unboxed list in the first place, and by using the
fixed-length ‘<samp>$#</samp>’ instead of an arbitrary length list as the key to
end recursion.  The result is an overhead of six macro invocations per
loop (excluding any macros in <var>text</var>), instead of eight.  This
alternative approach is available as
<samp>m4-1.4.19/examples/foreach3.m4</samp>:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`foreachq3.m4')
⇒
undivert(`foreachq3.m4')dnl
⇒divert(`-1')
⇒# foreachq(x, `item_1, item_2, ..., item_n', stmt)
⇒#   quoted list, alternate improved version
⇒define(`foreachq', `ifelse(`$2', `', `',
⇒  `pushdef(`$1')_$0(`$1', `$3', `', $2)popdef(`$1')')')
⇒define(`_foreachq', `ifelse(`$#', `3', `',
⇒  `define(`$1', `$4')$2`'$0(`$1', `$2',
⇒    shift(shift(shift($@))))')')
⇒divert`'dnl
traceon(`shift')debugmode(`aq')
⇒
foreachq(`x', ``1', `2', `3', `4'', `x
')dnl
⇒1
error→m4trace: -4- shift(`x', `x
error→', `', `1', `2', `3', `4')
error→m4trace: -3- shift(`x
error→', `', `1', `2', `3', `4')
error→m4trace: -2- shift(`', `1', `2', `3', `4')
⇒2
error→m4trace: -4- shift(`x', `x
error→', `1', `2', `3', `4')
error→m4trace: -3- shift(`x
error→', `1', `2', `3', `4')
error→m4trace: -2- shift(`1', `2', `3', `4')
⇒3
error→m4trace: -4- shift(`x', `x
error→', `2', `3', `4')
error→m4trace: -3- shift(`x
error→', `2', `3', `4')
error→m4trace: -2- shift(`2', `3', `4')
⇒4
error→m4trace: -4- shift(`x', `x
error→', `3', `4')
error→m4trace: -3- shift(`x
error→', `3', `4')
error→m4trace: -2- shift(`3', `4')
</pre></div>

<p>In the current version of M4, every instance of ‘<samp>$@</samp>’ is rescanned
as it is encountered.  Thus, the <samp>foreachq3.m4</samp> alternative uses
much less memory than <samp>foreachq2.m4</samp>, and executes as much as 10%
faster, since each iteration encounters fewer ‘<samp>$@</samp>’.  However, the
implementation of rescanning every byte in ‘<samp>$@</samp>’ is quadratic in
the number of bytes scanned (for example, making the broken version in
<samp>foreachq.m4</samp> cubic, rather than quadratic, in behavior).  A future
release of M4 will improve the underlying implementation by reusing
results of previous scans, so that both styles of <code>foreachq</code> can
become linear in the number of bytes scanned.  Notice how the
implementation injects an empty argument prior to expanding ‘<samp>$2</samp>’
within <code>foreachq</code>; the helper macro <code>_foreachq</code> then ignores
the third argument altogether, and ends recursion when there are three
arguments left because there was nothing left to pass through
<code>shift</code>.  Thus, each iteration only needs one <code>ifelse</code>, rather
than the two conditionals used in the version from <samp>foreachq2.m4</samp>.
</p>
<span id="index-nine-arguments_002c-more-than-2"></span>
<span id="index-more-than-nine-arguments-2"></span>
<span id="index-arguments_002c-more-than-nine-2"></span>
<p>So far, all of the implementations of <code>foreachq</code> presented have
been quadratic with M4 1.4.x.  But <code>forloop</code> is linear, because
each iteration parses a constant amount of arguments.  So, it is
possible to design a variant that uses <code>forloop</code> to do the
iteration, then uses ‘<samp>$@</samp>’ only once at the end, giving a linear
result even with older M4 implementations.  This implementation relies
on the GNU extension that ‘<samp>$10</samp>’ expands to the tenth
argument rather than the first argument concatenated with ‘<samp>0</samp>’.  The
trick is to define an intermediate macro that repeats the text
<code>m4_define(`$1', `$<var>n</var>')$2`'</code>, with ‘<samp>n</samp>’ set to successive
integers corresponding to each argument.  The helper macro
<code>_foreachq_</code> is needed in order to generate the literal sequences
such as ‘<samp>$1</samp>’ into the intermediate macro, rather than expanding
them as the arguments of <code>_foreachq</code>.  With this approach, no
<code>shift</code> calls are even needed!  Even though there are seven macros
of overhead per iteration instead of six in <samp>foreachq3.m4</samp>, the
linear scaling is apparent at relatively small list sizes.  However,
this approach will need adjustment when a future version of M4 follows
POSIX by no longer treating ‘<samp>$10</samp>’ as the tenth argument;
the anticipation is that ‘<samp>${10}</samp>’ can be used instead, although
that alternative syntax is not yet supported.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`foreachq4.m4')
⇒
undivert(`foreachq4.m4')dnl
⇒include(`forloop2.m4')dnl
⇒divert(`-1')
⇒# foreachq(x, `item_1, item_2, ..., item_n', stmt)
⇒#   quoted list, version based on forloop
⇒define(`foreachq',
⇒`ifelse(`$2', `', `', `_$0(`$1', `$3', $2)')')
⇒define(`_foreachq',
⇒`pushdef(`$1', forloop(`$1', `3', `$#',
⇒  `$0_(`1', `2', indir(`$1'))')`popdef(
⇒    `$1')')indir(`$1', $@)')
⇒define(`_foreachq_',
⇒``define(`$$1', `$$3')$$2`''')
⇒divert`'dnl
traceon(`shift')debugmode(`aq')
⇒
foreachq(`x', ``1', `2', `3', `4'', `x
')dnl
⇒1
⇒2
⇒3
⇒4
</pre></div>

<p>For yet another approach, the improved version of <code>foreach</code>,
available in <samp>m4-1.4.19/examples/foreach2.m4</samp>, simply
overquotes the arguments to <code><span class="nolinebreak">_foreach</span><!-- /@w --></code> to begin with, using
<code>dquote_elt</code>.  Then <code><span class="nolinebreak">_foreach</span><!-- /@w --></code> can just use
<code><span class="nolinebreak">_arg1</span><!-- /@w --></code> to remove the extra layer of quoting that was added up
front:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`foreach2.m4')
⇒
undivert(`foreach2.m4')dnl
⇒include(`quote.m4')dnl
⇒divert(`-1')
⇒# foreach(x, (item_1, item_2, ..., item_n), stmt)
⇒#   parenthesized list, improved version
⇒define(`foreach', `pushdef(`$1')_$0(`$1',
⇒  (dquote(dquote_elt$2)), `$3')popdef(`$1')')
⇒define(`_arg1', `$1')
⇒define(`_foreach', `ifelse(`$2', `(`')', `',
⇒  `define(`$1', _arg1$2)$3`'$0(`$1', (dquote(shift$2)), `$3')')')
⇒divert`'dnl
traceon(`shift')debugmode(`aq')
⇒
foreach(`x', `(`1', `2', `3', `4')', `x
')dnl
error→m4trace: -4- shift(`1', `2', `3', `4')
error→m4trace: -4- shift(`2', `3', `4')
error→m4trace: -4- shift(`3', `4')
⇒1
error→m4trace: -3- shift(``1'', ``2'', ``3'', ``4'')
⇒2
error→m4trace: -3- shift(``2'', ``3'', ``4'')
⇒3
error→m4trace: -3- shift(``3'', ``4'')
⇒4
error→m4trace: -3- shift(``4'')
</pre></div>

<p>It is likewise possible to write a variant of <code>foreach</code> that
performs in linear time on M4 1.4.x; the easiest method is probably
writing a version of <code>foreach</code> that unboxes its list, then invokes
<code>_foreachq</code> as previously defined in <samp>foreachq4.m4</samp>.
</p>
<p>In summary, recursion over list elements is trickier than it appeared at
first glance, but provides a powerful idiom within <code>m4</code> processing.
As a final demonstration, both list styles are now able to handle
several scenarios that would wreak havoc on one or both of the original
implementations.  This points out one other difference between the
list styles.  <code>foreach</code> evaluates unquoted list elements only once,
in preparation for calling <code><span class="nolinebreak">_foreach</span><!-- /@w --></code>, similary for
<code>foreachq</code> as provided by <samp>foreachq3.m4</samp> or
<samp>foreachq4.m4</samp>.  But
<code>foreachq</code>, as provided by <samp>foreachq2.m4</samp>,
evaluates unquoted list elements twice while visiting the first list
element, once in <code><span class="nolinebreak">_arg1q</span><!-- /@w --></code> and once in <code><span class="nolinebreak">_rest</span><!-- /@w --></code>.  When
deciding which list style to use, one must take into account whether
repeating the side effects of unquoted list elements will have any
detrimental effects.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`foreach2.m4')
⇒
include(`foreachq2.m4')
⇒
dnl 0-element list:
foreach(`x', `', `&lt;x&gt;') / foreachq(`x', `', `&lt;x&gt;')
⇒ / <!-- /@w -->
dnl 1-element list of empty element
foreach(`x', `()', `&lt;x&gt;') / foreachq(`x', ``'', `&lt;x&gt;')
⇒&lt;&gt; / &lt;&gt;
dnl 2-element list of empty elements
foreach(`x', `(`',`')', `&lt;x&gt;') / foreachq(`x', ``',`'', `&lt;x&gt;')
⇒&lt;&gt;&lt;&gt; / &lt;&gt;&lt;&gt;
dnl 1-element list of a comma
foreach(`x', `(`,')', `&lt;x&gt;') / foreachq(`x', ``,'', `&lt;x&gt;')
⇒&lt;,&gt; / &lt;,&gt;
dnl 2-element list of unbalanced parentheses
foreach(`x', `(`(', `)')', `&lt;x&gt;') / foreachq(`x', ``(', `)'', `&lt;x&gt;')
⇒&lt;(&gt;&lt;)&gt; / &lt;(&gt;&lt;)&gt;
define(`ab', `oops')dnl using defn(`iterator')
foreach(`x', `(`a', `b')', `defn(`x')') /dnl
 foreachq(`x', ``a', `b'', `defn(`x')')
⇒ab / ab
define(`active', `ACT, IVE')
⇒
traceon(`active')
⇒
dnl list of unquoted macros; expansion occurs before recursion
foreach(`x', `(active, active)', `&lt;x&gt;
')dnl
error→m4trace: -4- active -&gt; `ACT, IVE'
error→m4trace: -4- active -&gt; `ACT, IVE'
⇒&lt;ACT&gt;
⇒&lt;IVE&gt;
⇒&lt;ACT&gt;
⇒&lt;IVE&gt;
foreachq(`x', `active, active', `&lt;x&gt;
')dnl
error→m4trace: -3- active -&gt; `ACT, IVE'
error→m4trace: -3- active -&gt; `ACT, IVE'
⇒&lt;ACT&gt;
error→m4trace: -3- active -&gt; `ACT, IVE'
error→m4trace: -3- active -&gt; `ACT, IVE'
⇒&lt;IVE&gt;
⇒&lt;ACT&gt;
⇒&lt;IVE&gt;
dnl list of quoted macros; expansion occurs during recursion
foreach(`x', `(`active', `active')', `&lt;x&gt;
')dnl
error→m4trace: -1- active -&gt; `ACT, IVE'
⇒&lt;ACT, IVE&gt;
error→m4trace: -1- active -&gt; `ACT, IVE'
⇒&lt;ACT, IVE&gt;
foreachq(`x', ``active', `active'', `&lt;x&gt;
')dnl
error→m4trace: -1- active -&gt; `ACT, IVE'
⇒&lt;ACT, IVE&gt;
error→m4trace: -1- active -&gt; `ACT, IVE'
⇒&lt;ACT, IVE&gt;
dnl list of double-quoted macro names; no expansion
foreach(`x', `(``active'', ``active'')', `&lt;x&gt;
')dnl
⇒&lt;active&gt;
⇒&lt;active&gt;
foreachq(`x', ```active'', ``active''', `&lt;x&gt;
')dnl
⇒&lt;active&gt;
⇒&lt;active&gt;
</pre></div>


<hr>
<span id="Improved-copy"></span><div class="header">
<p>
Next: <a href="#Improved-m4wrap" accesskey="n" rel="next">Improved m4wrap</a>, Previous: <a href="#Improved-foreach" accesskey="p" rel="prev">Improved foreach</a>, Up: <a href="#Answers" accesskey="u" rel="up">Answers</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Solution-for-copy"></span><h3 class="section">17.4 Solution for <code>copy</code></h3>

<p>The macro <code>copy</code> presented above
is unable to handle builtin tokens with M4 1.4.x, because it tries to
pass the builtin token through the macro <code>curry</code>, where it is
silently flattened to an empty string (see <a href="#Composition">Composition</a>).  Rather
than using the problematic <code>curry</code> to work around the limitation
that <code>stack_foreach</code> expects to invoke a macro that takes exactly
one argument, we can write a new macro that lets us form the exact
two-argument <code>pushdef</code> call sequence needed, so that we are no
longer passing a builtin token through a text macro.
</p>
<dl>
<dt id="index-stack_005fforeach_005fsep">Composite: <strong>stack_foreach_sep</strong> <em>(<var>macro</var>, <var>pre</var>, <var>post</var>,   <var>sep</var>)</em></dt>
<dt id="index-stack_005fforeach_005fsep_005flifo">Composite: <strong>stack_foreach_sep_lifo</strong> <em>(<var>macro</var>, <var>pre</var>,   <var>post</var>, <var>sep</var>)</em></dt>
<dd><p>For each of the <code>pushdef</code> definitions associated with <var>macro</var>,
expand the sequence ‘<samp><var>pre</var>`'definition`'<var>post</var></samp>’.
Additionally, expand <var>sep</var> between definitions.
<code>stack_foreach_sep</code> visits the oldest definition first, while
<code>stack_foreach_sep_lifo</code> visits the current definition first.  The
expansion may dereference <var>macro</var>, but should not modify it.  There
are a few special macros, such as <code>defn</code>, which cannot be used as
the <var>macro</var> parameter.
</p></dd></dl>

<p>Note that <code>stack_foreach(`<var>macro</var>', `<var>action</var>')</code> is
equivalent to <code>stack_foreach_sep(`<var>macro</var>', `<var>action</var>(',
`)')</code>.  By supplying explicit parentheses, split among the <var>pre</var> and
<var>post</var> arguments to <code>stack_foreach_sep</code>, it is now possible to
construct macro calls with more than one argument, without passing
builtin tokens through a macro call.  It is likewise possible to
directly reference the stack definitions without a macro call, by
leaving <var>pre</var> and <var>post</var> empty.  Thus, in addition to fixing
<code>copy</code> on builtin tokens, it also executes with fewer macro
invocations.
</p>
<p>The new macro also adds a separator that is only output after the first
iteration of the helper <code>_stack_reverse_sep</code>, implemented by
prepending the original <var>sep</var> to <var>pre</var> and omitting a <var>sep</var>
argument in subsequent iterations.  Note that the empty string that
separates <var>sep</var> from <var>pre</var> is provided as part of the fourth
argument when originally calling <code>_stack_reverse_sep</code>, and not by
writing <code>$4`'$3</code> as the third argument in the recursive call; while
the other approach would give the same output, it does so at the expense
of increasing the argument size on each iteration of
<code>_stack_reverse_sep</code>, which results in quadratic instead of linear
execution time.  The improved stack walking macros are available in
<samp>m4-1.4.19/examples/stack_sep.m4</samp>:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`stack_sep.m4')
⇒
define(`copy', `ifdef(`$2', `errprint(`$2 already defined
')m4exit(`1')',
   `stack_foreach_sep(`$1', `pushdef(`$2',', `)')')')dnl
pushdef(`a', `1')pushdef(`a', defn(`divnum'))
⇒
copy(`a', `b')
⇒
b
⇒0
popdef(`b')
⇒
b
⇒1
pushdef(`c', `1')pushdef(`c', `2')
⇒
stack_foreach_sep_lifo(`c', `', `', `, ')
⇒2, 1
undivert(`stack_sep.m4')dnl
⇒divert(`-1')
⇒# stack_foreach_sep(macro, pre, post, sep)
⇒# Invoke PRE`'defn`'POST with a single argument of each definition
⇒# from the definition stack of MACRO, starting with the oldest, and
⇒# separated by SEP between definitions.
⇒define(`stack_foreach_sep',
⇒`_stack_reverse_sep(`$1', `tmp-$1')'dnl
⇒`_stack_reverse_sep(`tmp-$1', `$1', `$2`'defn(`$1')$3', `$4`'')')
⇒# stack_foreach_sep_lifo(macro, pre, post, sep)
⇒# Like stack_foreach_sep, but starting with the newest definition.
⇒define(`stack_foreach_sep_lifo',
⇒`_stack_reverse_sep(`$1', `tmp-$1', `$2`'defn(`$1')$3', `$4`'')'dnl
⇒`_stack_reverse_sep(`tmp-$1', `$1')')
⇒define(`_stack_reverse_sep',
⇒`ifdef(`$1', `pushdef(`$2', defn(`$1'))$3`'popdef(`$1')$0(
⇒  `$1', `$2', `$4$3')')')
⇒divert`'dnl
</pre></div>


<hr>
<span id="Improved-m4wrap"></span><div class="header">
<p>
Next: <a href="#Improved-cleardivert" accesskey="n" rel="next">Improved cleardivert</a>, Previous: <a href="#Improved-copy" accesskey="p" rel="prev">Improved copy</a>, Up: <a href="#Answers" accesskey="u" rel="up">Answers</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Solution-for-m4wrap"></span><h3 class="section">17.5 Solution for <code>m4wrap</code></h3>

<p>The replacement <code>m4wrap</code> versions presented above, designed to
guarantee FIFO or LIFO order regardless of the underlying M4
implementation, share a bug when dealing with wrapped text that looks
like parameter expansion.  Note how the invocation of
<code>m4wrap<var>n</var></code> interprets these parameters, while using the
builtin preserves them for their intended use.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`wraplifo.m4')
⇒
m4wrap(`define(`foo', ``$0:'-$1-$*-$#-')foo(`a', `b')
')
⇒
builtin(`m4wrap', ``'define(`bar', ``$0:'-$1-$*-$#-')bar(`a', `b')
')
⇒
^D
⇒bar:-a-a,b-2-
⇒m4wrap0:---0-
</pre></div>

<p>Additionally, the computation of <code>_m4wrap_level</code> and creation of
multiple <code>m4wrap<var>n</var></code> placeholders in the original examples is
more expensive in time and memory than strictly necessary.  Notice how
the improved version grabs the wrapped text via <code>defn</code> to avoid
parameter expansion, then undefines <code>_m4wrap_text</code>, before
stripping a level of quotes with <code>_arg1</code> to expand the text.  That
way, each level of wrapping reuses the single placeholder, which starts
each nesting level in an undefined state.
</p>
<p>Finally, it is worth emulating the GNU M4 extension of saving
all arguments to <code>m4wrap</code>, separated by a space, rather than saving
just the first argument.  This is done with the <code>join</code> macro
documented previously (see <a href="#Shift">Shift</a>).  The improved LIFO example is
shipped as <samp>m4-1.4.19/examples/wraplifo2.m4</samp>, and can
easily be converted to a FIFO solution by swapping the adjacent
invocations of <code>joinall</code> and <code>defn</code>.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`wraplifo2.m4')
⇒
undivert(`wraplifo2.m4')dnl
⇒dnl Redefine m4wrap to have LIFO semantics, improved example.
⇒include(`join.m4')dnl
⇒define(`_m4wrap', defn(`m4wrap'))dnl
⇒define(`_arg1', `$1')dnl
⇒define(`m4wrap',
⇒`ifdef(`_$0_text',
⇒       `define(`_$0_text', joinall(` ', $@)defn(`_$0_text'))',
⇒       `_$0(`_arg1(defn(`_$0_text')undefine(`_$0_text'))')dnl
⇒define(`_$0_text', joinall(` ', $@))')')dnl
m4wrap(`define(`foo', ``$0:'-$1-$*-$#-')foo(`a', `b')
')
⇒
m4wrap(`lifo text
m4wrap(`nested', `', `$@
')')
⇒
^D
⇒lifo text
⇒foo:-a-a,b-2-
⇒nested  $@
</pre></div>

<hr>
<span id="Improved-cleardivert"></span><div class="header">
<p>
Next: <a href="#Improved-capitalize" accesskey="n" rel="next">Improved capitalize</a>, Previous: <a href="#Improved-m4wrap" accesskey="p" rel="prev">Improved m4wrap</a>, Up: <a href="#Answers" accesskey="u" rel="up">Answers</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Solution-for-cleardivert"></span><h3 class="section">17.6 Solution for <code>cleardivert</code></h3>

<p>The <code>cleardivert</code> macro (see <a href="#Cleardivert">Cleardivert</a>) cannot, as it stands, be
called without arguments to clear all pending diversions.  That is
because using undivert with an empty string for an argument is different
than using it with no arguments at all.  Compare the earlier definition
with one that takes the number of arguments into account:
</p>
<div class="example">
<pre class="example">define(`cleardivert',
  `pushdef(`_n', divnum)divert(`-1')undivert($@)divert(_n)popdef(`_n')')
⇒
divert(`1')one
divert
⇒
cleardivert
⇒
undivert
⇒one
⇒
define(`cleardivert',
  `pushdef(`_num', divnum)divert(`-1')ifelse(`$#', `0',
    `undivert`'', `undivert($@)')divert(_num)popdef(`_num')')
⇒
divert(`2')two
divert
⇒
cleardivert
⇒
undivert
⇒
</pre></div>

<hr>
<span id="Improved-capitalize"></span><div class="header">
<p>
Next: <a href="#Improved-fatal_005ferror" accesskey="n" rel="next">Improved fatal_error</a>, Previous: <a href="#Improved-cleardivert" accesskey="p" rel="prev">Improved cleardivert</a>, Up: <a href="#Answers" accesskey="u" rel="up">Answers</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Solution-for-capitalize"></span><h3 class="section">17.7 Solution for <code>capitalize</code></h3>

<p>The <code>capitalize</code> macro (see <a href="#Patsubst">Patsubst</a>) as presented earlier does
not allow clients to follow the quoting rule of thumb.  Consider the
three macros <code>active</code>, <code>Active</code>, and <code>ACTIVE</code>, and the
difference between calling <code>capitalize</code> with the expansion of a
macro, expanding the result of a case change, and changing the case of a
double-quoted string:
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`capitalize.m4')dnl
define(`active', `act1, ive')dnl
define(`Active', `Act2, Ive')dnl
define(`ACTIVE', `ACT3, IVE')dnl
upcase(active)
⇒ACT1,IVE
upcase(`active')
⇒ACT3, IVE
upcase(``active'')
⇒ACTIVE
downcase(ACTIVE)
⇒act3,ive
downcase(`ACTIVE')
⇒act1, ive
downcase(``ACTIVE'')
⇒active
capitalize(active)
⇒Act1
capitalize(`active')
⇒Active
capitalize(``active'')
⇒_capitalize(`active')
define(`A', `OOPS')
⇒
capitalize(active)
⇒OOPSct1
capitalize(`active')
⇒OOPSctive
</pre></div>

<p>First, when <code>capitalize</code> is called with more than one argument, it
was throwing away later arguments, whereas <code>upcase</code> and
<code>downcase</code> used ‘<samp>$*</samp>’ to collect them all.  The fix is simple:
use ‘<samp>$*</samp>’ consistently.
</p>
<p>Next, with single-quoting, <code>capitalize</code> outputs a single character,
a set of quotes, then the rest of the characters, making it impossible
to invoke <code>Active</code> after the fact, and allowing the alternate macro
<code>A</code> to interfere.  Here, the solution is to use additional quoting
in the helper macros, then pass the final over-quoted output string
through <code>_arg1</code> to remove the extra quoting and finally invoke the
concatenated portions as a single string.
</p>
<p>Finally, when passed a double-quoted string, the nested macro
<code>_capitalize</code> is never invoked because it ended up nested inside
quotes.  This one is the toughest to fix.  In short, we have no idea how
many levels of quotes are in effect on the substring being altered by
<code>patsubst</code>.  If the replacement string cannot be expressed entirely
in terms of literal text and backslash substitutions, then we need a
mechanism to guarantee that the helper macros are invoked outside of
quotes.  In other words, this sounds like a job for <code>changequote</code>
(see <a href="#Changequote">Changequote</a>).  By changing the active quoting characters, we
can guarantee that replacement text injected by <code>patsubst</code> always
occurs in the middle of a string that has exactly one level of
over-quoting using alternate quotes; so the replacement text closes the
quoted string, invokes the helper macros, then reopens the quoted
string.  In turn, that means the replacement text has unbalanced quotes,
necessitating another round of <code>changequote</code>.
</p>
<p>In the fixed version below, (also shipped as
<samp>m4-1.4.19/examples/capitalize2.m4</samp>), <code>capitalize</code>
uses the alternate quotes of ‘<samp>&lt;&lt;[</samp>’ and ‘<samp>]&gt;&gt;</samp>’ (the longer
strings are chosen so as to be less likely to appear in the text being
converted).  The helpers <code>_to_alt</code> and <code>_from_alt</code> merely
reduce the number of characters required to perform a
<code>changequote</code>, since the definition changes twice.  The outermost
pair means that <code>patsubst</code> and <code>_capitalize_alt</code> are invoked
with alternate quoting; the innermost pair is used so that the third
argument to <code>patsubst</code> can contain an unbalanced
‘<samp>]&gt;&gt;</samp>’/‘<samp>&lt;&lt;[</samp>’ pair.  Note that <code>upcase</code> and <code>downcase</code>
must be redefined as <code>_upcase_alt</code> and <code>_downcase_alt</code>, since
they contain nested quotes but are invoked with the alternate quoting
scheme in effect.
</p>
<div class="example">
<pre class="example">$ <kbd>m4 -I examples</kbd>
include(`capitalize2.m4')dnl
define(`active', `act1, ive')dnl
define(`Active', `Act2, Ive')dnl
define(`ACTIVE', `ACT3, IVE')dnl
define(`A', `OOPS')dnl
capitalize(active; `active'; ``active''; ```actIVE''')
⇒Act1,Ive; Act2, Ive; Active; `Active'
undivert(`capitalize2.m4')dnl
⇒divert(`-1')
⇒# upcase(text)
⇒# downcase(text)
⇒# capitalize(text)
⇒#   change case of text, improved version
⇒define(`upcase', `translit(`$*', `a-z', `A-Z')')
⇒define(`downcase', `translit(`$*', `A-Z', `a-z')')
⇒define(`_arg1', `$1')
⇒define(`_to_alt', `changequote(`&lt;&lt;[', `]&gt;&gt;')')
⇒define(`_from_alt', `changequote(&lt;&lt;[`]&gt;&gt;, &lt;&lt;[']&gt;&gt;)')
⇒define(`_upcase_alt', `translit(&lt;&lt;[$*]&gt;&gt;, &lt;&lt;[a-z]&gt;&gt;, &lt;&lt;[A-Z]&gt;&gt;)')
⇒define(`_downcase_alt', `translit(&lt;&lt;[$*]&gt;&gt;, &lt;&lt;[A-Z]&gt;&gt;, &lt;&lt;[a-z]&gt;&gt;)')
⇒define(`_capitalize_alt',
⇒  `regexp(&lt;&lt;[$1]&gt;&gt;, &lt;&lt;[^\(\w\)\(\w*\)]&gt;&gt;,
⇒    &lt;&lt;[_upcase_alt(&lt;&lt;[&lt;&lt;[\1]&gt;&gt;]&gt;&gt;)_downcase_alt(&lt;&lt;[&lt;&lt;[\2]&gt;&gt;]&gt;&gt;)]&gt;&gt;)')
⇒define(`capitalize',
⇒  `_arg1(_to_alt()patsubst(&lt;&lt;[&lt;&lt;[$*]&gt;&gt;]&gt;&gt;, &lt;&lt;[\w+]&gt;&gt;,
⇒    _from_alt()`]&gt;&gt;_$0_alt(&lt;&lt;[\&amp;]&gt;&gt;)&lt;&lt;['_to_alt())_from_alt())')
⇒divert`'dnl
</pre></div>

<hr>
<span id="Improved-fatal_005ferror"></span><div class="header">
<p>
Previous: <a href="#Improved-capitalize" accesskey="p" rel="prev">Improved capitalize</a>, Up: <a href="#Answers" accesskey="u" rel="up">Answers</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Solution-for-fatal_005ferror"></span><h3 class="section">17.8 Solution for <code>fatal_error</code></h3>

<p>The <code>fatal_error</code> macro (see <a href="#M4exit">M4exit</a>) is not robust to versions
of GNU M4 earlier than 1.4.8, where invoking
<code><span class="nolinebreak">__file__</span><!-- /@w --></code> (see <a href="#Location">Location</a>) inside <code>m4wrap</code> would result
in an empty string, and <code><span class="nolinebreak">__line__</span><!-- /@w --></code> resulted in ‘<samp>0</samp>’ even
though all files start at line 1.  Furthermore, versions earlier than
1.4.6 did not support the <code><span class="nolinebreak">__program__</span><!-- /@w --></code> macro.  If you want
<code>fatal_error</code> to work across the entire 1.4.x release series, a
better implementation would be:
</p>
<div class="example">
<pre class="example">define(`fatal_error',
  `errprint(ifdef(`__program__', `__program__', ``m4'')'dnl
`:ifelse(__line__, `0', `',
    `__file__:__line__:')` fatal error: $*
')m4exit(`1')')
⇒
m4wrap(`divnum(`demo of internal message')
fatal_error(`inside wrapped text')')
⇒
^D
error→m4:stdin:6: Warning: excess arguments to builtin `divnum' ignored
⇒0
error→m4:stdin:6: fatal error: inside wrapped text
</pre></div>


<hr>
<span id="Copying-This-Package"></span><div class="header">
<p>
Next: <a href="#Copying-This-Manual" accesskey="n" rel="next">Copying This Manual</a>, Previous: <a href="#Answers" accesskey="p" rel="prev">Answers</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="How-to-make-copies-of-the-overall-M4-package"></span><h2 class="appendix">Appendix A How to make copies of the overall M4 package</h2>
<span id="index-License_002c-code"></span>

<p>This appendix covers the license for copying the source code of the
overall M4 package.  This manual is under a different set of
restrictions, covered later (see <a href="#Copying-This-Manual">Copying This Manual</a>).
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#GNU-General-Public-License" accesskey="1">GNU General Public License</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">License for copying the M4 package
</td></tr>
</tbody></table>

<hr>
<span id="GNU-General-Public-License"></span><div class="header">
<p>
Up: <a href="#Copying-This-Package" accesskey="u" rel="up">Copying This Package</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="License-for-copying-the-M4-package"></span><h3 class="appendixsec">A.1 License for copying the M4 package</h3>
<span id="index-GPL_002c-GNU-General-Public-License"></span>
<span id="index-GNU-General-Public-License"></span>
<span id="index-General-Public-License-_0028GPL_0029_002c-GNU"></span>
<div align="center">Version 3, 29 June 2007
</div>

<div class="display">
<pre class="display">Copyright © 2007 Free Software Foundation, Inc. <a href="https://fsf.org/">https://fsf.org/</a>

Everyone is permitted to copy and distribute verbatim copies of this
license document, but changing it is not allowed.
</pre></div>

<span id="Preamble"></span><h3 class="heading">Preamble</h3>

<p>The GNU General Public License is a free, copyleft license for
software and other kinds of works.
</p>
<p>The licenses for most software and other practical works are designed
to take away your freedom to share and change the works.  By contrast,
the GNU General Public License is intended to guarantee your freedom
to share and change all versions of a program—to make sure it remains
free software for all its users.  We, the Free Software Foundation,
use the GNU General Public License for most of our software; it
applies also to any other work released this way by its authors.  You
can apply it to your programs, too.
</p>
<p>When we speak of free software, we are referring to freedom, not
price.  Our General Public Licenses are designed to make sure that you
have the freedom to distribute copies of free software (and charge for
them if you wish), that you receive source code or can get it if you
want it, that you can change the software or use pieces of it in new
free programs, and that you know you can do these things.
</p>
<p>To protect your rights, we need to prevent others from denying you
these rights or asking you to surrender the rights.  Therefore, you
have certain responsibilities if you distribute copies of the
software, or if you modify it: responsibilities to respect the freedom
of others.
</p>
<p>For example, if you distribute copies of such a program, whether
gratis or for a fee, you must pass on to the recipients the same
freedoms that you received.  You must make sure that they, too,
receive or can get the source code.  And you must show them these
terms so they know their rights.
</p>
<p>Developers that use the GNU GPL protect your rights with two steps:
(1) assert copyright on the software, and (2) offer you this License
giving you legal permission to copy, distribute and/or modify it.
</p>
<p>For the developers’ and authors’ protection, the GPL clearly explains
that there is no warranty for this free software.  For both users’ and
authors’ sake, the GPL requires that modified versions be marked as
changed, so that their problems will not be attributed erroneously to
authors of previous versions.
</p>
<p>Some devices are designed to deny users access to install or run
modified versions of the software inside them, although the
manufacturer can do so.  This is fundamentally incompatible with the
aim of protecting users’ freedom to change the software.  The
systematic pattern of such abuse occurs in the area of products for
individuals to use, which is precisely where it is most unacceptable.
Therefore, we have designed this version of the GPL to prohibit the
practice for those products.  If such problems arise substantially in
other domains, we stand ready to extend this provision to those
domains in future versions of the GPL, as needed to protect the
freedom of users.
</p>
<p>Finally, every program is threatened constantly by software patents.
States should not allow patents to restrict development and use of
software on general-purpose computers, but in those that do, we wish
to avoid the special danger that patents applied to a free program
could make it effectively proprietary.  To prevent this, the GPL
assures that patents cannot be used to render the program non-free.
</p>
<p>The precise terms and conditions for copying, distribution and
modification follow.
</p>
<span id="TERMS-AND-CONDITIONS"></span><h3 class="heading">TERMS AND CONDITIONS</h3>

<ol start="0">
<li> Definitions.

<p>“This License” refers to version 3 of the GNU General Public License.
</p>
<p>“Copyright” also means copyright-like laws that apply to other kinds
of works, such as semiconductor masks.
</p>
<p>“The Program” refers to any copyrightable work licensed under this
License.  Each licensee is addressed as “you”.  “Licensees” and
“recipients” may be individuals or organizations.
</p>
<p>To “modify” a work means to copy from or adapt all or part of the work
in a fashion requiring copyright permission, other than the making of
an exact copy.  The resulting work is called a “modified version” of
the earlier work or a work “based on” the earlier work.
</p>
<p>A “covered work” means either the unmodified Program or a work based
on the Program.
</p>
<p>To “propagate” a work means to do anything with it that, without
permission, would make you directly or secondarily liable for
infringement under applicable copyright law, except executing it on a
computer or modifying a private copy.  Propagation includes copying,
distribution (with or without modification), making available to the
public, and in some countries other activities as well.
</p>
<p>To “convey” a work means any kind of propagation that enables other
parties to make or receive copies.  Mere interaction with a user
through a computer network, with no transfer of a copy, is not
conveying.
</p>
<p>An interactive user interface displays “Appropriate Legal Notices” to
the extent that it includes a convenient and prominently visible
feature that (1) displays an appropriate copyright notice, and (2)
tells the user that there is no warranty for the work (except to the
extent that warranties are provided), that licensees may convey the
work under this License, and how to view a copy of this License.  If
the interface presents a list of user commands or options, such as a
menu, a prominent item in the list meets this criterion.
</p>
</li><li> Source Code.

<p>The “source code” for a work means the preferred form of the work for
making modifications to it.  “Object code” means any non-source form
of a work.
</p>
<p>A “Standard Interface” means an interface that either is an official
standard defined by a recognized standards body, or, in the case of
interfaces specified for a particular programming language, one that
is widely used among developers working in that language.
</p>
<p>The “System Libraries” of an executable work include anything, other
than the work as a whole, that (a) is included in the normal form of
packaging a Major Component, but which is not part of that Major
Component, and (b) serves only to enable use of the work with that
Major Component, or to implement a Standard Interface for which an
implementation is available to the public in source code form.  A
“Major Component”, in this context, means a major essential component
(kernel, window system, and so on) of the specific operating system
(if any) on which the executable work runs, or a compiler used to
produce the work, or an object code interpreter used to run it.
</p>
<p>The “Corresponding Source” for a work in object code form means all
the source code needed to generate, install, and (for an executable
work) run the object code and to modify the work, including scripts to
control those activities.  However, it does not include the work’s
System Libraries, or general-purpose tools or generally available free
programs which are used unmodified in performing those activities but
which are not part of the work.  For example, Corresponding Source
includes interface definition files associated with source files for
the work, and the source code for shared libraries and dynamically
linked subprograms that the work is specifically designed to require,
such as by intimate data communication or control flow between those
subprograms and other parts of the work.
</p>
<p>The Corresponding Source need not include anything that users can
regenerate automatically from other parts of the Corresponding Source.
</p>
<p>The Corresponding Source for a work in source code form is that same
work.
</p>
</li><li> Basic Permissions.

<p>All rights granted under this License are granted for the term of
copyright on the Program, and are irrevocable provided the stated
conditions are met.  This License explicitly affirms your unlimited
permission to run the unmodified Program.  The output from running a
covered work is covered by this License only if the output, given its
content, constitutes a covered work.  This License acknowledges your
rights of fair use or other equivalent, as provided by copyright law.
</p>
<p>You may make, run and propagate covered works that you do not convey,
without conditions so long as your license otherwise remains in force.
You may convey covered works to others for the sole purpose of having
them make modifications exclusively for you, or provide you with
facilities for running those works, provided that you comply with the
terms of this License in conveying all material for which you do not
control copyright.  Those thus making or running the covered works for
you must do so exclusively on your behalf, under your direction and
control, on terms that prohibit them from making any copies of your
copyrighted material outside their relationship with you.
</p>
<p>Conveying under any other circumstances is permitted solely under the
conditions stated below.  Sublicensing is not allowed; section 10
makes it unnecessary.
</p>
</li><li> Protecting Users’ Legal Rights From Anti-Circumvention Law.

<p>No covered work shall be deemed part of an effective technological
measure under any applicable law fulfilling obligations under article
11 of the WIPO copyright treaty adopted on 20 December 1996, or
similar laws prohibiting or restricting circumvention of such
measures.
</p>
<p>When you convey a covered work, you waive any legal power to forbid
circumvention of technological measures to the extent such
circumvention is effected by exercising rights under this License with
respect to the covered work, and you disclaim any intention to limit
operation or modification of the work as a means of enforcing, against
the work’s users, your or third parties’ legal rights to forbid
circumvention of technological measures.
</p>
</li><li> Conveying Verbatim Copies.

<p>You may convey verbatim copies of the Program’s source code as you
receive it, in any medium, provided that you conspicuously and
appropriately publish on each copy an appropriate copyright notice;
keep intact all notices stating that this License and any
non-permissive terms added in accord with section 7 apply to the code;
keep intact all notices of the absence of any warranty; and give all
recipients a copy of this License along with the Program.
</p>
<p>You may charge any price or no price for each copy that you convey,
and you may offer support or warranty protection for a fee.
</p>
</li><li> Conveying Modified Source Versions.

<p>You may convey a work based on the Program, or the modifications to
produce it from the Program, in the form of source code under the
terms of section 4, provided that you also meet all of these
conditions:
</p>
<ol type="a" start="1">
<li> The work must carry prominent notices stating that you modified it,
and giving a relevant date.

</li><li> The work must carry prominent notices stating that it is released
under this License and any conditions added under section 7.  This
requirement modifies the requirement in section 4 to “keep intact all
notices”.

</li><li> You must license the entire work, as a whole, under this License to
anyone who comes into possession of a copy.  This License will
therefore apply, along with any applicable section 7 additional terms,
to the whole of the work, and all its parts, regardless of how they
are packaged.  This License gives no permission to license the work in
any other way, but it does not invalidate such permission if you have
separately received it.

</li><li> If the work has interactive user interfaces, each must display
Appropriate Legal Notices; however, if the Program has interactive
interfaces that do not display Appropriate Legal Notices, your work
need not make them do so.
</li></ol>

<p>A compilation of a covered work with other separate and independent
works, which are not by their nature extensions of the covered work,
and which are not combined with it such as to form a larger program,
in or on a volume of a storage or distribution medium, is called an
“aggregate” if the compilation and its resulting copyright are not
used to limit the access or legal rights of the compilation’s users
beyond what the individual works permit.  Inclusion of a covered work
in an aggregate does not cause this License to apply to the other
parts of the aggregate.
</p>
</li><li> Conveying Non-Source Forms.

<p>You may convey a covered work in object code form under the terms of
sections 4 and 5, provided that you also convey the machine-readable
Corresponding Source under the terms of this License, in one of these
ways:
</p>
<ol type="a" start="1">
<li> Convey the object code in, or embodied in, a physical product
(including a physical distribution medium), accompanied by the
Corresponding Source fixed on a durable physical medium customarily
used for software interchange.

</li><li> Convey the object code in, or embodied in, a physical product
(including a physical distribution medium), accompanied by a written
offer, valid for at least three years and valid for as long as you
offer spare parts or customer support for that product model, to give
anyone who possesses the object code either (1) a copy of the
Corresponding Source for all the software in the product that is
covered by this License, on a durable physical medium customarily used
for software interchange, for a price no more than your reasonable
cost of physically performing this conveying of source, or (2) access
to copy the Corresponding Source from a network server at no charge.

</li><li> Convey individual copies of the object code with a copy of the written
offer to provide the Corresponding Source.  This alternative is
allowed only occasionally and noncommercially, and only if you
received the object code with such an offer, in accord with subsection
6b.

</li><li> Convey the object code by offering access from a designated place
(gratis or for a charge), and offer equivalent access to the
Corresponding Source in the same way through the same place at no
further charge.  You need not require recipients to copy the
Corresponding Source along with the object code.  If the place to copy
the object code is a network server, the Corresponding Source may be
on a different server (operated by you or a third party) that supports
equivalent copying facilities, provided you maintain clear directions
next to the object code saying where to find the Corresponding Source.
Regardless of what server hosts the Corresponding Source, you remain
obligated to ensure that it is available for as long as needed to
satisfy these requirements.

</li><li> Convey the object code using peer-to-peer transmission, provided you
inform other peers where the object code and Corresponding Source of
the work are being offered to the general public at no charge under
subsection 6d.

</li></ol>

<p>A separable portion of the object code, whose source code is excluded
from the Corresponding Source as a System Library, need not be
included in conveying the object code work.
</p>
<p>A “User Product” is either (1) a “consumer product”, which means any
tangible personal property which is normally used for personal,
family, or household purposes, or (2) anything designed or sold for
incorporation into a dwelling.  In determining whether a product is a
consumer product, doubtful cases shall be resolved in favor of
coverage.  For a particular product received by a particular user,
“normally used” refers to a typical or common use of that class of
product, regardless of the status of the particular user or of the way
in which the particular user actually uses, or expects or is expected
to use, the product.  A product is a consumer product regardless of
whether the product has substantial commercial, industrial or
non-consumer uses, unless such uses represent the only significant
mode of use of the product.
</p>
<p>“Installation Information” for a User Product means any methods,
procedures, authorization keys, or other information required to
install and execute modified versions of a covered work in that User
Product from a modified version of its Corresponding Source.  The
information must suffice to ensure that the continued functioning of
the modified object code is in no case prevented or interfered with
solely because modification has been made.
</p>
<p>If you convey an object code work under this section in, or with, or
specifically for use in, a User Product, and the conveying occurs as
part of a transaction in which the right of possession and use of the
User Product is transferred to the recipient in perpetuity or for a
fixed term (regardless of how the transaction is characterized), the
Corresponding Source conveyed under this section must be accompanied
by the Installation Information.  But this requirement does not apply
if neither you nor any third party retains the ability to install
modified object code on the User Product (for example, the work has
been installed in ROM).
</p>
<p>The requirement to provide Installation Information does not include a
requirement to continue to provide support service, warranty, or
updates for a work that has been modified or installed by the
recipient, or for the User Product in which it has been modified or
installed.  Access to a network may be denied when the modification
itself materially and adversely affects the operation of the network
or violates the rules and protocols for communication across the
network.
</p>
<p>Corresponding Source conveyed, and Installation Information provided,
in accord with this section must be in a format that is publicly
documented (and with an implementation available to the public in
source code form), and must require no special password or key for
unpacking, reading or copying.
</p>
</li><li> Additional Terms.

<p>“Additional permissions” are terms that supplement the terms of this
License by making exceptions from one or more of its conditions.
Additional permissions that are applicable to the entire Program shall
be treated as though they were included in this License, to the extent
that they are valid under applicable law.  If additional permissions
apply only to part of the Program, that part may be used separately
under those permissions, but the entire Program remains governed by
this License without regard to the additional permissions.
</p>
<p>When you convey a copy of a covered work, you may at your option
remove any additional permissions from that copy, or from any part of
it.  (Additional permissions may be written to require their own
removal in certain cases when you modify the work.)  You may place
additional permissions on material, added by you to a covered work,
for which you have or can give appropriate copyright permission.
</p>
<p>Notwithstanding any other provision of this License, for material you
add to a covered work, you may (if authorized by the copyright holders
of that material) supplement the terms of this License with terms:
</p>
<ol type="a" start="1">
<li> Disclaiming warranty or limiting liability differently from the terms
of sections 15 and 16 of this License; or

</li><li> Requiring preservation of specified reasonable legal notices or author
attributions in that material or in the Appropriate Legal Notices
displayed by works containing it; or

</li><li> Prohibiting misrepresentation of the origin of that material, or
requiring that modified versions of such material be marked in
reasonable ways as different from the original version; or

</li><li> Limiting the use for publicity purposes of names of licensors or
authors of the material; or

</li><li> Declining to grant rights under trademark law for use of some trade
names, trademarks, or service marks; or

</li><li> Requiring indemnification of licensors and authors of that material by
anyone who conveys the material (or modified versions of it) with
contractual assumptions of liability to the recipient, for any
liability that these contractual assumptions directly impose on those
licensors and authors.
</li></ol>

<p>All other non-permissive additional terms are considered “further
restrictions” within the meaning of section 10.  If the Program as you
received it, or any part of it, contains a notice stating that it is
governed by this License along with a term that is a further
restriction, you may remove that term.  If a license document contains
a further restriction but permits relicensing or conveying under this
License, you may add to a covered work material governed by the terms
of that license document, provided that the further restriction does
not survive such relicensing or conveying.
</p>
<p>If you add terms to a covered work in accord with this section, you
must place, in the relevant source files, a statement of the
additional terms that apply to those files, or a notice indicating
where to find the applicable terms.
</p>
<p>Additional terms, permissive or non-permissive, may be stated in the
form of a separately written license, or stated as exceptions; the
above requirements apply either way.
</p>
</li><li> Termination.

<p>You may not propagate or modify a covered work except as expressly
provided under this License.  Any attempt otherwise to propagate or
modify it is void, and will automatically terminate your rights under
this License (including any patent licenses granted under the third
paragraph of section 11).
</p>
<p>However, if you cease all violation of this License, then your license
from a particular copyright holder is reinstated (a) provisionally,
unless and until the copyright holder explicitly and finally
terminates your license, and (b) permanently, if the copyright holder
fails to notify you of the violation by some reasonable means prior to
60 days after the cessation.
</p>
<p>Moreover, your license from a particular copyright holder is
reinstated permanently if the copyright holder notifies you of the
violation by some reasonable means, this is the first time you have
received notice of violation of this License (for any work) from that
copyright holder, and you cure the violation prior to 30 days after
your receipt of the notice.
</p>
<p>Termination of your rights under this section does not terminate the
licenses of parties who have received copies or rights from you under
this License.  If your rights have been terminated and not permanently
reinstated, you do not qualify to receive new licenses for the same
material under section 10.
</p>
</li><li> Acceptance Not Required for Having Copies.

<p>You are not required to accept this License in order to receive or run
a copy of the Program.  Ancillary propagation of a covered work
occurring solely as a consequence of using peer-to-peer transmission
to receive a copy likewise does not require acceptance.  However,
nothing other than this License grants you permission to propagate or
modify any covered work.  These actions infringe copyright if you do
not accept this License.  Therefore, by modifying or propagating a
covered work, you indicate your acceptance of this License to do so.
</p>
</li><li> Automatic Licensing of Downstream Recipients.

<p>Each time you convey a covered work, the recipient automatically
receives a license from the original licensors, to run, modify and
propagate that work, subject to this License.  You are not responsible
for enforcing compliance by third parties with this License.
</p>
<p>An “entity transaction” is a transaction transferring control of an
organization, or substantially all assets of one, or subdividing an
organization, or merging organizations.  If propagation of a covered
work results from an entity transaction, each party to that
transaction who receives a copy of the work also receives whatever
licenses to the work the party’s predecessor in interest had or could
give under the previous paragraph, plus a right to possession of the
Corresponding Source of the work from the predecessor in interest, if
the predecessor has it or can get it with reasonable efforts.
</p>
<p>You may not impose any further restrictions on the exercise of the
rights granted or affirmed under this License.  For example, you may
not impose a license fee, royalty, or other charge for exercise of
rights granted under this License, and you may not initiate litigation
(including a cross-claim or counterclaim in a lawsuit) alleging that
any patent claim is infringed by making, using, selling, offering for
sale, or importing the Program or any portion of it.
</p>
</li><li> Patents.

<p>A “contributor” is a copyright holder who authorizes use under this
License of the Program or a work on which the Program is based.  The
work thus licensed is called the contributor’s “contributor version”.
</p>
<p>A contributor’s “essential patent claims” are all patent claims owned
or controlled by the contributor, whether already acquired or
hereafter acquired, that would be infringed by some manner, permitted
by this License, of making, using, or selling its contributor version,
but do not include claims that would be infringed only as a
consequence of further modification of the contributor version.  For
purposes of this definition, “control” includes the right to grant
patent sublicenses in a manner consistent with the requirements of
this License.
</p>
<p>Each contributor grants you a non-exclusive, worldwide, royalty-free
patent license under the contributor’s essential patent claims, to
make, use, sell, offer for sale, import and otherwise run, modify and
propagate the contents of its contributor version.
</p>
<p>In the following three paragraphs, a “patent license” is any express
agreement or commitment, however denominated, not to enforce a patent
(such as an express permission to practice a patent or covenant not to
sue for patent infringement).  To “grant” such a patent license to a
party means to make such an agreement or commitment not to enforce a
patent against the party.
</p>
<p>If you convey a covered work, knowingly relying on a patent license,
and the Corresponding Source of the work is not available for anyone
to copy, free of charge and under the terms of this License, through a
publicly available network server or other readily accessible means,
then you must either (1) cause the Corresponding Source to be so
available, or (2) arrange to deprive yourself of the benefit of the
patent license for this particular work, or (3) arrange, in a manner
consistent with the requirements of this License, to extend the patent
license to downstream recipients.  “Knowingly relying” means you have
actual knowledge that, but for the patent license, your conveying the
covered work in a country, or your recipient’s use of the covered work
in a country, would infringe one or more identifiable patents in that
country that you have reason to believe are valid.
</p>
<p>If, pursuant to or in connection with a single transaction or
arrangement, you convey, or propagate by procuring conveyance of, a
covered work, and grant a patent license to some of the parties
receiving the covered work authorizing them to use, propagate, modify
or convey a specific copy of the covered work, then the patent license
you grant is automatically extended to all recipients of the covered
work and works based on it.
</p>
<p>A patent license is “discriminatory” if it does not include within the
scope of its coverage, prohibits the exercise of, or is conditioned on
the non-exercise of one or more of the rights that are specifically
granted under this License.  You may not convey a covered work if you
are a party to an arrangement with a third party that is in the
business of distributing software, under which you make payment to the
third party based on the extent of your activity of conveying the
work, and under which the third party grants, to any of the parties
who would receive the covered work from you, a discriminatory patent
license (a) in connection with copies of the covered work conveyed by
you (or copies made from those copies), or (b) primarily for and in
connection with specific products or compilations that contain the
covered work, unless you entered into that arrangement, or that patent
license was granted, prior to 28 March 2007.
</p>
<p>Nothing in this License shall be construed as excluding or limiting
any implied license or other defenses to infringement that may
otherwise be available to you under applicable patent law.
</p>
</li><li> No Surrender of Others’ Freedom.

<p>If conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License.  If you cannot convey
a covered work so as to satisfy simultaneously your obligations under
this License and any other pertinent obligations, then as a
consequence you may not convey it at all.  For example, if you agree
to terms that obligate you to collect a royalty for further conveying
from those to whom you convey the Program, the only way you could
satisfy both those terms and this License would be to refrain entirely
from conveying the Program.
</p>
</li><li> Use with the GNU Affero General Public License.

<p>Notwithstanding any other provision of this License, you have
permission to link or combine any covered work with a work licensed
under version 3 of the GNU Affero General Public License into a single
combined work, and to convey the resulting work.  The terms of this
License will continue to apply to the part which is the covered work,
but the special requirements of the GNU Affero General Public License,
section 13, concerning interaction through a network will apply to the
combination as such.
</p>
</li><li> Revised Versions of this License.

<p>The Free Software Foundation may publish revised and/or new versions
of the GNU General Public License from time to time.  Such new
versions will be similar in spirit to the present version, but may
differ in detail to address new problems or concerns.
</p>
<p>Each version is given a distinguishing version number.  If the Program
specifies that a certain numbered version of the GNU General Public
License “or any later version” applies to it, you have the option of
following the terms and conditions either of that numbered version or
of any later version published by the Free Software Foundation.  If
the Program does not specify a version number of the GNU General
Public License, you may choose any version ever published by the Free
Software Foundation.
</p>
<p>If the Program specifies that a proxy can decide which future versions
of the GNU General Public License can be used, that proxy’s public
statement of acceptance of a version permanently authorizes you to
choose that version for the Program.
</p>
<p>Later license versions may give you additional or different
permissions.  However, no additional obligations are imposed on any
author or copyright holder as a result of your choosing to follow a
later version.
</p>
</li><li> Disclaimer of Warranty.

<p>THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT
WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND
PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE PROGRAM PROVE
DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR
CORRECTION.
</p>
</li><li> Limitation of Liability.

<p>IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR
CONVEYS THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES
ARISING OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT
NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR
LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM
TO OPERATE WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR OTHER
PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
</p>
</li><li> Interpretation of Sections 15 and 16.

<p>If the disclaimer of warranty and limitation of liability provided
above cannot be given local legal effect according to their terms,
reviewing courts shall apply local law that most closely approximates
an absolute waiver of all civil liability in connection with the
Program, unless a warranty or assumption of liability accompanies a
copy of the Program in return for a fee.
</p>
</li></ol>

<span id="END-OF-TERMS-AND-CONDITIONS"></span><h3 class="heading">END OF TERMS AND CONDITIONS</h3>

<span id="How-to-Apply-These-Terms-to-Your-New-Programs"></span><h3 class="heading">How to Apply These Terms to Your New Programs</h3>

<p>If you develop a new program, and you want it to be of the greatest
possible use to the public, the best way to achieve this is to make it
free software which everyone can redistribute and change under these
terms.
</p>
<p>To do so, attach the following notices to the program.  It is safest
to attach them to the start of each source file to most effectively
state the exclusion of warranty; and each file should have at least
the “copyright” line and a pointer to where the full notice is found.
</p>
<div class="example">
<pre class="example"><var>one line to give the program's name and a brief idea of what it does.</var>
Copyright (C) <var>year</var> <var>name of author</var>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <a href="https://www.gnu.org/licenses/">https://www.gnu.org/licenses/</a>.
</pre></div>

<p>Also add information on how to contact you by electronic and paper mail.
</p>
<p>If the program does terminal interaction, make it output a short
notice like this when it starts in an interactive mode:
</p>
<div class="example">
<pre class="example"><var>program</var> Copyright (C) <var>year</var> <var>name of author</var>
This program comes with ABSOLUTELY NO WARRANTY; for details type ‘<samp>show w</samp>’.
This is free software, and you are welcome to redistribute it
under certain conditions; type ‘<samp>show c</samp>’ for details.
</pre></div>

<p>The hypothetical commands ‘<samp>show w</samp>’ and ‘<samp>show c</samp>’ should show
the appropriate parts of the General Public License.  Of course, your
program’s commands might be different; for a GUI interface, you would
use an “about box”.
</p>
<p>You should also get your employer (if you work as a programmer) or school,
if any, to sign a “copyright disclaimer” for the program, if necessary.
For more information on this, and how to apply and follow the GNU GPL, see
<a href="https://www.gnu.org/licenses/">https://www.gnu.org/licenses/</a>.
</p>
<p>The GNU General Public License does not permit incorporating your
program into proprietary programs.  If your program is a subroutine
library, you may consider it more useful to permit linking proprietary
applications with the library.  If this is what you want to do, use
the GNU Lesser General Public License instead of this License.  But
first, please read <a href="https://www.gnu.org/licenses/why-not-lgpl.html">https://www.gnu.org/licenses/why-not-lgpl.html</a>.
</p>
<hr>
<span id="Copying-This-Manual"></span><div class="header">
<p>
Next: <a href="#Indices" accesskey="n" rel="next">Indices</a>, Previous: <a href="#Copying-This-Package" accesskey="p" rel="prev">Copying This Package</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="How-to-make-copies-of-this-manual"></span><h2 class="appendix">Appendix B How to make copies of this manual</h2>
<span id="index-License_002c-manual"></span>

<p>This appendix covers the license for copying this manual.  Note that
some of the longer examples in this manual are also distributed in the
directory <samp>m4-1.4.19/examples/</samp>, where a more
permissive license is in effect when copying just the examples.
</p>
<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#GNU-Free-Documentation-License" accesskey="1">GNU Free Documentation License</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">License for copying this manual
</td></tr>
</tbody></table>

<hr>
<span id="GNU-Free-Documentation-License"></span><div class="header">
<p>
Up: <a href="#Copying-This-Manual" accesskey="u" rel="up">Copying This Manual</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="License-for-copying-this-manual"></span><h3 class="appendixsec">B.1 License for copying this manual</h3>
<span id="index-FDL_002c-GNU-Free-Documentation-License"></span>
<span id="index-GNU-Free-Documentation-License"></span>
<span id="index-Free-Documentation-License-_0028FDL_0029_002c-GNU"></span>
<div align="center">Version 1.3, 3 November 2008
</div>

<div class="display">
<pre class="display">Copyright © 2000, 2001, 2002, 2007, 2008 Free Software Foundation, Inc.
<a href="https://fsf.org/">https://fsf.org/</a>

Everyone is permitted to copy and distribute verbatim copies
of this license document, but changing it is not allowed.
</pre></div>

<ol start="0">
<li> PREAMBLE

<p>The purpose of this License is to make a manual, textbook, or other
functional and useful document <em>free</em> in the sense of freedom: to
assure everyone the effective freedom to copy and redistribute it,
with or without modifying it, either commercially or noncommercially.
Secondarily, this License preserves for the author and publisher a way
to get credit for their work, while not being considered responsible
for modifications made by others.
</p>
<p>This License is a kind of “copyleft”, which means that derivative
works of the document must themselves be free in the same sense.  It
complements the GNU General Public License, which is a copyleft
license designed for free software.
</p>
<p>We have designed this License in order to use it for manuals for free
software, because free software needs free documentation: a free
program should come with manuals providing the same freedoms that the
software does.  But this License is not limited to software manuals;
it can be used for any textual work, regardless of subject matter or
whether it is published as a printed book.  We recommend this License
principally for works whose purpose is instruction or reference.
</p>
</li><li> APPLICABILITY AND DEFINITIONS

<p>This License applies to any manual or other work, in any medium, that
contains a notice placed by the copyright holder saying it can be
distributed under the terms of this License.  Such a notice grants a
world-wide, royalty-free license, unlimited in duration, to use that
work under the conditions stated herein.  The “Document”, below,
refers to any such manual or work.  Any member of the public is a
licensee, and is addressed as “you”.  You accept the license if you
copy, modify or distribute the work in a way requiring permission
under copyright law.
</p>
<p>A “Modified Version” of the Document means any work containing the
Document or a portion of it, either copied verbatim, or with
modifications and/or translated into another language.
</p>
<p>A “Secondary Section” is a named appendix or a front-matter section
of the Document that deals exclusively with the relationship of the
publishers or authors of the Document to the Document’s overall
subject (or to related matters) and contains nothing that could fall
directly within that overall subject.  (Thus, if the Document is in
part a textbook of mathematics, a Secondary Section may not explain
any mathematics.)  The relationship could be a matter of historical
connection with the subject or with related matters, or of legal,
commercial, philosophical, ethical or political position regarding
them.
</p>
<p>The “Invariant Sections” are certain Secondary Sections whose titles
are designated, as being those of Invariant Sections, in the notice
that says that the Document is released under this License.  If a
section does not fit the above definition of Secondary then it is not
allowed to be designated as Invariant.  The Document may contain zero
Invariant Sections.  If the Document does not identify any Invariant
Sections then there are none.
</p>
<p>The “Cover Texts” are certain short passages of text that are listed,
as Front-Cover Texts or Back-Cover Texts, in the notice that says that
the Document is released under this License.  A Front-Cover Text may
be at most 5 words, and a Back-Cover Text may be at most 25 words.
</p>
<p>A “Transparent” copy of the Document means a machine-readable copy,
represented in a format whose specification is available to the
general public, that is suitable for revising the document
straightforwardly with generic text editors or (for images composed of
pixels) generic paint programs or (for drawings) some widely available
drawing editor, and that is suitable for input to text formatters or
for automatic translation to a variety of formats suitable for input
to text formatters.  A copy made in an otherwise Transparent file
format whose markup, or absence of markup, has been arranged to thwart
or discourage subsequent modification by readers is not Transparent.
An image format is not Transparent if used for any substantial amount
of text.  A copy that is not “Transparent” is called “Opaque”.
</p>
<p>Examples of suitable formats for Transparent copies include plain
ASCII without markup, Texinfo input format, LaTeX input
format, SGML or XML using a publicly available
DTD, and standard-conforming simple HTML,
PostScript or PDF designed for human modification.  Examples
of transparent image formats include PNG, XCF and
JPG.  Opaque formats include proprietary formats that can be
read and edited only by proprietary word processors, SGML or
XML for which the DTD and/or processing tools are
not generally available, and the machine-generated HTML,
PostScript or PDF produced by some word processors for
output purposes only.
</p>
<p>The “Title Page” means, for a printed book, the title page itself,
plus such following pages as are needed to hold, legibly, the material
this License requires to appear in the title page.  For works in
formats which do not have any title page as such, “Title Page” means
the text near the most prominent appearance of the work’s title,
preceding the beginning of the body of the text.
</p>
<p>The “publisher” means any person or entity that distributes copies
of the Document to the public.
</p>
<p>A section “Entitled XYZ” means a named subunit of the Document whose
title either is precisely XYZ or contains XYZ in parentheses following
text that translates XYZ in another language.  (Here XYZ stands for a
specific section name mentioned below, such as “Acknowledgements”,
“Dedications”, “Endorsements”, or “History”.)  To “Preserve the Title”
of such a section when you modify the Document means that it remains a
section “Entitled XYZ” according to this definition.
</p>
<p>The Document may include Warranty Disclaimers next to the notice which
states that this License applies to the Document.  These Warranty
Disclaimers are considered to be included by reference in this
License, but only as regards disclaiming warranties: any other
implication that these Warranty Disclaimers may have is void and has
no effect on the meaning of this License.
</p>
</li><li> VERBATIM COPYING

<p>You may copy and distribute the Document in any medium, either
commercially or noncommercially, provided that this License, the
copyright notices, and the license notice saying this License applies
to the Document are reproduced in all copies, and that you add no other
conditions whatsoever to those of this License.  You may not use
technical measures to obstruct or control the reading or further
copying of the copies you make or distribute.  However, you may accept
compensation in exchange for copies.  If you distribute a large enough
number of copies you must also follow the conditions in section 3.
</p>
<p>You may also lend copies, under the same conditions stated above, and
you may publicly display copies.
</p>
</li><li> COPYING IN QUANTITY

<p>If you publish printed copies (or copies in media that commonly have
printed covers) of the Document, numbering more than 100, and the
Document’s license notice requires Cover Texts, you must enclose the
copies in covers that carry, clearly and legibly, all these Cover
Texts: Front-Cover Texts on the front cover, and Back-Cover Texts on
the back cover.  Both covers must also clearly and legibly identify
you as the publisher of these copies.  The front cover must present
the full title with all words of the title equally prominent and
visible.  You may add other material on the covers in addition.
Copying with changes limited to the covers, as long as they preserve
the title of the Document and satisfy these conditions, can be treated
as verbatim copying in other respects.
</p>
<p>If the required texts for either cover are too voluminous to fit
legibly, you should put the first ones listed (as many as fit
reasonably) on the actual cover, and continue the rest onto adjacent
pages.
</p>
<p>If you publish or distribute Opaque copies of the Document numbering
more than 100, you must either include a machine-readable Transparent
copy along with each Opaque copy, or state in or with each Opaque copy
a computer-network location from which the general network-using
public has access to download using public-standard network protocols
a complete Transparent copy of the Document, free of added material.
If you use the latter option, you must take reasonably prudent steps,
when you begin distribution of Opaque copies in quantity, to ensure
that this Transparent copy will remain thus accessible at the stated
location until at least one year after the last time you distribute an
Opaque copy (directly or through your agents or retailers) of that
edition to the public.
</p>
<p>It is requested, but not required, that you contact the authors of the
Document well before redistributing any large number of copies, to give
them a chance to provide you with an updated version of the Document.
</p>
</li><li> MODIFICATIONS

<p>You may copy and distribute a Modified Version of the Document under
the conditions of sections 2 and 3 above, provided that you release
the Modified Version under precisely this License, with the Modified
Version filling the role of the Document, thus licensing distribution
and modification of the Modified Version to whoever possesses a copy
of it.  In addition, you must do these things in the Modified Version:
</p>
<ol type="A" start="1">
<li> Use in the Title Page (and on the covers, if any) a title distinct
from that of the Document, and from those of previous versions
(which should, if there were any, be listed in the History section
of the Document).  You may use the same title as a previous version
if the original publisher of that version gives permission.

</li><li> List on the Title Page, as authors, one or more persons or entities
responsible for authorship of the modifications in the Modified
Version, together with at least five of the principal authors of the
Document (all of its principal authors, if it has fewer than five),
unless they release you from this requirement.

</li><li> State on the Title page the name of the publisher of the
Modified Version, as the publisher.

</li><li> Preserve all the copyright notices of the Document.

</li><li> Add an appropriate copyright notice for your modifications
adjacent to the other copyright notices.

</li><li> Include, immediately after the copyright notices, a license notice
giving the public permission to use the Modified Version under the
terms of this License, in the form shown in the Addendum below.

</li><li> Preserve in that license notice the full lists of Invariant Sections
and required Cover Texts given in the Document’s license notice.

</li><li> Include an unaltered copy of this License.

</li><li> Preserve the section Entitled “History”, Preserve its Title, and add
to it an item stating at least the title, year, new authors, and
publisher of the Modified Version as given on the Title Page.  If
there is no section Entitled “History” in the Document, create one
stating the title, year, authors, and publisher of the Document as
given on its Title Page, then add an item describing the Modified
Version as stated in the previous sentence.

</li><li> Preserve the network location, if any, given in the Document for
public access to a Transparent copy of the Document, and likewise
the network locations given in the Document for previous versions
it was based on.  These may be placed in the “History” section.
You may omit a network location for a work that was published at
least four years before the Document itself, or if the original
publisher of the version it refers to gives permission.

</li><li> For any section Entitled “Acknowledgements” or “Dedications”, Preserve
the Title of the section, and preserve in the section all the
substance and tone of each of the contributor acknowledgements and/or
dedications given therein.

</li><li> Preserve all the Invariant Sections of the Document,
unaltered in their text and in their titles.  Section numbers
or the equivalent are not considered part of the section titles.

</li><li> Delete any section Entitled “Endorsements”.  Such a section
may not be included in the Modified Version.

</li><li> Do not retitle any existing section to be Entitled “Endorsements” or
to conflict in title with any Invariant Section.

</li><li> Preserve any Warranty Disclaimers.
</li></ol>

<p>If the Modified Version includes new front-matter sections or
appendices that qualify as Secondary Sections and contain no material
copied from the Document, you may at your option designate some or all
of these sections as invariant.  To do this, add their titles to the
list of Invariant Sections in the Modified Version’s license notice.
These titles must be distinct from any other section titles.
</p>
<p>You may add a section Entitled “Endorsements”, provided it contains
nothing but endorsements of your Modified Version by various
parties—for example, statements of peer review or that the text has
been approved by an organization as the authoritative definition of a
standard.
</p>
<p>You may add a passage of up to five words as a Front-Cover Text, and a
passage of up to 25 words as a Back-Cover Text, to the end of the list
of Cover Texts in the Modified Version.  Only one passage of
Front-Cover Text and one of Back-Cover Text may be added by (or
through arrangements made by) any one entity.  If the Document already
includes a cover text for the same cover, previously added by you or
by arrangement made by the same entity you are acting on behalf of,
you may not add another; but you may replace the old one, on explicit
permission from the previous publisher that added the old one.
</p>
<p>The author(s) and publisher(s) of the Document do not by this License
give permission to use their names for publicity for or to assert or
imply endorsement of any Modified Version.
</p>
</li><li> COMBINING DOCUMENTS

<p>You may combine the Document with other documents released under this
License, under the terms defined in section 4 above for modified
versions, provided that you include in the combination all of the
Invariant Sections of all of the original documents, unmodified, and
list them all as Invariant Sections of your combined work in its
license notice, and that you preserve all their Warranty Disclaimers.
</p>
<p>The combined work need only contain one copy of this License, and
multiple identical Invariant Sections may be replaced with a single
copy.  If there are multiple Invariant Sections with the same name but
different contents, make the title of each such section unique by
adding at the end of it, in parentheses, the name of the original
author or publisher of that section if known, or else a unique number.
Make the same adjustment to the section titles in the list of
Invariant Sections in the license notice of the combined work.
</p>
<p>In the combination, you must combine any sections Entitled “History”
in the various original documents, forming one section Entitled
“History”; likewise combine any sections Entitled “Acknowledgements”,
and any sections Entitled “Dedications”.  You must delete all
sections Entitled “Endorsements.”
</p>
</li><li> COLLECTIONS OF DOCUMENTS

<p>You may make a collection consisting of the Document and other documents
released under this License, and replace the individual copies of this
License in the various documents with a single copy that is included in
the collection, provided that you follow the rules of this License for
verbatim copying of each of the documents in all other respects.
</p>
<p>You may extract a single document from such a collection, and distribute
it individually under this License, provided you insert a copy of this
License into the extracted document, and follow this License in all
other respects regarding verbatim copying of that document.
</p>
</li><li> AGGREGATION WITH INDEPENDENT WORKS

<p>A compilation of the Document or its derivatives with other separate
and independent documents or works, in or on a volume of a storage or
distribution medium, is called an “aggregate” if the copyright
resulting from the compilation is not used to limit the legal rights
of the compilation’s users beyond what the individual works permit.
When the Document is included in an aggregate, this License does not
apply to the other works in the aggregate which are not themselves
derivative works of the Document.
</p>
<p>If the Cover Text requirement of section 3 is applicable to these
copies of the Document, then if the Document is less than one half of
the entire aggregate, the Document’s Cover Texts may be placed on
covers that bracket the Document within the aggregate, or the
electronic equivalent of covers if the Document is in electronic form.
Otherwise they must appear on printed covers that bracket the whole
aggregate.
</p>
</li><li> TRANSLATION

<p>Translation is considered a kind of modification, so you may
distribute translations of the Document under the terms of section 4.
Replacing Invariant Sections with translations requires special
permission from their copyright holders, but you may include
translations of some or all Invariant Sections in addition to the
original versions of these Invariant Sections.  You may include a
translation of this License, and all the license notices in the
Document, and any Warranty Disclaimers, provided that you also include
the original English version of this License and the original versions
of those notices and disclaimers.  In case of a disagreement between
the translation and the original version of this License or a notice
or disclaimer, the original version will prevail.
</p>
<p>If a section in the Document is Entitled “Acknowledgements”,
“Dedications”, or “History”, the requirement (section 4) to Preserve
its Title (section 1) will typically require changing the actual
title.
</p>
</li><li> TERMINATION

<p>You may not copy, modify, sublicense, or distribute the Document
except as expressly provided under this License.  Any attempt
otherwise to copy, modify, sublicense, or distribute it is void, and
will automatically terminate your rights under this License.
</p>
<p>However, if you cease all violation of this License, then your license
from a particular copyright holder is reinstated (a) provisionally,
unless and until the copyright holder explicitly and finally
terminates your license, and (b) permanently, if the copyright holder
fails to notify you of the violation by some reasonable means prior to
60 days after the cessation.
</p>
<p>Moreover, your license from a particular copyright holder is
reinstated permanently if the copyright holder notifies you of the
violation by some reasonable means, this is the first time you have
received notice of violation of this License (for any work) from that
copyright holder, and you cure the violation prior to 30 days after
your receipt of the notice.
</p>
<p>Termination of your rights under this section does not terminate the
licenses of parties who have received copies or rights from you under
this License.  If your rights have been terminated and not permanently
reinstated, receipt of a copy of some or all of the same material does
not give you any rights to use it.
</p>
</li><li> FUTURE REVISIONS OF THIS LICENSE

<p>The Free Software Foundation may publish new, revised versions
of the GNU Free Documentation License from time to time.  Such new
versions will be similar in spirit to the present version, but may
differ in detail to address new problems or concerns.  See
<a href="https://www.gnu.org/licenses/">https://www.gnu.org/licenses/</a>.
</p>
<p>Each version of the License is given a distinguishing version number.
If the Document specifies that a particular numbered version of this
License “or any later version” applies to it, you have the option of
following the terms and conditions either of that specified version or
of any later version that has been published (not as a draft) by the
Free Software Foundation.  If the Document does not specify a version
number of this License, you may choose any version ever published (not
as a draft) by the Free Software Foundation.  If the Document
specifies that a proxy can decide which future versions of this
License can be used, that proxy’s public statement of acceptance of a
version permanently authorizes you to choose that version for the
Document.
</p>
</li><li> RELICENSING

<p>“Massive Multiauthor Collaboration Site” (or “MMC Site”) means any
World Wide Web server that publishes copyrightable works and also
provides prominent facilities for anybody to edit those works.  A
public wiki that anybody can edit is an example of such a server.  A
“Massive Multiauthor Collaboration” (or “MMC”) contained in the
site means any set of copyrightable works thus published on the MMC
site.
</p>
<p>“CC-BY-SA” means the Creative Commons Attribution-Share Alike 3.0
license published by Creative Commons Corporation, a not-for-profit
corporation with a principal place of business in San Francisco,
California, as well as future copyleft versions of that license
published by that same organization.
</p>
<p>“Incorporate” means to publish or republish a Document, in whole or
in part, as part of another Document.
</p>
<p>An MMC is “eligible for relicensing” if it is licensed under this
License, and if all works that were first published under this License
somewhere other than this MMC, and subsequently incorporated in whole
or in part into the MMC, (1) had no cover texts or invariant sections,
and (2) were thus incorporated prior to November 1, 2008.
</p>
<p>The operator of an MMC Site may republish an MMC contained in the site
under CC-BY-SA on the same site at any time before August 1, 2009,
provided the MMC is eligible for relicensing.
</p>
</li></ol>

<span id="ADDENDUM_003a-How-to-use-this-License-for-your-documents"></span><h3 class="heading">ADDENDUM: How to use this License for your documents</h3>

<p>To use this License in a document you have written, include a copy of
the License in the document and put the following copyright and
license notices just after the title page:
</p>
<div class="example">
<pre class="example">  Copyright (C)  <var>year</var>  <var>your name</var>.
  Permission is granted to copy, distribute and/or modify this document
  under the terms of the GNU Free Documentation License, Version 1.3
  or any later version published by the Free Software Foundation;
  with no Invariant Sections, no Front-Cover Texts, and no Back-Cover
  Texts.  A copy of the license is included in the section entitled ``GNU
  Free Documentation License''.
</pre></div>

<p>If you have Invariant Sections, Front-Cover Texts and Back-Cover Texts,
replace the “with…Texts.” line with this:
</p>
<div class="example">
<pre class="example">    with the Invariant Sections being <var>list their titles</var>, with
    the Front-Cover Texts being <var>list</var>, and with the Back-Cover Texts
    being <var>list</var>.
</pre></div>

<p>If you have Invariant Sections without Cover Texts, or some other
combination of the three, merge those two alternatives to suit the
situation.
</p>
<p>If your document contains nontrivial examples of program code, we
recommend releasing these examples in parallel under your choice of
free software license, such as the GNU General Public License,
to permit their use in free software.
</p>

<hr>
<span id="Indices"></span><div class="header">
<p>
Previous: <a href="#Copying-This-Manual" accesskey="p" rel="prev">Copying This Manual</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Indices-of-concepts-and-macros"></span><h2 class="appendix">Appendix C Indices of concepts and macros</h2>

<table class="menu" cellspacing="0" border="0">
<tbody><tr><td valign="top" align="left">• <a href="#Macro-index" rel="index" accesskey="1">Macro index</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Index for all <code>m4</code> macros
</td></tr>
<tr><td valign="top" align="left">• <a href="#Concept-index" rel="index" accesskey="2">Concept index</a></td><td>&nbsp;&nbsp;</td><td valign="top" align="left">Index for many concepts
</td></tr>
</tbody></table>

<hr>
<span id="Macro-index"></span><div class="header">
<p>
Next: <a href="#Concept-index" accesskey="n" rel="next">Concept index</a>, Up: <a href="#Indices" accesskey="u" rel="up">Indices</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Index-for-all-m4-macros"></span><h3 class="appendixsec">C.1 Index for all <code>m4</code> macros</h3>

<p>This index covers all <code>m4</code> builtins, as well as several useful
composite macros.  References are exclusively to the places where a
macro is introduced the first time.
</p>
<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Macro-index_fn_symbol-1"><b>_</b></a>
 &nbsp; 
<br>
<a class="summary-letter" href="#Macro-index_fn_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-J"><b>J</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-Q"><b>Q</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-W"><b>W</b></a>
 &nbsp; 
</td></tr></tbody></table>
<table class="index-fn" border="0">
<tbody><tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_symbol-1">_</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005f_005ffile_005f_005f"><code>__file__</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Location">Location</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005f_005fgnu_005f_005f"><code>__gnu__</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Platform-macros">Platform macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005f_005fline_005f_005f"><code>__line__</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Location">Location</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005f_005fos2_005f_005f"><code>__os2__</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Platform-macros">Platform macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005f_005fprogram_005f_005f"><code>__program__</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Location">Location</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005f_005funix_005f_005f"><code>__unix__</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Platform-macros">Platform macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_005f_005fwindows_005f_005f"><code>__windows__</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Platform-macros">Platform macros</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-argn"><code>argn</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-array"><code>array</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Define">Define</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-array_005fset"><code>array_set</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Define">Define</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-builtin"><code>builtin</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Builtin">Builtin</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-capitalize"><code>capitalize</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Patsubst">Patsubst</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-changecom"><code>changecom</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changecom">Changecom</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-changequote"><code>changequote</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changequote">Changequote</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-changeword"><code>changeword</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changeword">Changeword</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-cleardivert"><code>cleardivert</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Cleardivert">Cleardivert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-cond"><code>cond</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-copy"><code>copy</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-curry"><code>curry</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-D">D</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-debugfile"><code>debugfile</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Debug-Output">Debug Output</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-debugmode"><code>debugmode</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Debug-Levels">Debug Levels</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-decr"><code>decr</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Incr">Incr</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-define"><code>define</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Define">Define</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-define_005fblind"><code>define_blind</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-defn"><code>defn</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Defn">Defn</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-divert"><code>divert</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Divert">Divert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-divnum"><code>divnum</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Divnum">Divnum</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dnl"><code>dnl</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dnl">Dnl</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-downcase"><code>downcase</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Patsubst">Patsubst</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dquote"><code>dquote</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dquote_005felt"><code>dquote_elt</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dumpdef"><code>dumpdef</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dumpdef">Dumpdef</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-E">E</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-errprint"><code>errprint</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Errprint">Errprint</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-esyscmd"><code>esyscmd</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Esyscmd">Esyscmd</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-eval"><code>eval</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Eval">Eval</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-example"><code>example</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Manual">Manual</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-exch"><code>exch</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arguments">Arguments</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-F">F</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-fatal_005ferror"><code>fatal_error</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#M4exit">M4exit</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-foreach"><code>foreach</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Foreach">Foreach</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-foreachq"><code>foreachq</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Foreach">Foreach</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-forloop"><code>forloop</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Forloop">Forloop</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-format"><code>format</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Format">Format</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-ifdef"><code>ifdef</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifdef">Ifdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-ifelse"><code>ifelse</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifelse">Ifelse</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-ifelse-1"><code>ifelse</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifelse">Ifelse</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-ifelse-2"><code>ifelse</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifelse">Ifelse</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-include"><code>include</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Include">Include</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-incr"><code>incr</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Incr">Incr</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-index"><code>index</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Index-macro">Index macro</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-indir"><code>indir</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Indir">Indir</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-J">J</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-join"><code>join</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-joinall"><code>joinall</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-L">L</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-len"><code>len</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Len">Len</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-M">M</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-m4exit"><code>m4exit</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#M4exit">M4exit</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-m4wrap"><code>m4wrap</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#M4wrap">M4wrap</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-maketemp"><code>maketemp</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mkstemp">Mkstemp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-mkstemp"><code>mkstemp</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mkstemp">Mkstemp</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-N">N</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-nargs"><code>nargs</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pseudo-Arguments">Pseudo Arguments</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-O">O</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-os2"><code>os2</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Platform-macros">Platform macros</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-P">P</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-patsubst"><code>patsubst</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Patsubst">Patsubst</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-popdef"><code>popdef</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pushdef">Pushdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pushdef"><code>pushdef</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pushdef">Pushdef</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-Q">Q</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-quote"><code>quote</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-R">R</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-regexp"><code>regexp</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Regexp">Regexp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-rename"><code>rename</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-reverse"><code>reverse</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-S">S</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-shift"><code>shift</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-sinclude"><code>sinclude</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Include">Include</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-stack_005fforeach"><code>stack_foreach</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Stacks">Stacks</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-stack_005fforeach_005flifo"><code>stack_foreach_lifo</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Stacks">Stacks</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-stack_005fforeach_005fsep"><code>stack_foreach_sep</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Improved-copy">Improved copy</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-stack_005fforeach_005fsep_005flifo"><code>stack_foreach_sep_lifo</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Improved-copy">Improved copy</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-substr"><code>substr</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Substr">Substr</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-syscmd"><code>syscmd</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Syscmd">Syscmd</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-sysval"><code>sysval</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sysval">Sysval</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-T">T</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-traceoff"><code>traceoff</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Trace">Trace</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-traceon"><code>traceon</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Trace">Trace</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-translit"><code>translit</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Translit">Translit</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-U">U</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-undefine"><code>undefine</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Undefine">Undefine</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-undivert"><code>undivert</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Undivert">Undivert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-unix"><code>unix</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Platform-macros">Platform macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-upcase"><code>upcase</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Patsubst">Patsubst</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Macro-index_fn_letter-W">W</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-windows"><code>windows</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Platform-macros">Platform macros</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</tbody></table>
<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Macro-index_fn_symbol-1"><b>_</b></a>
 &nbsp; 
<br>
<a class="summary-letter" href="#Macro-index_fn_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-J"><b>J</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-Q"><b>Q</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter" href="#Macro-index_fn_letter-W"><b>W</b></a>
 &nbsp; 
</td></tr></tbody></table>

<hr>
<span id="Concept-index"></span><div class="header">
<p>
Previous: <a href="#Macro-index" accesskey="p" rel="prev">Macro index</a>, Up: <a href="#Indices" accesskey="u" rel="up">Indices</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Indices" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Index-for-many-concepts"></span><h3 class="appendixsec">C.2 Index for many concepts</h3>

<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Concept-index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-J"><b>J</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-Q"><b>Q</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-W"><b>W</b></a>
 &nbsp; 
</td></tr></tbody></table>
<table class="index-cp" border="0">
<tbody><tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-argument-currying">argument currying</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arguments-to-macros">arguments to macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Macro-Arguments">Macro Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arguments-to-macros-1">arguments to macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arguments">Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arguments-to-macros_002c-special">arguments to macros, special</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pseudo-Arguments">Pseudo Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arguments_002c-joining">arguments, joining</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arguments_002c-more-than-nine">arguments, more than nine</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arguments">Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arguments_002c-more-than-nine-1">arguments, more than nine</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arguments_002c-more-than-nine-2">arguments, more than nine</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Improved-foreach">Improved foreach</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arguments_002c-quoted-macro">arguments, quoted macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Quoting-Arguments">Quoting Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arguments_002c-reversing">arguments, reversing</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arithmetic">arithmetic</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arithmetic">Arithmetic</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-arrays">arrays</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Define">Define</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-avoiding-quadratic-behavior">avoiding quadratic behavior</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Improved-foreach">Improved foreach</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-B">B</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-basic-regular-expressions">basic regular expressions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Regexp">Regexp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-basic-regular-expressions-1">basic regular expressions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Patsubst">Patsubst</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-blind-macro">blind macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Inhibiting-Invocation">Inhibiting Invocation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-blind-macro-1">blind macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifelse">Ifelse</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-blind-macro-2">blind macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-bug-reports">bug reports</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Bugs">Bugs</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-builtins_002c-indirect-call-of">builtins, indirect call of</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Builtin">Builtin</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-builtins_002c-special-tokens">builtins, special tokens</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Defn">Defn</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-call-of-builtins_002c-indirect">call of builtins, indirect</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Builtin">Builtin</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-call-of-macros_002c-indirect">call of macros, indirect</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Indir">Indir</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-case-statement">case statement</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifelse">Ifelse</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-changing-comment-delimiters">changing comment delimiters</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changecom">Changecom</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-changing-quote-delimiters">changing quote delimiters</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changequote">Changequote</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-changing-syntax">changing syntax</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changeword">Changeword</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-characters_002c-translating">characters, translating</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Translit">Translit</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-command-line">command line</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-m4">Invoking m4</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-command-line_002c-file-names-on-the">command line, file names on the</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Command-line-files">Command line files</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-command-line_002c-macro-definitions-on-the">command line, macro definitions on the</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Preprocessor-features">Preprocessor features</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-command-line_002c-options">command line, options</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-m4">Invoking m4</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-commands_002c-exit-status-from-shell">commands, exit status from shell</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sysval">Sysval</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-commands_002c-running-shell">commands, running shell</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shell-commands">Shell commands</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-comment-delimiters_002c-changing">comment delimiters, changing</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changecom">Changecom</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-comments">comments</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Comments">Comments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-comments_002c-copied-to-output">comments, copied to output</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changecom">Changecom</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-comparing-strings">comparing strings</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifelse">Ifelse</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-compatibility">compatibility</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Compatibility">Compatibility</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-composing-macros">composing macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-concatenating-arguments">concatenating arguments</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-conditional_002c-short_002dcircuiting">conditional, short-circuiting</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-conditionals">conditionals</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifdef">Ifdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-controlling-debugging-output">controlling debugging output</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Debug-Levels">Debug Levels</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-copying-macros">copying macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-counting-loops">counting loops</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Forloop">Forloop</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-currying-arguments">currying arguments</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-D">D</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-debugging-macros">debugging macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Debugging">Debugging</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-debugging-output_002c-controlling">debugging output, controlling</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Debug-Levels">Debug Levels</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-debugging-output_002c-saving">debugging output, saving</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Debug-Output">Debug Output</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-decrement-operator">decrement operator</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Incr">Incr</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-deferring-expansion">deferring expansion</a>:</td><td>&nbsp;</td><td valign="top"><a href="#M4wrap">M4wrap</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-deferring-output">deferring output</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Diversions">Diversions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-defining-new-macros">defining new macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Definitions">Definitions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-definition-stack">definition stack</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pushdef">Pushdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-definition-stack-1">definition stack</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Stacks">Stacks</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-definitions_002c-displaying-macro">definitions, displaying macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Defn">Defn</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-definitions_002c-displaying-macro-1">definitions, displaying macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dumpdef">Dumpdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-deleting-macros">deleting macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Undefine">Undefine</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-deleting-whitespace-in-input">deleting whitespace in input</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dnl">Dnl</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delimiters_002c-changing">delimiters, changing</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changequote">Changequote</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-delimiters_002c-changing-1">delimiters, changing</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changecom">Changecom</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-discarding-diverted-text">discarding diverted text</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Cleardivert">Cleardivert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-discarding-input">discarding input</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifelse">Ifelse</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-discarding-input-1">discarding input</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dnl">Dnl</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-discarding-input-2">discarding input</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Divert">Divert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-displaying-macro-definitions">displaying macro definitions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dumpdef">Dumpdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-diversion-numbers">diversion numbers</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Divnum">Divnum</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-diverted-text_002c-discarding">diverted text, discarding</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Cleardivert">Cleardivert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-diverting-output-to-files">diverting output to files</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Divert">Divert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-dumping-into-frozen-file">dumping into frozen file</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Using-frozen-files">Using frozen files</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-E">E</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-error-messages_002c-printing">error messages, printing</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Errprint">Errprint</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-errors_002c-fatal">errors, fatal</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Operation-modes">Operation modes</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-evaluation_002c-of-integer-expressions">evaluation, of integer expressions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Eval">Eval</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-examples_002c-understanding">examples, understanding</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Manual">Manual</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-executing-shell-commands">executing shell commands</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shell-commands">Shell commands</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-exit-status-from-shell-commands">exit status from shell commands</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sysval">Sysval</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-exiting-from-m4">exiting from <code>m4</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#M4exit">M4exit</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-expansion-of-macros">expansion of macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Macro-expansion">Macro expansion</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-expansion_002c-deferring">expansion, deferring</a>:</td><td>&nbsp;</td><td valign="top"><a href="#M4wrap">M4wrap</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-expansion_002c-tracing-macro">expansion, tracing macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Trace">Trace</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-expressions_002c-evaluation-of-integer">expressions, evaluation of integer</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Eval">Eval</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-expressions_002c-regular">expressions, regular</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Regexp">Regexp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-expressions_002c-regular-1">expressions, regular</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Patsubst">Patsubst</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-extracting-substrings">extracting substrings</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Substr">Substr</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-F">F</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-fast-loading-of-frozen-files">fast loading of frozen files</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Using-frozen-files">Using frozen files</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-fatal-errors">fatal errors</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Operation-modes">Operation modes</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-FDL_002c-GNU-Free-Documentation-License">FDL, GNU Free Documentation License</a>:</td><td>&nbsp;</td><td valign="top"><a href="#GNU-Free-Documentation-License">GNU Free Documentation License</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-file-format_002c-frozen-file">file format, frozen file</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Frozen-file-format">Frozen file format</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-file-inclusion">file inclusion</a>:</td><td>&nbsp;</td><td valign="top"><a href="#File-Inclusion">File Inclusion</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-file-inclusion-1">file inclusion</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Undivert">Undivert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-file-inclusion-2">file inclusion</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Undivert">Undivert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-file-names_002c-on-the-command-line">file names, on the command line</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Command-line-files">Command line files</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-files_002c-diverting-output-to">files, diverting output to</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Divert">Divert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-files_002c-names-of-temporary">files, names of temporary</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mkstemp">Mkstemp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-for-each-loops">for each loops</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Foreach">Foreach</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-for-loops">for loops</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Forloop">Forloop</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-formatted-output">formatted output</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Format">Format</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Free-Documentation-License-_0028FDL_0029_002c-GNU">Free Documentation License (FDL), GNU</a>:</td><td>&nbsp;</td><td valign="top"><a href="#GNU-Free-Documentation-License">GNU Free Documentation License</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-frozen-file-format">frozen file format</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Frozen-file-format">Frozen file format</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-frozen-files-for-fast-loading">frozen files for fast loading</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Using-frozen-files">Using frozen files</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-G">G</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-General-Public-License-_0028GPL_0029_002c-GNU">General Public License (GPL), GNU</a>:</td><td>&nbsp;</td><td valign="top"><a href="#GNU-General-Public-License">GNU General Public License</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Inhibiting-Invocation">Inhibiting Invocation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-1">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Define">Define</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-2">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arguments">Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-3">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Indir">Indir</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-4">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Builtin">Builtin</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-5">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Debug-Levels">Debug Levels</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-6">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Debug-Output">Debug Output</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-7">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Search-Path">Search Path</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-8">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Divert">Divert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-9">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Undivert">Undivert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-10">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Undivert">Undivert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-11">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Regexp">Regexp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-12">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Patsubst">Patsubst</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-13">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Format">Format</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-14">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Eval">Eval</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-15">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Esyscmd">Esyscmd</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-16">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mkstemp">Mkstemp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-17">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Using-frozen-files">Using frozen files</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-extensions-18">GNU extensions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extensions">Extensions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-Free-Documentation-License">GNU Free Documentation License</a>:</td><td>&nbsp;</td><td valign="top"><a href="#GNU-Free-Documentation-License">GNU Free Documentation License</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-General-Public-License">GNU General Public License</a>:</td><td>&nbsp;</td><td valign="top"><a href="#GNU-General-Public-License">GNU General Public License</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GNU-M4_002c-history-of">GNU M4, history of</a>:</td><td>&nbsp;</td><td valign="top"><a href="#History">History</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GPL_002c-GNU-General-Public-License">GPL, GNU General Public License</a>:</td><td>&nbsp;</td><td valign="top"><a href="#GNU-General-Public-License">GNU General Public License</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-H">H</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-history-of-m4">history of <code>m4</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#History">History</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-included-files_002c-search-path-for">included files, search path for</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Search-Path">Search Path</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-inclusion_002c-of-files">inclusion, of files</a>:</td><td>&nbsp;</td><td valign="top"><a href="#File-Inclusion">File Inclusion</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-inclusion_002c-of-files-1">inclusion, of files</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Undivert">Undivert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-inclusion_002c-of-files-2">inclusion, of files</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Undivert">Undivert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-increment-operator">increment operator</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Incr">Incr</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-indirect-call-of-builtins">indirect call of builtins</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Builtin">Builtin</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-indirect-call-of-macros">indirect call of macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Indir">Indir</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-initialization_002c-frozen-state">initialization, frozen state</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Using-frozen-files">Using frozen files</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-input-location">input location</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Preprocessor-features">Preprocessor features</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-input-location-1">input location</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Location">Location</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-input-tokens">input tokens</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Syntax">Syntax</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-input_002c-discarding">input, discarding</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifelse">Ifelse</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-input_002c-discarding-1">input, discarding</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dnl">Dnl</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-input_002c-discarding-2">input, discarding</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Divert">Divert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-input_002c-saving">input, saving</a>:</td><td>&nbsp;</td><td valign="top"><a href="#M4wrap">M4wrap</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-integer-arithmetic">integer arithmetic</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arithmetic">Arithmetic</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-integer-expression-evaluation">integer expression evaluation</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Eval">Eval</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-invoking-m4">invoking <code>m4</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-m4">Invoking m4</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-invoking-macros">invoking macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invocation">Invocation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-iterating-over-lists">iterating over lists</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Foreach">Foreach</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-J">J</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-joining-arguments">joining arguments</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-L">L</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-length-of-strings">length of strings</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Len">Len</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-lexical-structure-of-words">lexical structure of words</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changeword">Changeword</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-License_002c-code">License, code</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Copying-This-Package">Copying This Package</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-License_002c-manual">License, manual</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Copying-This-Manual">Copying This Manual</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-limit_002c-nesting">limit, nesting</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Limits-control">Limits control</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-literal-output">literal output</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pseudo-Arguments">Pseudo Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-local-variables">local variables</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pushdef">Pushdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-location_002c-input">location, input</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Preprocessor-features">Preprocessor features</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-location_002c-input-1">location, input</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Location">Location</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-loops">loops</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-loops_002c-counting">loops, counting</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Forloop">Forloop</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-loops_002c-list-iteration">loops, list iteration</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Foreach">Foreach</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-M">M</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-M4PATH"><code>M4PATH</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Search-Path">Search Path</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macro-composition">macro composition</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macro-definitions_002c-on-the-command-line">macro definitions, on the command line</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Preprocessor-features">Preprocessor features</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macro-expansion_002c-tracing">macro expansion, tracing</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Trace">Trace</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macro-invocation">macro invocation</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invocation">Invocation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macro_002c-blind">macro, blind</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Inhibiting-Invocation">Inhibiting Invocation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macro_002c-blind-1">macro, blind</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifelse">Ifelse</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macro_002c-blind-2">macro, blind</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-arguments-to">macros, arguments to</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Macro-Arguments">Macro Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-arguments-to-1">macros, arguments to</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arguments">Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-copying">macros, copying</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-debugging">macros, debugging</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Debugging">Debugging</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-displaying-definitions">macros, displaying definitions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Defn">Defn</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-displaying-definitions-1">macros, displaying definitions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dumpdef">Dumpdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-expansion-of">macros, expansion of</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Macro-expansion">Macro expansion</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-how-to-define-new">macros, how to define new</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Definitions">Definitions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-how-to-delete">macros, how to delete</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Undefine">Undefine</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-how-to-rename">macros, how to rename</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Defn">Defn</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-indirect-call-of">macros, indirect call of</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Indir">Indir</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-quoted-arguments-to">macros, quoted arguments to</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Quoting-Arguments">Quoting Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-recursive">macros, recursive</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-special-arguments-to">macros, special arguments to</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pseudo-Arguments">Pseudo Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-macros_002c-temporary-redefinition-of">macros, temporary redefinition of</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pushdef">Pushdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-manipulating-quotes">manipulating quotes</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-messages_002c-printing-error">messages, printing error</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Errprint">Errprint</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-more-than-nine-arguments">more than nine arguments</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arguments">Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-more-than-nine-arguments-1">more than nine arguments</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-more-than-nine-arguments-2">more than nine arguments</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Improved-foreach">Improved foreach</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-multibranches">multibranches</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifelse">Ifelse</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-N">N</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-names">names</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Names">Names</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-nesting-limit">nesting limit</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Limits-control">Limits control</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-nine-arguments_002c-more-than">nine arguments, more than</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arguments">Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-nine-arguments_002c-more-than-1">nine arguments, more than</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-nine-arguments_002c-more-than-2">nine arguments, more than</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Improved-foreach">Improved foreach</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-numbers">numbers</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Manual">Manual</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-O">O</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-options_002c-command-line">options, command line</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-m4">Invoking m4</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-output_002c-diverting-to-files">output, diverting to files</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Divert">Divert</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-output_002c-formatted">output, formatted</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Format">Format</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-output_002c-literal">output, literal</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pseudo-Arguments">Pseudo Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-output_002c-saving-debugging">output, saving debugging</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Debug-Output">Debug Output</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-overview-of-m4">overview of <code>m4</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Intro">Intro</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-P">P</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-pattern-substitution">pattern substitution</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Patsubst">Patsubst</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-platform-macros">platform macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Platform-macros">Platform macros</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-positional-parameters_002c-more-than-nine">positional parameters, more than nine</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Arguments">Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-POSIX">POSIX</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Extensions">Extensions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-POSIXLY_005fCORRECT"><code>POSIXLY_CORRECT</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Invoking-m4">Invoking m4</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-POSIXLY_005fCORRECT-1"><code>POSIXLY_CORRECT</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Incompatibilities">Incompatibilities</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-preprocessor-features">preprocessor features</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Preprocessor-features">Preprocessor features</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-printing-error-messages">printing error messages</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Errprint">Errprint</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pushdef-stack">pushdef stack</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pushdef">Pushdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-pushdef-stack-1">pushdef stack</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Stacks">Stacks</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-Q">Q</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-quadratic-behavior_002c-avoiding">quadratic behavior, avoiding</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Improved-foreach">Improved foreach</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-quote-delimiters_002c-changing">quote delimiters, changing</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changequote">Changequote</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-quote-manipulation">quote manipulation</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-quoted-macro-arguments">quoted macro arguments</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Quoting-Arguments">Quoting Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-quoted-string">quoted string</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Quoted-strings">Quoted strings</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-quoting-rule-of-thumb">quoting rule of thumb</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Quoting-Arguments">Quoting Arguments</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-R">R</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-recursive-macros">recursive macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-redefinition-of-macros_002c-temporary">redefinition of macros, temporary</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pushdef">Pushdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-regular-expressions">regular expressions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changeword">Changeword</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-regular-expressions-1">regular expressions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Regexp">Regexp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-regular-expressions-2">regular expressions</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Patsubst">Patsubst</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-reloading-a-frozen-file">reloading a frozen file</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Using-frozen-files">Using frozen files</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-renaming-macros">renaming macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Defn">Defn</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-renaming-macros-1">renaming macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Composition">Composition</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-reporting-bugs">reporting bugs</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Bugs">Bugs</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-rescanning">rescanning</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Limits-control">Limits control</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-rescanning-1">rescanning</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Inhibiting-Invocation">Inhibiting Invocation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-rescanning-2">rescanning</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pseudo-Arguments">Pseudo Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-rescanning-3">rescanning</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Defn">Defn</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-rescanning-4">rescanning</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Other-Incompatibilities">Other Incompatibilities</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-reversing-arguments">reversing arguments</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-rule-of-thumb_002c-quoting">rule of thumb, quoting</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Quoting-Arguments">Quoting Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-running-shell-commands">running shell commands</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shell-commands">Shell commands</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-S">S</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-saving-debugging-output">saving debugging output</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Debug-Output">Debug Output</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-saving-input">saving input</a>:</td><td>&nbsp;</td><td valign="top"><a href="#M4wrap">M4wrap</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-search-path-for-included-files">search path for included files</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Search-Path">Search Path</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-shell-commands_002c-exit-status-from">shell commands, exit status from</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sysval">Sysval</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-shell-commands_002c-running">shell commands, running</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shell-commands">Shell commands</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-short_002dcircuiting-conditional">short-circuiting conditional</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shift">Shift</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-special-arguments-to-macros">special arguments to macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pseudo-Arguments">Pseudo Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-stack_002c-macro-definition">stack, macro definition</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pushdef">Pushdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-stack_002c-macro-definition-1">stack, macro definition</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Stacks">Stacks</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-standard-error_002c-output-to">standard error, output to</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Dumpdef">Dumpdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-standard-error_002c-output-to-1">standard error, output to</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Trace">Trace</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-standard-error_002c-output-to-2">standard error, output to</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Errprint">Errprint</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-status-of-shell-commands">status of shell commands</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sysval">Sysval</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-status_002c-setting-m4-exit">status, setting <code>m4</code> exit</a>:</td><td>&nbsp;</td><td valign="top"><a href="#M4exit">M4exit</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-string_002c-quoted">string, quoted</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Quoted-strings">Quoted strings</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-strings_002c-length-of">strings, length of</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Len">Len</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-substitution-by-regular-expression">substitution by regular expression</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Patsubst">Patsubst</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-substrings_002c-extracting">substrings, extracting</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Substr">Substr</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-substrings_002c-locating">substrings, locating</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Index-macro">Index macro</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-suggestions_002c-reporting">suggestions, reporting</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Bugs">Bugs</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-suppressing-warnings">suppressing warnings</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Macro-Arguments">Macro Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-switch-statement">switch statement</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Ifelse">Ifelse</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-synchronization-lines">synchronization lines</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Preprocessor-features">Preprocessor features</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-syntax_002c-changing">syntax, changing</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changeword">Changeword</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-T">T</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-temporary-file-names">temporary file names</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Mkstemp">Mkstemp</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-temporary-redefinition-of-macros">temporary redefinition of macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pushdef">Pushdef</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-TMPDIR"><code>TMPDIR</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Diversions">Diversions</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-tokens">tokens</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Syntax">Syntax</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-tokens_002c-builtin-macro">tokens, builtin macro</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Defn">Defn</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-tokens_002c-special">tokens, special</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Other-tokens">Other tokens</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-tracing-macro-expansion">tracing macro expansion</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Trace">Trace</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-translating-characters">translating characters</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Translit">Translit</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-U">U</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-undefining-macros">undefining macros</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Undefine">Undefine</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-UNIX-commands_002c-exit-status-from">UNIX commands, exit status from</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Sysval">Sysval</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-UNIX-commands_002c-running">UNIX commands, running</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Shell-commands">Shell commands</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-V">V</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-variables_002c-local">variables, local</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pushdef">Pushdef</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-index_cp_letter-W">W</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-warnings_002c-suppressing">warnings, suppressing</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Macro-Arguments">Macro Arguments</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-words">words</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Names">Names</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-words_002c-lexical-structure-of">words, lexical structure of</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Changeword">Changeword</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</tbody></table>
<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Concept-index_cp_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-H"><b>H</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-J"><b>J</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-O"><b>O</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-Q"><b>Q</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-R"><b>R</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-U"><b>U</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-V"><b>V</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-index_cp_letter-W"><b>W</b></a>
 &nbsp; 
</td></tr></tbody></table>

<div class="footnote">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>Derived from a patch in
<a href="https://lists.gnu.org/archive/html/bug-gnulib/2007-01/msg00389.html">https://lists.gnu.org/archive/html/bug-gnulib/2007-01/msg00389.html</a>,
and a followup patch in
<a href="https://lists.gnu.org/archive/html/bug-gnulib/2007-02/msg00000.html">https://lists.gnu.org/archive/html/bug-gnulib/2007-02/msg00000.html</a></p>
</div>
<hr>





</body></html>