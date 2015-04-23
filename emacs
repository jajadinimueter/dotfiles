;; List of packages we installed:
;; jedi - python completion usw. (had to run jedi:install-server after installing)
;; projectile - projects 
;; flx-ido - more flexible pattern matching because the readme of projectile suggested it

;; we want packages
(require 'package)

;; This configures package repositories for elpa
(setq package-archives  '(("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

;; This allows us to configure packages inside .emacs file
(setq package-enable-at-startup- nil)
(package-initialize)

;; Initialize org-mode
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-agenda-files (list "~/tmp/test.org"))
(setq org-log-done t)

;; Jedi
(setq jedi:setup-keys t)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(menu-bar-mode nil)
 '(org-agenda-files (quote ("~/Development/orgmode-test.org")))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default nil :height 110)

(projectile-global-mode)

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
;;(setq ido-use-faces nil)
