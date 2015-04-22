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
