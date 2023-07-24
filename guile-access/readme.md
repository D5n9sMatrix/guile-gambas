<!--?xml version="1.0" encoding="ISO-8859-1"?-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="https://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="https://www.sourceware.org/gdb/images/archer-fish.ico">
<meta name="keywords" content="gdb">

<title>GDB: The GNU Project Debugger</title>

</head>

<body vlink="#9900DD" text="#000000" link="#1F00FF" bgcolor="#FFFFFF" alink="#FF0000">

<a href="https://www.sourceware.org/gdb/mascot/"> <img src="readme_files/archer.svg" alt="[image of Archer
Fish]" border="0" align="right"></a>

<center><h1>GDB: The GNU Project Debugger</h1></center>

<center>
<small>
[<a href="https://www.sourceware.org/gdb/bugs/">bugs</a>]
[<a href="https://www.sourceware.org/gdb/committee/">GDB Maintainers</a>]
[<a href="https://www.sourceware.org/gdb/contribute/">contributing</a>]
[<a href="https://www.sourceware.org/gdb/current/">current git</a>]
[<a href="https://www.sourceware.org/gdb/documentation/">documentation</a>]
[<a href="https://www.sourceware.org/gdb/download/">download</a>]
[<a href="https://www.sourceware.org/gdb/">home</a>]
[<a href="https://www.sourceware.org/gdb/irc/">irc</a>]
[<a href="https://www.sourceware.org/gdb/links/">links</a>]
[<a href="https://www.sourceware.org/gdb/mailing-lists/">mailing lists</a>]
[<a href="https://www.sourceware.org/gdb/news/">news</a>]
[<a href="https://www.sourceware.org/gdb/schedule/">schedule</a>]
[<a href="https://www.sourceware.org/gdb/song/">song</a>]
[<a href="https://sourceware.org/gdb/wiki/">wiki</a>]
</small>
</center>

<center><h2>GDB: The GNU Project Debugger</h2></center>

<!-- NB: CURRENT / LATEST refer to the trunk -->
<!-- NB: MOST RECENT refers to the branch -->

<!-- body, update above using ../gdb/index.sh -->

<h3>What is GDB?</h3>

<p>GDB, the GNU Project debugger, allows you to see what is going on
`inside' another program while it executes -- or what another program
was doing at the moment it crashed.

</p><p>GDB can do four main kinds of things (plus other things in support
of these) to help you catch bugs in the act:

</p><ul>
<li>Start your program, specifying anything that might affect its behavior.
</li><li>Make your program stop on specified conditions.
</li><li>Examine what has happened, when your program has stopped.
</li><li>Change things in your program, so you can experiment with
correcting the effects of one bug and go on to learn about another.
</li></ul>

Those programs might be executing on the same machine as GDB (native),
on another machine (remote), or on a simulator.  GDB can run on most
popular UNIX and Microsoft Windows variants, as well as on Mac OS X.<p>

</p><h3>What Languages does GDB Support?</h3>

GDB supports the following languages (in alphabetical order):
<ul>
  <li> Ada</li>
  <li> Assembly</li>
  <li> C</li>
  <li> C++</li>
  <li> D</li>
  <li> Fortran</li>
  <li> Go</li>
  <li> Objective-C</li>
  <li> OpenCL</li>
  <li> Modula-2</li>
  <li> Pascal</li>
  <li> Rust</li>
</ul>

<h3>GDB version 13.2</h3>

Version <a href="https://www.sourceware.org/gdb/download/ANNOUNCEMENT">13.2</a> of GDB, the GNU
Debugger, is now available for <a href="https://www.sourceware.org/gdb/download/">download</a>.  See the <a href="https://www.sourceware.org/gdb/download/ANNOUNCEMENT">ANNOUNCEMENT</a> for details
including changes in this release.<p>

An errata list (<a href="https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=blob;f=gdb/PROBLEMS;hb=HEAD">PROBLEMS</a>) and <a href="https://sourceware.org/gdb/download/onlinedocs/">documentation</a>
are also available.</p><p>

</p><h3>News</h3>

<dl>

<!-- PLEASE ADD ARTICLES TO BOTH news/index.html and index.html

<dt>Month DD, YYYY: <b>Announcement</b></dt>
<dd>
<p> The message about the announcement goes here and can spread across
several lines.  Each is proceeded by a P to make the indentation
better.
</p>
</dd>

-->

<dt>May 27th, 2023: <b>GDB 13.2 Released!</b></dt>
<dd>
<p> The latest version of GDB, version 13.2, is available for <a href="https://www.sourceware.org/gdb/download/">download</a>.
</p><p>
This is a minor corrective release over GDB 13.1, fixing the following
issues:
</p><ul>
<li> <a href="https://sourceware.org/bugzilla/show_bug.cgi?id=30158">PR testsuite/30158</a> (rustc testsuite fails with 13.1, apparently worked before with trunk 20230114 on i686-linux-gnu and powerpc64le-linux-gnu)
</li><li> <a href="https://sourceware.org/bugzilla/show_bug.cgi?id=30214">PR gdb/30214</a> (GDB 13.1 does not compile on FreeBSD 13.1)
</li><li> <a href="https://sourceware.org/bugzilla/show_bug.cgi?id=30240">PR gdb/30240</a> ((linux/aarch) thread.c:86: internal-error: inferior_thread: Assertion `current_thread_ != nullptr' failed)
</li><li> <a href="https://sourceware.org/bugzilla/show_bug.cgi?id=30249">PR gdb/30249</a> ([13 regression] hookpost-extended-remote will not work)
</li><li> <a href="https://sourceware.org/bugzilla/show_bug.cgi?id=30271">PR exp/30271</a> (Addresses of static thread_local fields are badly calculated sometimes)
</li><li> <a href="https://sourceware.org/bugzilla/show_bug.cgi?id=30357">PR symtab/30357</a> (Segmentation fault for the 'start' command)
</li><li> <a href="https://sourceware.org/bugzilla/show_bug.cgi?id=30369">PR symtab/30369</a> ([gdb/symtab] False match issue in skip_prologue_using_linetable)
</li><li> <a href="https://sourceware.org/bugzilla/show_bug.cgi?id=30423">PR gdb/30423</a> (Build failures with clang 16)
</li><li> <a href="https://sourceware.org/bugzilla/show_bug.cgi?id=30450">PR build/30450</a> (Build failure (linux-low.cc:5393:45: error: expected ':' before ')' token) with musl-1.2.4)
</li></ul>

