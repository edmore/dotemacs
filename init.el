;;; Edmore Moyo's GNU-Emacs config

;; Add .emacs.d folder to load path and all top level subdirectories
(add-to-list 'load-path "~/.emacs.d/")
(progn (cd "~/.emacs.d/")
       (normal-top-level-add-subdirs-to-load-path))

;; Load my emacs modules
(require 'appearance)
(require 'defuns)
(require 'behaviour)
(require 'keybindings)
;; magit for interacting with Git
(require 'magit)
;; clojure mode
(require 'clojure-mode)
;; go mode
(require 'go-mode)
;; markdown mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
;; find-file-in-project
(require 'find-file-in-project)

;; Add Solarized theme
(if window-system
    (progn
      (add-to-list 'custom-theme-load-path "themes/emacs-color-theme-solarized")
      (load-theme 'solarized-dark t)))
