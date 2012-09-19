;;; Behaviour for Emacs

;; change yes or no prompt to y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; Stop that annoying alarm bell
(setq ring-bell-function 'ignore)

(provide 'behaviour)