See the <a href="https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=blob_plain;f=gdb/NEWS;hb=gdb-13.2-release">NEWS</a> file for a more complete and detailed list of what this release includes.
<p>
</p></dd>

<dt>Feb 19th, 2023: <b>GDB 13.1 Released!</b></dt>
<dd>
<br> The latest version of GDB, version 13.1, is available for <a href="https://www.sourceware.org/gdb/download/">download</a>.
<br>
This version of GDB includes the following changes and enhancements:
<ul>
  <li> Support for the following new targets has been added in both GDB and GDBserver:
  <ul>
    <li> GNU/Linux/LoongArch (gdbserver) loongarch*-*-linux*
    </li><li> GNU/Linux/CSKY (gdbserver) csky*-*linux*
  </li></ul>
  </li><li> The Windows native target now supports target async.
  </li><li> FreeBSD:
  <ul>
    <li>Arm and AArch64: Support for Thread Local Storage (TLS) variables
    </li><li>Hardware watchpoint support on AArch64 FreeBSD
  </li></ul>
  </li><li> Floating-point support has now been added on LoongArch GNU/Linux.
  </li><li> New commands:
  <ul>
    <li> set print nibbles [on|off]<br>
         show print nibbles<br>
         <br>
         This controls whether the 'print/t' command will display binary values
         in groups of four bits, known as "nibbles".  The default is 'off'.
    </li><li> Various styling-related commands. See the
         <a href="https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=blob_plain;f=gdb/NEWS;hb=gdb-13.1-release">
         gdb/NEWS</a> file for more details.
    </li><li> Various maintenance commands.  These are normally aimed at GDB
         experts or developers. See the
         <a href="https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=blob_plain;f=gdb/NEWS;hb=gdb-13.1-release">gdb/NEWS</a>
         file for more details.
  </li></ul>
  </li><li> Python API improvements:
  <ul>
   <li> New Python API for instruction disassembly.<br>
        <br>
        The new attribute 'locations' of gdb.Breakpoint returns a list of
        gdb.BreakpointLocation objects specifying the locations where the
        breakpoint is inserted into the debuggee.
   </li><li> New Python type gdb.BreakpointLocation.
   </li><li> New function gdb.format_address(ADDRESS, PROGSPACE, ARCHITECTURE)
        that formats ADDRESS as 'address <symbol+offset>'
   </symbol+offset></li><li> New function gdb.current_language that returns the name of the
        current language.  Unlike gdb.parameter('language'), this will
        never return 'auto'.
   </li><li> New function gdb.print_options that returns a dictionary of the
        prevailing print options, in the form accepted by gdb.Value.format_string.
   </li><li> New method gdb.Frame.language that returns the name of the
       frame's language.
   </li><li> gdb.Value.format_string now uses the format provided by 'print',
        if it is called during a 'print' or other similar operation.
   </li><li> gdb.Value.format_string now accepts the 'summary' keyword.  This
        can be used to request a shorter representation of a value, the
        way that 'set print frame-arguments scalars' does.
   </li><li> The gdb.register_window_type method now restricts the set of
        acceptable window names.  The first character of a window's name
        must start with a character in the set [a-zA-Z], every subsequent
        character of a window's name must be in the set [-_.a-zA-Z0-9].
  </li></ul>
  </li><li> GDB/MI changes:
  <ul>
    <li> MI version 1 is deprecated, and will be removed in GDB 14.
  
    </li><li> The async record stating the stopped reason 'breakpoint-hit' now
         contains an optional field locno.
  </li></ul>
  </li><li> Miscellaneous improvements:
  <ul>
    <li> gdb now supports zstd compressed debug sections (ELFCOMPRESS_ZSTD) for ELF.
    </li><li> New convenience variable $_inferior_thread_count contains the number
         of live threads in the current inferior.
    </li><li> New convenience variables $_hit_bpnum and $_hit_locno, set to
         the breakpoint number and the breakpoint location number of
         the breakpoint last hit.
    </li><li> The "info breakpoints" now displays enabled breakpoint locations
         of disabled breakpoints as in the "y-" state.
    </li><li> The format of 'disassemble /r' and 'record instruction-history /r'
         has changed to match the layout of GNU objdump when disassembling.<br>
         <br>
         A new format "/b" has been introduce to provide the old behavior
         of "/r".
    </li><li> The TUI no longer styles the source and assembly code highlighted
         by the current position indicator by default. You can however
         re-enable styling using the new "set style tui-current-position"
         command.
    </li><li> It is now possible to use the "document" command to document
         user-defined commands.
    </li><li> Support for memory tag data for AArch64 MTE.
  </li></ul>
  </li><li> Support Removal notices:
  <ul>
    <li> DBX mode has been removed.
    </li><li> Support for building against Python version 2 has been removed.
         It is now only possible to build GDB against Python 3.
    </li><li> Support for the following commands has been removed:<br>
         <br>
         set debug aix-solib on|off<br>
         show debug aix-solib<br>
         set debug solib-frv on|off<br>
         show debug solib-frv<br>
         <br>
         Use the "set/show debug solib" commands instead.
  </li></ul>
