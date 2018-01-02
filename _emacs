(require 'package)
(add-to-list 'package-archives
'("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(setq inferior-lisp-program "/usr/local/bin/sbcl")
(load (expand-file-name "~/quicklisp/slime-helper.el"))

;;enable line number
(global-linum-mode t)

;;enable auto complete
(global-auto-complete-mode t)

;; auto close bracket insertion. New in emacs 24
(electric-pair-mode 1)

;;auto indent
(add-hook 'lisp-mode-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))
