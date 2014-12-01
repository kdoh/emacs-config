(require 'evil-leader)

; evil leader
(global-evil-leader-mode)

; set the leader key to ","
(evil-leader/set-leader ",")
(evil-leader/set-key "w" 'save-buffer)
(evil-leader/set-key "q" 'kill-buffer-and-window)
(evil-leader/set-key "v" 'split-window-right)
(evil-leader/set-key "e" 'eval-last-sexp)
(evil-leader/set-key "b" 'eval-buffer)
(evil-leader/set-key "p" 'package-list-packages)
(evil-leader/set-key "g" 'magit-status)

(provide 'evil-leader-init)
