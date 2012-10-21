;;; Emacs Appearance Settings

;; Hide splash-screen and startup-message
(setq inhibit-splash-screen t)
(setq inhibit-startup-echo-area-message t)
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

;; displays the time in the status bar
(display-time)

;; show trailing whitespace
(setq-default show-trailing-whitespace t)

;; Display full pathname for files.
(add-hook 'find-file-hooks
          '(lambda ()
             (setq mode-line-buffer-identification 'buffer-file-truename)))

(provide 'appearance)
