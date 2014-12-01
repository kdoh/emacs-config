;; @kdoh emacs config

;;; init.el
(require 'package)

; add marmalade and melpa repos what for more packages
(nconc package-archives '(("melpa-stable" . "http://stable.melpa.org/packages/")
                          ("marmalade" . "http://marmalade-repo.org/packages/")))


(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

; required so we know about le packages
(package-initialize)

; if we want to use-package(s) we better require that
(require 'use-package)

; custom initializers
; --------------------------------
(use-package evil-leader-init)

; package configuration
; --------------------------------

(use-package whitespace
  :init
  (progn
    (global-whitespace-mode 1)))

; enable ido mode
(use-package ido
  :init
  (progn
    (ido-mode 1)))

(use-package ido-vertical-mode
  :init
  (progn
    (ido-vertical-mode 1)))

(use-package ido-ubiquitous
  :init
  (progn
    (ido-ubiquitous-mode)))

(use-package evil
  :init
  (progn
    (evil-mode 1)))

(use-package rainbow-mode
  :init
  (progn
    (add-hook 'css-mode-hook `(rainbow-mode 1))))

(use-package rainbow-delimiters)

(use-package auto-complete-config
  :init
  (progn
    (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
    (ac-config-default)))

(use-package powerline
  :init
  (progn
    (powerline-default-theme)))

(use-package git-gutter
  :init
  (progn
    (custom-set-variables
     ;; smaller minor mode indicator
     `(git-gutter:lighter " GG"))
    (global-git-gutter-mode 1)
    (git-gutter:linum-setup)))


; other random stuff
; --------------------------------
; don't use tabs

(setq-default indent-tabs-mode nil)

(setq tab-width 4)

(add-hook 'html-mode-hook (setq sgml-basic-offset 4))

; theme
(load-theme 'kdoh t)

