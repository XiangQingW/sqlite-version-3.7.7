#!/usr/bin/tclsh
source common.tcl
header {SQLite home page}
puts {
<table width="100%" border="0" cellspacing="5">
<tr>
<td width="50%" valign="top">
<h2>About SQLite</h2>
<p>
  <table align="right" border="0"><tr><td>
  <a href="http://osdir.com/Article6677.phtml">
  <img src="2005osaward.gif"></a>
  </td></tr></table>
SQLite is a small
C library that implements a self-contained, embeddable,
zero-configuration
SQL database engine.
Features include:
</p>

<p><ul>
<li>Transactions are atomic, consistent, isolated, and durable (ACID)
    even after system crashes and power failures.
<li>Zero-configuration - no setup or administration needed.</li>
<li>Implements most of SQL92.
    (<a href="omitted.html">Features not supported</a>)</li>
<li>A complete database is stored in a single disk file.</li>
<li>Database files can be freely shared between machines with
    different byte orders.</li>
<li>Supports terabyte-sized databases and gigabyte-sized strings
    and blobs.  (See <a href="limits.html">limits.html</a>.)
<li>Small code footprint: 
    <a href="http://www.sqlite.org/cvstrac/wiki?p=SizeOfSqlite">
    less than 250KiB</a> fully configured or less
    than 150KiB with optional features omitted.</li>
<li><a href="speed.html">Faster</a> than popular client/server database
    engines for most common operations.</li>
<li>Simple, easy to use <a href="capi3.html">API</a>.</li>
<li><a href="tclsqlite.html">TCL bindings</a> included.
    Bindings for many other languages 
    <a href="http://www.sqlite.org/cvstrac/wiki?p=SqliteWrappers">
    available separately.</a></li>
<li>Well-commented source code with over 98% test coverage.</li>
<li>Available as a 
    <a href="http://www.sqlite.org/cvstrac/wiki?p=TheAmalgamation">
    single ANSI-C source-code file</a> that you can easily drop into
    another project.
<li>Self-contained: no external dependencies.</li>
<li>Sources are in the <a href="copyright.html">public domain</a>.
    Use for any purpose.</li>
</ul>
</p>

<p>
The SQLite distribution comes with a standalone command-line
access program (<a href="sqlite.html">sqlite</a>) that can
be used to administer an SQLite database and which serves as
an example of how to use the SQLite library.
</p>

</td>
<td width="1" bgcolor="#80a796"></td>
<td valign="top" width="50%">
<h2>News</h2>
}

proc newsitem {date title text} {
  puts "<h3>$date - $title</h3>"
  regsub -all "\n( *\n)+" $text "</p>\n\n<p>" txt
  puts "<p>$txt</p>"
  puts "<hr width=\"50%\">"
}

newsitem {2007-Aug-13} {Version 3.4.2} {
  While stress-testing the 
  <a href="capi3ref.html#sqlite3_soft_heap_limit">soft_heap_limit</a>
  feature, a bug that could lead to
  <a href="http://www.sqlite.org/cvstrac/wiki?p=DatabaseCorruption">database
  corruption</a> was <a href="http://www.sqlite.org/cvstrac/tktview?tn=2565">
  discovered and fixed</a>.
  Though the consequences of this bug are severe, the chances of hitting 
  it in a typical application are remote.  Upgrading is recommended
  only if you use the 
  <a href="capi3ref.html#sqlite3_soft_heap_limit">sqlite3_soft_heap_limit</a>
  interface.
}

newsitem {2007-Jly-20} {Version 3.4.1} {
  This release fixes a bug in <a href="lang_vacuum.html">VACUUM</a> that
  can lead to <a href="http://www.sqlite.org/cvstrac/wiki?p=DatabaseCorruption">
  database corruption</a>.  The bug was introduced in version 
  <a href="changes.html#version_3_3_14">3.3.14</a>.
  Upgrading is recommended for all users.  Also included are a slew of
  other more routine
  <a href="changes.html#version_3_4_1">enhancements and bug fixes</a>.
}

newsitem {2007-Jun-18} {Version 3.4.0} {
  This release fixes two separate bugs either of which 
  can lead to database corruption.  Upgrading
  is strongly recommended.  If you must continue using an older version
  of SQLite, please at least read about how to avoid these bugs
  at
  <a href="http://www.sqlite.org/cvstrac/wiki?p=CorruptionFollowingBusyError">
  CorruptionFollowingBusyError</a> and
  <a href="http://www.sqlite.org/cvstrac/tktview?tn=2418">ticket #2418</a>
  <p>
  This release also adds explicit <a href="limits.html">limits</a> on the
  sizes and quantities of things SQLite will handle.  The new limits might
  causes compatibility problems for existing applications that
  use excessively large strings, BLOBs, tables, or SQL statements. 
  The new limits can be increased at compile-time to work around any problems
  that arise.  Nevertheless, the version number of this release is
  3.4.0 instead of 3.3.18 in order to call attention to the possible
  incompatibility.
  </p>
  There are also new features, including
  <a href="capi3ref.html#sqlite3_blob_open">incremental BLOB I/O</a> and
  <a href="pragma.html#pragma_incremental_vacuum">incremental vacuum</a>.
  See the <a href="changes.html#version_3_4_0">change log</a> 
  for additional information.
}

puts {
<p align="right"><a href="oldnews.html">Old news...</a></p>
</td></tr></table>
}
footer {$Id: index.tcl,v 1.159 2007/08/13 16:15:29 drh Exp $}
