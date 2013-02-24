;;; Emacs behaviour settings

;; Change yes or no prompt to y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; Stop that annoying alarm bell
(setq ring-bell-function 'ignore)

;; do not make backup files
(setq make-backup-files nil)

;; Maximize frame on startup
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

;; Use only spaces (no tabs at all).
(setq-default indent-tabs-mode nil)

;; add executables path - for aspell
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))
;; enable flyspell mode for TeX mode
(add-hook 'tex-mode-hook 'turn-on-flyspell)
(add-hook 'latex-mode-hook 'turn-on-flyspell)

(provide 'behaviour)
