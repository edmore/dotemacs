;; Emacs keybindings

;; Goto-line short-cut key
(global-set-key (kbd "C-l") 'goto-line)
;; (inc|de)crease text size
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
;; Commenting
(global-set-key (kbd "C-x /") 'comment-or-uncomment-region)
;; switching between buffers
(global-set-key (kbd "C-<tab>") 'next-buffer)
(global-set-key (kbd "C-S-<tab>") 'previous-buffer)
;; magit-status shortcut key
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'keybindings)
