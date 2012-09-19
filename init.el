;;; Edmore Moyo's GNU-Emacs config

;; Add .emacs.d folder to load path and all top level subdirectories
(add-to-list 'load-path "~/.emacs.d/")
(progn (cd "~/.emacs.d/")
       (normal-top-level-add-subdirs-to-load-path))

;; Load my emacs modules
(require 'custom)
(require 'behaviour)
(require 'defuns)

;; Add Solarized theme
(add-to-list 'custom-theme-load-path "themes/emacs-color-theme-solarized")
(load-theme 'solarized-dark t)


