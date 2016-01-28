## Syntax highlighting Chapel code within a LaTeX document in Vim

If you are using Vim to develop your seamless package, then you will find it useful
to have syntax highlighting of Chapel code inside 'chapel' environments within
LaTeX documents. These `chapel` environments occur within 'chapelexample', 'chapelsource',
and 'chapelhelper' environments and are delimited by an opening `\begin{chapel}` tag and a 
closing `\end{chapel}` tag. The following steps will make it so that everything inside 
those tags in your LaTeX documents will be highlighted with the rules defined in your 
Vim install for files with a 'chpl' extension. 

1. Enable syntax highlighting of Chapel code in Vim using the plugin found in the 
`etc/vim` directory of the Chapel source.

2. Install the [ingo-library](http://www.vim.org/scripts/script.php?script_id=4433) plugin for Vim

3. Install the [SyntaxRange](http://www.vim.org/scripts/script.php?script_id=4168) plugin for Vim

4. Put the following code in `~/.vim/after/syntax/tex/Syntax.Include.vim`:

```
call SyntaxRange#Include('\\begin{chapel}', '\\end{chapel}', 'chpl')
```

