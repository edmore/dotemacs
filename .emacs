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

;; Add Solarized theme
(add-to-list 'custom-theme-load-path "~/dotfiles/.emacs.d/themes/emacs-color-theme-solarized")
(load-theme 'solarized-dark t)

