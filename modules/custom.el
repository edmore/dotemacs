;;; Custom Emacs Settings

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

;; Change yes or no prompt to y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; Stop that annoying alarm bell
(setq ring-bell-function 'ignore)

(provide 'custom)
