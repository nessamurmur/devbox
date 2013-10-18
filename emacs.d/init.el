(push "/usr/local/bin" exec-path)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p)
(delete-selection-mode t)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)
(add-to-list 'load-path "~/.emacs.d/utils/")
(global-linum-mode t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Markdown Mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Elixir Mode
(add-to-list 'load-path "~/.emacs.d/emacs-elixir/")
(require 'elixir-mode)


;; YAML Mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
  '(lambda ()
   (define-key yaml-mode-map "\C-m" 'newline-and-indent)))


;; UTF-8 Encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;; Set Option Key to Meta
(setq mac-option-key-is-meta t)
(set-keyboard-coding-system nil)

;; Web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.eco\\'" . web-mode))

;; CoffeeScript
(add-to-list 'load-path "~/.emacs.d/coffeescript")
(require 'coffee-mode "coffee-mode")

;; Interactively Do Things
(require 'ido)
(ido-mode t)

;; Rinari (Rails Minor Mode)
(add-to-list 'load-path "~/.emacs.d/rinari")
(require 'rinari)


;; Fancy Tab
(defun fancy-tab (arg)
  (interactive "P")
  (setq this-command last-command)
  (if (or (eq this-command 'hippie-expand) (looking-at "\\_>"))
      (progn
	(setq this-command 'hippie-expand)
	(hippie-expand arg))
    (setq this-command 'indent-for-tab-command)
    (indent-for-tab-command arg)))


(define-key read-expression-map [(tab)] 'hippie-expand)
(global-set-key (kbd "TAB") 'fancy-tab)
