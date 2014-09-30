localrc.vim
===========
**Version 1.0**

Description
-----------

This plugin searches for local vimrc files in the file system tree of the
currently opened file. It searches for all local rc files in the current
directory
By default localrc files are defined to match `*lvimrc` file pattern.
But the filename pattern is customizable through the global variable
`g:lvimrc_name`.

Note, there is **no security check**, the plugin do not ask for confirmation before
loading a local vimrc file. 


Variables
---------

The plugin provides a convenience variable to make it easier to set up
```vim
 let g:lvimrc_name = '*lvimrc'
```
Contribute
----------
If you think this plugin could be improved, fork on GitHub and send a pull
request or just tell me your ideas.

GitHub:    https://github.com/mfouesneau/localrc.vim

Changelog
---------

v1.0: initial version
	simplistic initial version
