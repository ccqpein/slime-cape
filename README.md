# README #

This mode technically just connect [slime-company](https://github.com/anwyn/slime-company) to [Cape mode](https://github.com/minad/cape). 

## Usage ##

```elisp
(use-package slime-cape
  :straight (slime-cape :type git :host github :repo "ccqpein/slime-cape")	
  :hook
  (slime . slime-cape)
  
(use-package slime
  :config
  (setq
   slime-contribs '(slime-fancy slime-repl slime-scratch slime-trace-dialog slime-cl-indent slime-cape))  
  )
```

