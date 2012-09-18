;;; Edmore Moyo's GNU-Emacs config

;; Add .emacs.d folder to load path and all top level subdirectories
(add-to-list 'load-path "~/dotfiles/.emacs.d")
(progn (cd "~/dotfiles/.emacs.d")
       (normal-top-level-add-subdirs-to-load-path))
;; Add the third party libraries
(add-to-list 'load-path "~/dotfiles/.emacs.d/vendor")
(progn (cd "~/dotfiles/.emacs.d/vendor")
       (normal-top-level-add-subdirs-to-load-path))

;; Add Solarized theme
(add-to-list 'custom-theme-load-path "~/dotfiles/.emacs.d/themes/emacs-color-theme-solarized")
(load-theme 'solarized-dark t)

;; Hide splash-screen and startup-message
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; remove the menu bar, toolbar and scrollbars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; set column number mode
(column-number-mode t)

;; set the font colors for syntax highlighting
(global-font-lock-mode t)

;; Set line numbers
(global-linum-mode t)

;; real lisp hackers use the lambda character
;; courtesy of stefan monnier on c.l.l
(defun sm-lambda-mode-hook ()
  (font-lock-add-keywords
   nil `(("\\<lambda\\>"
   (0 (progn (compose-region (match-beginning 0) (match-end 0)
        ,(make-char 'greek-iso8859-7 107))
      nil))))))
(add-hook 'emacs-lisp-mode-hook 'sm-lambda-mode-hook)
(add-hook 'lisp-interactive-mode-hook 'sm-lamba-mode-hook)
(add-hook 'scheme-mode-hook 'sm-lambda-mode-hook)
