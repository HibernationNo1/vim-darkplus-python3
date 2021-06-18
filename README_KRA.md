# vim-darkplus-python3

`vim-darkplus-python3`는  `file type = python`인 vim editor에 적용하기 위한 colorscheme이다.

기존에도 [tomasiser](https://github.com/tomasiser)에 방문하면 code-dark라는 이름의  colorscheme을 경험할 수 있지만, 디폴트로 `~./vim/vim82/syntax` 에 저장된 `pyyhon.vim` 파일에는 해당 Reference의 colorscheme의 코드와 호환되지 않는 코드가 많아서, 결과적으론 부분 적용만 되는 현상이 있었다. 그래서 직접 vscode의 'dark+'와 비슷한 환경을 조성하기 위해 위해 만들었다.

이 repository에 있는 vim-darkplus-python3 file은 [vim-python](https://github.com/vim-python), [tomasiser](https://github.com/tomasiser) 두 곳을 참고해서 만들었습니다.



## Screenshots

### Gvim / python3

![](https://github.com/HibernationNo1/TIL/blob/master/image/example1.jpg?raw=true)



![](https://github.com/HibernationNo1/TIL/blob/master/image/example2.jpg?raw=true)

예시



### Set syntax

window에서 vim을 설치하면 `~./vim/vim82/syntax`에 `python.vim` 파일이 저장된다. 하지만 해당 파일은 vscode의 **dark+**를 구현하기엔 `hi()` 의 전달인자인 'group'의 수가 너무 적었기 때문에,   'group'이 충분히 구현되어 있는 [vim-python](https://github.com/vim-python)으로부터 syntax 파일을 다운받아 적용했다.

**Plugin Reference** : https://github.com/vim-python/python-syntax

`_vimrc` 파일에(Linux 사용자면 `.vimrc`에) Plugin을 설치하고 여러 옵션도 적용하자.

```
Plugin 'vim-python/python-syntax'

let g:python_highlight_class_vars = 1 		# 'pythonClassVar'
let g:python_highlight_builtins = 1 		# 'pythonNone', 'pythonBoolean'
let g:python_highlight_func_calls = 1		# 'pythonFunctionCall'
let g:python_highlight_string_format = 1 	# 'pythonStrFormat'
```

위 옵션들은 `vim-darkplus-python3` 에서 `hi()` 의 전달인자로 사용될 몇몇  'group'을 사용하기 위해 반드시 적용되어야 한다.



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

> 옵션 확인하기.



### 2) Enable in `_vimrc`

```
colorscheme vim-darkplus-python3
```



## Version

이상 없이 적용 됨을 확인

| OS        |      | name | Version |
| --------- | ---- | ---- | ------- |
| Window 10 |      | VIm  | 8.2     |
| Linux     |      | vim  | 8.1     |

