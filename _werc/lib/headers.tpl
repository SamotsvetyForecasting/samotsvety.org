<!DOCTYPE HTML>
<html>
<head>

    <title>%($pageTitle%)</title>

    <link rel="stylesheet" href="/pub/style/style.css" type="text/css" media="screen, handheld" title="default">
    <link rel="shortcut icon" href="/favicon.ico" type="image/vnd.microsoft.icon">
% if(test -f $sitedir/_werc/pub/style.css)
%    echo '    <link rel="stylesheet" href="/_werc/pub/style.css" type="text/css" media="screen" title="default">'

    <meta charset="UTF-8">
% # Legacy charset declaration for backards compatibility with non-html5 browsers.
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <meta property="og:image" content="https://cards.samotsvety.org/api/dynamic-image?endpoint=%($req_path%)">
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="Samotsvety Forecasting" />
    <meta name="twitter:description" content="%($pageTitle%)" />
    <meta name="twitter:url" content="https://samotsvety.org/" />
    <meta name="twitter:image" content="https://cards.samotsvety.org/api/dynamic-image?endpoint=%($req_path%)" />
    <meta name="twitter:site" content="@SamotsvetyF" />

% if(! ~ $#meta_description 0)
%   echo '    <meta name="description" content="'$"meta_description'">'
% if(! ~ $#meta_keywords 0)
%   echo '    <meta name="keywords" content="'$"meta_keywords'">'

% h = `{get_lib_file headers.inc}
% if(! ~ $#h 0)
%   cat $h

    %($"extraHeaders%)
    <script data-isso="//comments.nunosempere.com/"   src="//comments.nunosempere.com/js/embed.min.js"></script>

% # To add math
% # <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
% # <script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>

<link rel="stylesheet" type="text/css" href="https://images.nunosempere.com/fonts/computer-modern/font.css">

<style>
/* @import url("https://cdn.jsdelivr.net/gh/aaaakshat/cm-web-fonts@latest/font/Serif/cmun-serif.css"); */

body {
  font-family: "Computer Modern Serif", serif;
}
</style>

</head>
<body>

