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

;; Add Solarized theme
(add-to-list 'custom-theme-load-path "themes/emacs-color-theme-solarized")
(load-theme 'solarized-dark t)

;; add executables path - for aspell
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))
;; enable flyspell mode for TeX mode
(add-hook 'tex-mode-hook 'turn-on-flyspell)
(add-hook 'latex-mode-hook 'turn-on-flyspell)
