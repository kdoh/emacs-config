; kdoh emacs config

(require 'package)
(package-initialize)

; add marmalade repo what for more packages
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             ("melpa" . "http://melpa.milkbox.net/packages/"))

; hide the toolbar
(tool-bar-mode -1)

; hide the welcome screen on startup
(setq inhibit-startup-message t)

; enable ido mode
(require 'ido)
(ido-mode t)

(require 'editorconfig)

; evil leader
(require 'evil-leader)
(global-evil-leader-mode)

; set the leader key to ","
(evil-leader/set-leader ",")
(evil-leader/set-key "w" 'save-buffer)

(evil-leader/set-key "q" 'kill-buffer-and-window)

(evil-leader/set-key "v" 'split-window-right)

(evil-leader/set-key "e" 'eval-buffer)

; configure evil for vim emulation even doe we're in emacs
(require 'evil)
(evil-mode 1)

; autocomplete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

; don't use tabs
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
