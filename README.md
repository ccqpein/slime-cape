# slime-cape #

This mode technically just connect [slime-company](https://github.com/anwyn/slime-company) to [Cape mode](https://github.com/minad/cape). 

## Usage ##

```elisp
(use-package slime-cape
  :straight (slime-cape :type git :host github :repo "ccqpein/slime-cape")
  :hook
  (slime . slime-cape)
  (slime-repl . slime-cape)
  )
  
(use-package slime
  :config
  (slime-setup '(slime-fancy slime-repl slime-scratch slime-trace-dialog slime-cl-indent slime-cape))
  )
```

