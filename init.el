;; disabling everything

(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)

(set-fringe-mode 5)

;; no backup files

(setq make-backup-files nil)

;; different custom file

(setq custom-file "~/.emacs.d/custom.el")

;; escape

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; packages

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package diminish)

;; theme

(use-package dracula-theme)
(load-theme 'dracula t)

;; font

; sudo pacman -S ttf-fira-code
(set-face-attribute 'default nil
		    :font "Fira Code"
		    :height 115)

;; rainbow parentheses

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;; minibuffer advices

(use-package swiper
  :diminish)

(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
	 :map ivy-minibuffer-map
	 ("TAB" . ivy-alt-done))
  :config (ivy-mode 1))

(setq ivy-on-del-error-function #'ignore)

(use-package which-key
  :diminish
  :init (which-key-mode)
  :config (setq which-key-idle-delay 1))

;; java mode for C#

(add-to-list 'auto-mode-alist '("\\.cs\\'" . java-mode))