</li></ul>

See the <a href="https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=blob_plain;f=gdb/NEWS;hb=gdb-13.1-release">NEWS</a> file for a more complete and detailed list of what this release includes.
<p>
</p></dd>
<dt>Dec 18th, 2022: <b>GDB 13 branch created</b></dt>
<dd>
<p> The GDB 13 branch (<tt>gdb-13-branch</tt>) has been created.
To check out a copy of the branch use:
</p><pre>git clone --branch gdb-13-branch https://sourceware.org/git/binutils-gdb.git
</pre>
<p>
</p></dd>
<dt>Nov 28, 2006: <b>Reversible Debugging</b></dt>
<dd>
<p> The GDB maintainers are looking for contributors interested
in <a href="https://www.sourceware.org/gdb/news/reversible.html">reversible debugging</a>.
</p>
</dd>

</dl>

Late breaking information, such as recently added features, can be
found in the <a href="https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=blob;f=gdb/NEWS;hb=HEAD">NEWS</a> file in the gdb source tree.  Old announcements are in the
news <a href="https://www.sourceware.org/gdb/news">archive</a>.

<!-- /body, update below using ../gdb/index.sh -->

<p></p>

<center>
<small>
[<a href="https://www.sourceware.org/gdb/bugs/">bugs</a>]
[<a href="https://www.sourceware.org/gdb/committee/">GDB Maintainers</a>]
[<a href="https://www.sourceware.org/gdb/contribute/">contributing</a>]
[<a href="https://www.sourceware.org/gdb/current/">current git</a>]
[<a href="https://www.sourceware.org/gdb/documentation/">documentation</a>]
[<a href="https://www.sourceware.org/gdb/download/">download</a>]
[<a href="https://www.sourceware.org/gdb/">home</a>]
[<a href="https://www.sourceware.org/gdb/irc/">irc</a>]
[<a href="https://www.sourceware.org/gdb/links/">links</a>]
[<a href="https://www.sourceware.org/gdb/mailing-lists/">mailing lists</a>]
[<a href="https://www.sourceware.org/gdb/news/">news</a>]
[<a href="https://www.sourceware.org/gdb/schedule/">schedule</a>]
[<a href="https://www.sourceware.org/gdb/song/">song</a>]
[<a href="https://sourceware.org/gdb/wiki/">wiki</a>]
</small>
</center>

<hr>

<address>

<p>Please send FSF &amp; GNU inquiries &amp; questions to <a href="mailto:gnu@gnu.org">gnu@gnu.org</a>.  There are also <a href="https://www.gnu.org/home.html#ContactInfo">other ways to
contact</a> the FSF.</p>

<p>This page is maintained by <a href="https://www.sourceware.org/gdb/">the GDB
developers</a>.</p>

<p>Copyright Free Software Foundation, Inc., 51 Franklin St - Fifth
Floor, Boston, MA 02110-1301 USA.</p>

<p>Verbatim copying and distribution of this entire article is
permitted in any medium, provided this notice is preserved.</p>

<p>Last modified 2023-05-27.</p>
</address>



</body></html>