;no create save files.
;(setq make-backup-files nil)
;(setq auto-save-default nil)
(setq backup-directory-alist
  `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t)))


;add conf dirs to load-path.
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
          (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
          (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elisp" "conf" "public_repos")

;ELPA setting
(require 'package)
(add-to-list
  'package-archives
  '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list
  'package-archives
  '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
  ;M-x package-initialize

;theme from ELPA
;M-x package-install RET zenburn-theme RET
;(load-theme 'zenburn t)

;helm
;M-x package-install RET helm RET
(require 'helm-config)

;M-x package-install RET auto-complete RET
(when (require 'auto-complete-config nil t)
  (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
  (ac-config-default)
  (setq ac-use-menu-map t)
  (setq ac-ignore-case nil))

;M-x package-install RET flycheck RET
(add-hook 'after-init-hook #'global-flycheck-mode)

;M-x package-install RET quickrun RET

;buffer view setting
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(line-number-mode 1)
(column-number-mode 1)
;(global-hl-line-mode t)
(setq inhibit-startup-message t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq use-dialog-box nil)
(show-paren-mode t)

;line number
(global-linum-mode 1)

;(setq frame-title-format "%f")

;keybind setting
(global-set-key "\C-h" 'delete-backward-char)

;indent setting
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;load user define conf files.
(load "add-conf")






