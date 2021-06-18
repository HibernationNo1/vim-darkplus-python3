# vim-darkplus-python3

`vim-darkplus-python3` is a color scheme for Vim with file type python.

I just make it for myself becuase I really love colors cheme of vscode named 'dark+', but colorscheme file for GVim editor was not exist.

This colorscheme made by reference from [vim-python](https://github.com/vim-python), [tomasiser](https://github.com/tomasiser)



## Screenshots

### Gvim / python3

![](https://github.com/HibernationNo1/TIL/blob/master/image/example1.jpg?raw=true)



![](https://github.com/HibernationNo1/TIL/blob/master/image/example2.jpg?raw=true)

Don't care about code. Just for examination



### Set syntax

Defualt syntax file named `python.vim` in `~./vim/vim82/syntax` is not contain enough 'group'. So I installed plugin, which syntax for python.

**Plugin Reference** : https://github.com/vim-python/python-syntax

Plugin and Applied option in `_vimrc`(or `.vimrc` in Linux)

```
Plugin 'vim-python/python-syntax'

let g:python_highlight_class_vars = 1 		# 'pythonClassVar'
let g:python_highlight_builtins = 1 		# 'pythonNone', 'pythonBoolean'
let g:python_highlight_func_calls = 1		# 'pythonFunctionCall'
let g:python_highlight_string_format = 1 	# 'pythonStrFormat'
```

Those options must have applied for using some 'group' as argument of highlight



## Installation

### 1) Download

- [Vundle](https://github.com/gmarik/vundle)

```
Plugin 'vim-python/python-syntax'
let g:python_highlight_class_vars = 1 		# 'pythonClassVar'
let g:python_highlight_builtins = 1 		# 'pythonNone', 'pythonBoolean'
let g:python_highlight_func_calls = 1		# 'pythonFunctionCall'
let g:python_highlight_string_format = 1 	# 'pythonStrFormat'

Plugin 'HibernationNo1/vim-darkplus-python3' 
```

> *check the option!!*



### 2) Enable in `_vimrc`

```
colorscheme vim-darkplus-python3
```



## Version

I checked colorscheme successfully applied in those environment

| OS        |      | name | Version |
| --------- | ---- | ---- | ------- |
| Window 10 |      | VIm  | 8.2     |
| Linux     |      | vim  | 8.1     |

