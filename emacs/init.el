
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

; window split policy
(setq split-height-threshold 80)
(setq split-width-threshold 240)
(setq-default truncate-lines t)
(load-theme 'deeper-blue)
(global-set-key [M-up] (lambda () (interactive) (scroll-up-line)))
(global-set-key [M-down] (lambda () (interactive) (scroll-down-line)))
(desktop-save-mode 1)
(setq column-number-mode t)
(show-paren-mode 1)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(ido-mode t)
(setq tramp-default-method "ssh")

(global-hl-line-mode 1)
(set-face-background hl-line-face "#222222")

(setq ediff-split-window-function 'split-window-horizontally)

(defun my-c++-mode-hook ()
    (setq c-basic-offset 4)
    (c-set-offset 'substatement-open 0))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

(setq sgml-basic-offset 4)

(add-hook 'json-mode-hook
    (lambda ()
        (make-local-variable 'js-indent-level)
        (setq js-indent-level 4)))

; javascript
(setq js2-basic-offset 4)
(custom-set-variables
    ;; custom-set-variables was added by Custom.
    ;; If you edit it by hand, you could mess it up, so be careful.
    ;; Your init file should contain only one such instance.
    ;; If there is more than one, they won't work right.
    '(json-mode-indent-level 4)
    '(js2-basic-offset 4)
    '(js2-bounce-indent-p t)
    '(package-selected-packages (quote (json-mode markdown-mode magit js2-mode))))

(setq web-mode-script-padding 4)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives
    '("melpa" . "http://melpa.org/packages/") t)

(defun dos2unix ()
    (interactive)
    (set-buffer-file-coding-system 'unix 't) )

(add-to-list 'auto-mode-alist '("\\.csproj\\'" . xml-mode))
